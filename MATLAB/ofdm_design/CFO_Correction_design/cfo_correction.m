clear; clc; close all; fclose('all');
addpath('../');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OFDM Parameters
nfft = 1024;                    % nfft size equal to number of subcarriers
BW = 1000000000;                % Bandwidth of subcarriers (-F/2 F/2)
M = 8;                          % Baseband modulation order
cp_len = nfft/4;                % Cyclic Prefix length
ofdm_symbols =  10;             % Number of ofdm symbols to transmit
ebno_test = -5:2:30;
symbol_plot = 4;
rep = 4;                        % Repetition of pilots
pilot_index = 112:rep:913;    % Insert a pilot every 5 data sub-carriers
pilot_val = -0.7072+0.7072i;    % Set value of pilot subcarriers
data_index = 1:nfft;            % Index of data subcarriers
cw_tone = BW/nfft;
set_cw = 0; 
snr = 20;
% Set 224 zero padded subcarriers: 111 on lower and upper subcarriers
% and 2 on each side of carrier
zp_index = [1:111,914:1024];
multipath = [0 1 0.02 0.8];            % Multipath taps
no_multi = [1 0 0 0];
%multipath = [1 0.3 0.5 0];
data_index([zp_index,pilot_index]) = [];
scs = BW/nfft;
cfo = scs/2.1;
cfo = linspace(-cfo,cfo,ofdm_symbols);
%cfo = cfo*ones(1,ofdm_symbols);
plot_v = 0;
plot_symbol = 1;
pilot_carriers = length(pilot_index);   % Number of pilot carriers
data_carriers = length(data_index);

num_data_bits = length(data_index)*ofdm_symbols;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modulate
[ofdm_signal_1,reference_pilot,mod_data,t,t2]=ofdm_transmit(nfft,BW,M,cp_len, ...
    ofdm_symbols,zp_index,pilot_index,0,1,1);
cw_signal = cos(2*pi*cw_tone*t2)'+i*sin(2*pi*cw_tone*t2)';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Channel
cfo_err = [];
for i = 1:ofdm_symbols
    cfo_err = [cfo_err exp(1i*2*pi*cfo(i)*t2((i-1)*(cp_len+nfft)+1:i*(cp_len+nfft)))];
end
ofdm_signal = cfo_err'.*ofdm_signal_1;
[ofdm_signal,nvar] = awgn(ofdm_signal,snr,'measured');
ofdm_scaled_signal = round(10000*ofdm_signal).'; % Scale

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create input file for Vivado sim
file = fopen('../../../HW/modules/sim/equalizer_input_samples.txt','wt');
fprintf(file,"%d, %d\n",[int16(real(ofdm_scaled_signal));int16(imag(ofdm_scaled_signal))]);
fclose(file);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot time domain signal
figure(),subplot(2,1,1),plot(real(ofdm_scaled_signal)),xlabel('Samples'),
title('Real'),subplot(2,1,2),plot(imag(ofdm_scaled_signal)),xlabel('Samples');
title('Imaginary'),sgtitle('CFO Correction Input Signal')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create white noise channel
ofdm_signal_1 = awgn(ofdm_signal_1,snr,'measured');
ofdm_signal_par_1 = reshape(ofdm_signal_1,[nfft+cp_len ofdm_symbols]);
cp_rm_1 = ofdm_signal_par_1;
cp_rm_1(1:cp_len,:) = [];
fft_out_1 = fft(cp_rm_1,nfft);
fft_out_1([zp_index,pilot_index],:) = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CFO estimate
ofdm_signal_par = reshape(ofdm_scaled_signal,[nfft+cp_len ofdm_symbols]);
cp_rm = ofdm_signal_par;
ofdm_signal_par_eq = cp_rm(:);
cp_rm(1:cp_len,:) = [];
ofdm_cfo_signal_par_eq = [];
cp_cfo_begin = [];cp_cfo_end=[];conj_val=[];tmp=[];sum_val=[];angle_val=[];cfo_est=[];freq=[];
for i = 1:ofdm_symbols
    cp_cfo_begin = [cp_cfo_begin ofdm_signal_par(1:cp_len,i)];% Obtain cyclic prefix at beginning of symbol
    cp_cfo_end = [cp_cfo_end (ofdm_signal_par(nfft+1:end,i))]; % Obtain cyclic prefix at end of symbol
    conj_val = [conj_val conj(cp_cfo_begin(1:cp_len,i))];
    tmp = [tmp complex(real(cp_cfo_end(1:cp_len,i).*conj_val(1:cp_len,i)), ...
        imag(cp_cfo_end(1:cp_len,i).*conj_val(1:cp_len,i)))];
        sum_val = [sum_val sum(tmp(1:cp_len,i))];
    %angle_val = atan2(imag(sum_val),real(sum_val));
    angle_val = [angle_val angle(sum_val(i))];
    cfo_est = [cfo_est angle_val(i) * scs];
    %freq = exp(1i*cfo_est*t(1:nfft))';
    freq = [freq (cos(cfo_est(i)*t2((i-1)*1280+1:(i*1280)-cp_len))+1i*sin(cfo_est(i)*t2((i-1)*1280+1:(i*1280)-cp_len)))'];
    ofdm_cfo_signal_par_eq(:,i) = cp_rm(:,i).*freq(1:nfft,i)*2^14;
end
freq_scaled = freq * 2^14;

ofdm_cfo_signal_par_eq = ofdm_cfo_signal_par_eq/(2^14);
cp_rm_cfo = ofdm_cfo_signal_par_eq;

% Take FFT
fft_out = fft(cp_rm,nfft);
fft_out_cfo = fft(cp_rm_cfo,nfft);                   % CFO correction

% Optain RX pilots
pilot_recovered = fft_out_cfo(pilot_index,:);

% Remove pilot and ZP carriers
data_carriers_out = fft_out;
data_carriers_out([zp_index,pilot_index],:) = [];
data_carriers_out_cfo = fft_out_cfo;
data_carriers_out_cfo([zp_index,pilot_index],:) = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ZF Equalization
estimated_pilot_cfo = pilot_recovered.*conj(reference_pilot);
fft_out_cfo2 = fft_out_cfo;
for i = 1:pilot_carriers
    zf = pilot_recovered(i,:)./reference_pilot(i,:);
    mmse = (conj(zf))./(zf.*conj(zf)+nvar);
    fft_out_cfo(pilot_index(i):pilot_index(i)+rep-1,:) = fft_out_cfo(pilot_index(i):pilot_index(i)+rep-1,:).*mmse;

end
equalized_cfo = fft_out_cfo;
equalized_cfo([zp_index,pilot_index],:) = [];  % Remove pilot and ZP carriers
demod_data_cfo_eq = qamdemod(equalized_cfo,M);
demod_data = qamdemod(data_carriers_out,M);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read output of Vivado sim
file = fopen('../../../HW/modules/sim/mixer_vivado_samples.txt','r');
%cfo_out1 = fscanf(file,"%d, %d\n",[2 nfft*ofdm_symbols*2]);
cfo_out1 = fscanf(file,"%d, %d\n",[2 nfft*ofdm_symbols]);
fclose(file);
cfo_out1 = complex(cfo_out1(1,:),cfo_out1(2,:));

% Error check
if length(cfo_out1)~=nfft*ofdm_symbols
    disp("ERROR: Run Vivado sim")
    cfo_out1 = zeros(1,nfft*ofdm_symbols);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Finish OFDM demod of Vivado sim output samples
cp_rm_hw = reshape(cfo_out1,[nfft ofdm_symbols]);
fft_out_hw = fft(cp_rm_hw,nfft);
fft_out_hw2 = fft_out_hw(:,1:ofdm_symbols);
data_carriers_hw = fft_out_hw;
data_carriers_hw([zp_index,pilot_index],:) = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ZF Equalization on CFO corrected Vivado samples
pilot_recovered_cfo = fft_out_hw(pilot_index,:);
for i = 1:pilot_carriers
    zf = pilot_recovered_cfo(i,:)./reference_pilot(i,:);
    mmse = (conj(zf))./(zf.*conj(zf)+nvar);
    fft_out_hw2(pilot_index(i):pilot_index(i)+rep-1,:) = fft_out_hw2(pilot_index(i):pilot_index(i)+rep-1,:).*mmse;
end
equalized_hw = fft_out_hw2;
equalized_hw([zp_index,pilot_index],:) = [];
demod_data_hw = qamdemod(equalized_hw,M);

figure(),subplot(2,2,1),plot(real(cp_rm_cfo(:,1)),'LineWidth',2),hold on
plot(real(cp_rm_hw(:,1))),title('Real'),xlabel('Samples')
legend('MATLAB','Vivado'),subplot(2,2,2),plot(imag(cp_rm_cfo(:,1)), ...
    'LineWidth',2),hold on,plot(imag(cp_rm_hw(:,1))),title('Imaginary')
xlabel('Samples'),legend('MATLAB','Vivado'),subplot(2,2,3)
plot(real(reshape(cp_rm_cfo,[1 nfft*ofdm_symbols])),'LineWidth',2)
hold on,plot(real(reshape(cp_rm_hw,[1 nfft*ofdm_symbols])))
title('Real: Full Signal'),xlabel('Samples')
legend('MATLAB','Vivado'),subplot(2,2,4)
plot(imag(reshape(cp_rm_cfo,[1 nfft*ofdm_symbols])),'LineWidth',2)
hold on,plot(imag(reshape(cp_rm_hw,[1 ofdm_symbols*nfft])))
title('Imaginary: Full Signal'),xlabel('Samples')
legend('MATLAB','Vivado'),sgtitle('CFO Correction FFT Input')

figure(),subplot(2,2,1),plot(real(data_carriers_out_cfo(:,1)),'LineWidth',2),hold on
plot(real(data_carriers_hw(:,1))),title('Real'),xlabel('Samples')
legend('MATLAB','Vivado'),subplot(2,2,2)
plot(imag(data_carriers_out_cfo(:,1)),'LineWidth',2),hold on
plot(imag(data_carriers_hw(:,1))),title('Imaginary'),xlabel('Samples')
legend('MATLAB','Vivado'),subplot(2,2,3)
plot(real(reshape(data_carriers_out_cfo,[1 data_carriers*ofdm_symbols])),'LineWidth',2)
hold on,plot(real(reshape(data_carriers_hw,[1 data_carriers*ofdm_symbols])))
title('Real: Full Signal'),xlabel('Samples'),legend('MATLAB','Vivado'),
subplot(2,2,4)
plot(imag(reshape(data_carriers_out_cfo,[1 data_carriers*ofdm_symbols])),'LineWidth',2)
hold on,plot(imag(reshape(data_carriers_hw,[1 data_carriers*ofdm_symbols])))
title('Imag: Full Signal'),xlabel('Samples'),legend('MATLAB','Vivado')
sgtitle('CFO Correction FFT Output')


figure(),subplot(2,3,1),scatter(real(fft_out_1),imag(fft_out_1),'.')
grid on, title('White Noise Channel'),subplot(2,3,4),
scatter(real(data_carriers_out),imag(data_carriers_out),'.')
grid on,title('CFO channel'),legend('1')
subplot(2,3,2),scatter(real(data_carriers_out_cfo),imag(data_carriers_out_cfo), ...
    '.','LineWidth',2)
grid on,title('CFO Correction (MATLAB)'),subplot(2,3,5)
scatter(real(data_carriers_hw),imag(data_carriers_hw),'.','LineWidth',2)
grid on,title('CFO Correction (HW)'),sgtitle({'End to End CFO Correction ' ...
    'Simulation',['CFO = ',num2str(cfo(1)),'Hz to ',num2str(cfo(end)),'Hz, ' ...
    'SNR = ',num2str(snr),'dB']})
subplot(2,3,3),scatter(real(equalized_cfo),imag(equalized_cfo),'.'),grid on
title('CFO Correction (MATLAB) + Equalization (MATLAB)'),subplot(2,3,6)
scatter(real(equalized_hw),imag(equalized_hw),'.')
title('CFO Correction (HW) + Equalization (MATLAB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read Multiplier output between CP and end of symbol
file = fopen('../../../HW/modules/sim/mult_verif_samples.txt','r');
tmp_out1 = fscanf(file,"%d, %d\n", [2 cp_len*ofdm_symbols]);
fclose(file);
tmp_out1 = complex(tmp_out1(1,:), tmp_out1(2,:));

figure(),subplot(2,2,1),plot(int32(real(tmp(1:cp_len,1))),'LineWidth',3)
hold on,plot(int32(real(tmp_out1(1:cp_len))),'LineWidth',1),title('Real')
legend('Matlab','Vivado'),subplot(2,2,2),plot(int32(imag(tmp(1:cp_len,1))),'LineWidth',3)
hold on,plot(int32(imag(tmp_out1(1:cp_len))),'LineWidth',1),title('Imaginary')
legend('Matlab','Vivado'),subplot(2,2,3)
plot(int32(real(reshape(tmp(1:cp_len,:),[1 cp_len*ofdm_symbols]))),'LineWidth',2)
hold on,plot(int32(real(tmp_out1))),legend('MATLAB','Vivado')
title('Real: Full Signal'),subplot(2,2,4)
plot(int32(imag(reshape(tmp(1:cp_len,:),[1 cp_len*ofdm_symbols]))),'LineWidth',2)
hold on,plot(int32(imag(tmp_out1))),legend('MATLAB','Vivado')
title('Imag: Full Signal'),sgtitle('Multiplier Output')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read DDS output from Vivado sim and compare to matlab
file = fopen('../../../HW/modules/sim/dds_vivado_samples.txt','r');
cfo_out1 = fscanf(file,"%d, %d\n", [2 nfft*ofdm_symbols]);
fclose(file);
cfo_out1 = complex(cfo_out1(1,:), cfo_out1(2,:));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Correct CFO in MATLAB from Vivado sim CFO estimate
cp_rm = cp_rm(1:nfft,:);
dds_signal_par_eq = cp_rm.*reshape(cfo_out1,[nfft ofdm_symbols]);
mat_signal_par_eq = cp_rm.*freq_scaled(1:nfft,:);
fft_out_dds = fft(dds_signal_par_eq,nfft);
fft_out_mat = fft(mat_signal_par_eq,nfft);
pilot_recovered_dds = fft_out_dds(pilot_index,:);
data_carriers_out_dds = fft_out_dds;
data_carriers_out_dds([zp_index,pilot_index],:) = [];
data_carriers_out_mat = fft_out_mat;
data_carriers_out_mat([zp_index,pilot_index],:) = [];

figure(),subplot(2,2,1),scatter(real(data_carriers_out_mat(:,1)),imag( ...
    data_carriers_out_mat(:,1)),'.','LineWidth',2),grid on,title('MATLAB')
subplot(2,2,2),scatter(real(data_carriers_out_dds(:,1)), ...
    imag(data_carriers_out_dds(:,1)),'.','LineWidth',2),grid on,title('Vivado Sim')
subplot(2,2,3),scatter(real(data_carriers_out_mat),imag(data_carriers_out_mat), ...
    '.','LineWidth',2),grid on,title('MATLAB All Symbols')
subplot(2,2,4),scatter(real(data_carriers_out_dds),imag(data_carriers_out_dds), ...
    '.','LineWidth',2),grid on,title('Vivado Sim All Symbols')
sgtitle('Vivado CFO Estimation with MATLAB CFO Correction')

figure(),subplot(2,2,1),plot(real(freq_scaled(1:nfft,plot_symbol)),'LineWidth',2)
hold on,plot(real(cfo_out1(1:nfft))),legend('MATLAB','Vivado'),xlabel('Samples')
title('Real'),subplot(2,2,2),
plot(imag(freq_scaled(1:nfft,plot_symbol)),'LineWidth',2),xlabel('Samples')
title('Imaginary'),hold on,plot(imag(cfo_out1(1:nfft))),legend('MATLAB','Vivado')
subplot(2,2,3),plot(real(reshape(freq_scaled(1:nfft,:),[1 nfft*ofdm_symbols])),'LineWidth',2)
hold on,plot(real(cfo_out1)),legend('MATLAB','Vivado'),xlabel('Samples')
title('Real: Full Signal'),subplot(2,2,4)
plot(imag(reshape(freq_scaled(1:nfft,:),[1 nfft*ofdm_symbols])),'LineWidth',2)
hold on,plot(imag(cfo_out1)),legend('MATLAB','Vivado'),xlabel('Samples')
title('Imag: Full Signal'),sgtitle('DDS Frequency')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read input samples to mixer with CP removed from Vivado sim
file = fopen('../../../HW/modules/sim/mixer_out_samples.txt','r');
cfo_out1 = fscanf(file,"%d, %d\n", [2 nfft*ofdm_symbols]);
fclose(file);
cfo_out1 = complex(cfo_out1(1,:), cfo_out1(2,:));

figure(),subplot(2,2,1),plot(real(cp_rm(1:nfft)),'LineWidth',2),hold on
plot(real(cfo_out1(1:nfft))),title('Real'),legend('MATLAB','Vivado'),
subplot(2,2,2),plot(imag(cp_rm(1:nfft)),'LineWidth',2),hold on
plot(imag(cfo_out1(1:nfft))),title('Imaginary'),legend('MATLAB','Vivado')
subplot(2,2,3),plot(real(reshape(cp_rm,[1,nfft*ofdm_symbols])),'LineWidth',2)
hold on,plot(real(cfo_out1)),title('Real: Full Signal'),legend('MATLAB','Vivado')
subplot(2,2,4),plot(imag(reshape(cp_rm,[1,nfft*ofdm_symbols])),'LineWidth',2)
hold on,plot(imag(cfo_out1))
title('Imag: Full Signal'),legend('MATLAB','Vivado'),sgtitle('Mixer Input')
