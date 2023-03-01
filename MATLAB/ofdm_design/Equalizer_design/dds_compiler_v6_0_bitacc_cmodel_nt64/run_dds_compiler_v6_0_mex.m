% Run some basic tests demonstrating the dds_compiler_v6_0_bitacc MEX function
%   run_dds_compiler_v6_0_bitacc_mex()
%
function run_dds_compiler_v6_0_mex(varargin)
  % Constants
  data_samples = 8192;
  interactive      = true; % When set will pause script between demonstrations

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Create default DDS
  disp('---------------------------------------------------------------------');
  disp('INFO: Create default DDS');
  disp('---------------------------------------------------------------------');
  % Create DDS. (omit semicolon on next line to see the configuration.)
  dds1    = dds_compiler_v6_0_bitacc()  

  %demonstrate get_version
  version = get_version(dds1)

  % Create an input data vector
  % For the default DDS configuration there is no input data
  % disp('INFO: Generate input data...');

  % Execute DDS C model
  disp('INFO: Execute DDS...');
  data_out = run(dds1,data_samples);

  % Plot output data
  disp('INFO: Plot output data');
  fig1 = figure;
  hold on;
  grid on;
  plot(data_out(:,:,1)/max(abs(data_out(:,:,1))),'g');
  plot(data_out(:,:,2)/max(abs(data_out(:,:,2))),'r');
  plot(data_out(:,:,3)/max(abs(data_out(:,:,3))),'b');
  legend('Phase out','Sin out','Cos out');
  title('Default DDS configuration');

  % Destroy the model (note that the model will be removed automatically when it goes
  %                    out of scope, but this is explicit)
  destroy(dds1);  

  if (interactive) disp('Press any key to continue...'); pause; end
  close(fig1);

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Create dds instance with persistent memory
  disp('---------------------------------------------------------------------');
  disp('INFO: Create dds instance with persistent state');
  disp('---------------------------------------------------------------------');
  dds2     = dds_compiler_v6_0_bitacc('PersistentMemory',true);

  % Execute DDS C model
  disp('INFO: Execute DDS...');
  data_out = run(dds2,data_samples);

  % Execute DDS C model again
  disp('INFO: Execute DDS again...');
  data_out = vertcat(data_out,run(dds2,data_samples));

  % Reset and Execute DDS C model yet again
  disp('INFO: Reset and Execute DDS...');
  reset(dds2);
  data_out = vertcat(data_out,run(dds2,data_samples));

  % Plot output data
  disp('INFO: Plot output data noting how only the reset causes a discontinuity');
  fig2 = figure;
  hold on;
  grid on;
  plot(data_out(:,:,1)/max(abs(data_out(:,:,1))),'g');
  plot(data_out(:,:,2)/max(abs(data_out(:,:,2))),'r');
  plot(data_out(:,:,3)/max(abs(data_out(:,:,3))),'b');
  legend('Phase out','Sin out','Cos out');
  title('Default, persistent DDS configuration with reset');

  destroy(dds2);

  if (interactive) disp('Press any key to continue...'); pause; end
  close(fig2);

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Demonstrate instance with non-default configuration negative cosine and negative sine
  disp('---------------------------------------------------------------------');
  disp('INFO: Create dds instance with negative cosine and negative sine');
  disp('---------------------------------------------------------------------');
  dds3     = dds_compiler_v6_0_bitacc('Negative_Cosine',1,'Negative_Sine',1);
  config3  = get_configuration(dds3);

  % Execute DDS C model
  disp('INFO: Execute DDS...');
  data_out = run(dds3,data_samples);

  % Plot output data
  disp('INFO: Plot output data');
  fig3 = figure;
  hold on;
  grid on;
  plot(data_out(:,:,1)/max(abs(data_out(:,:,1))),'g');
  plot(data_out(:,:,2)/max(abs(data_out(:,:,2))),'r');
  plot(data_out(:,:,3)/max(abs(data_out(:,:,3))),'b');
  legend('Phase out','Sin out','Cos out');
  title('DDS with negative cosine and negative sine');

  destroy(dds3);

  if (interactive) disp('Press any key to continue...'); pause; end
  close(fig3);

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Demonstrate programmable POFF and streaming PINC
  disp('---------------------------------------------------------------------');
  disp('INFO: Create dds instance with: ');
  disp('            - Programmable Phase offset');
  disp('            - non default POFF value');
  disp('            - Streaming Phase Increment');
  disp('---------------------------------------------------------------------');
  poff_vals = zeros(1,16);
  poff_vals(1) = hex2dec('5555555'); %default phase_width is 28 bits
  dds4     = dds_compiler_v6_0_bitacc('PersistentMemory', true, ...
                                      'Phase_Increment',  3, ...
                                      'Phase_Offset',     1, ...
                                      'POFF',             poff_vals);
  config4  = get_configuration(dds4)

  % Create PINC streaming in samples
  % a low frequency to start with, then a higher frequency
  data_in4 = [ones(1,data_samples)*15000];

  % Execute DDS C model
  disp('INFO: Execute DDS...');
  data_out = run(dds4,data_samples,data_in4);

  % Change POFF via the config access function
  disp('INFO: Changing POFF via config');
  config_pkt.POFF = ones(1,16)* hex2dec('3333333');
  %config_pkt.POFF(1) = hex2dec('3333333');
  config_do(dds4,config_pkt);

  disp('INFO: the programmed phase offset should cause a phase discontinuity');
  %...and run for another few samples
  data_out = vertcat(data_out,run(dds4,data_samples,data_in4));

  % Plot output data
  disp('INFO: Plot output data');
  fig4=figure;
  hold on;
  grid on;
  plot(data_out(:,:,1)/max(abs(data_out(:,:,1))),'g');
  plot(data_out(:,:,2)/max(abs(data_out(:,:,2))),'r');
  plot(data_out(:,:,3)/max(abs(data_out(:,:,3))),'b');
  legend('Phase out','Sin out','Cos out');
  title('DDS with initially offset POFF and run-time program-changed POFF');

  destroy(dds4);
  if (interactive) disp('Press any key to continue...'); pause; end
  close(fig4);

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Demonstrate PINC and POFF streaming with resync
  disp('---------------------------------------------------------------------');
  disp('INFO: Create dds instance with: ');
  disp('            - Streaming Phase offset');
  disp('            - Streaming Phase increment');
  disp('            - Streaming resync');
  disp('---------------------------------------------------------------------');
  dds5     = dds_compiler_v6_0_bitacc('Phase_Increment',3, ...
                                      'Phase_Offset',   3, ...
                                      'Resync',         1);
  config5  = get_configuration(dds5);

  % Create PINC streaming in samples
  % a low frequency to start with, then a higher frequency
  pinc_in = [ones(1,data_samples)*20000];
  poff_in = [ones(1,data_samples/2)*5000 ones(1,data_samples/2)*10000];
  resync_in = zeros(1,data_samples);
  resync_in(4000) = 1;
  data_in5 = horzcat(pinc_in, poff_in, resync_in);

  % Execute DDS C model
  disp('INFO: Execute DDS...');
  data_out = run(dds5,data_samples,data_in5);

  % Plot output data
  disp('INFO: Plot output data');
  fig5=figure;
  hold on;
  grid on;
  plot(data_out(:,:,1)/max(abs(data_out(:,:,1))),'g');
  plot(data_out(:,:,2)/max(abs(data_out(:,:,2))),'r');
  plot(data_out(:,:,3)/max(abs(data_out(:,:,3))),'b');
  legend('Phase out','Sin out','Cos out');
  title('DDS with streaming PINC, POFF and resync on sample 4000');

  if (interactive) disp('Press any key to continue...'); pause; end
  destroy(dds5);
  close(fig5);

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Demonstrate multichannel streaming DDS
  disp('---------------------------------------------------------------------');
  disp('INFO: Create multichannel dds instance with: ');
  disp('            - Streaming Phase offset');
  disp('            - Streaming Phase increment');
  disp('            - Streaming resync');
  disp('---------------------------------------------------------------------');
  dds6     = dds_compiler_v6_0_bitacc('Phase_Increment',3, ...
                                      'Phase_Offset',   3, ...
                                      'Channels',       2, ...
                                      'Resync',         1);
  config6  = get_configuration(dds6);

  % Create PINC streaming in samples
  pinc_in_ch1 = [ones(1,data_samples)*20000];
  poff_in_ch1 = [ones(1,data_samples)*10000000];
  pinc_in_ch2 = [ones(1,data_samples)*30000];
  poff_in_ch2 = [ones(1,data_samples)*20000000];
  resync_in_ch1 = zeros(1,data_samples);
  resync_in_ch1(1000) = 1;
  resync_in_ch2 = zeros(1,data_samples);
  resync_in_ch2(2000) = 1;

  %data_in6 indices are (samples, field (pinc/poff/resync), channel)
  % i.e (vertical, horizontal, page)
  data_in6(:,1,1) = pinc_in_ch1;
  data_in6(:,2,1) = pinc_in_ch2;
  data_in6(:,1,2) = poff_in_ch1;
  data_in6(:,2,2) = poff_in_ch2;
  data_in6(:,1,3) = resync_in_ch1;
  data_in6(:,2,3) = resync_in_ch2;

  % Execute DDS C model
  disp('INFO: Execute DDS...');
  data_out = run(dds6,data_samples,data_in6);

  % Plot output data
  disp('INFO: Plot output data');
  fig6a=figure;
  hold on;
  grid on;
  plot(data_out(:,1,1)/max(abs(data_out(:,1,1))),'g');
  plot(data_out(:,1,2)/max(abs(data_out(:,1,2))),'r');
  plot(data_out(:,1,3)/max(abs(data_out(:,1,3))),'b');
  legend('Phase out ch1','Sin out ch1','Cos out ch1');
  title('First channel of 2 channel DDS with streaming PINC, POFF and resync at sample 1000');

  if (interactive)
    fig6b=figure;
    hold on;
    grid on;
    plot(data_out(:,2,1)/max(abs(data_out(:,2,1))),'g');
    plot(data_out(:,2,2)/max(abs(data_out(:,2,2))),'r');
    plot(data_out(:,2,3)/max(abs(data_out(:,2,3))),'b');
    legend('Phase out ch2','Sin out ch2','Cos out ch2');
    title('Second channel of 2 channel DDS with streaming PINC, POFF');
    
    if (interactive) disp('Press any key to continue...'); pause; end
    close(fig6b);
  end
  destroy(dds6);
  close(fig6a);

  if (data_out(1:1:1) == 10020000)
    disp('Test completed successfully');
  end

end

%-----------------------------------------------------------------------------
%  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
%
%  This file contains confidential and proprietary information
%  of Xilinx, Inc. and is protected under U.S. and
%  international copyright and other intellectual property
%  laws.
%
%  DISCLAIMER
%  This disclaimer is not a license and does not grant any
%  rights to the materials distributed herewith. Except as
%  otherwise provided in a valid license issued to you by
%  Xilinx, and to the maximum extent permitted by applicable
%  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
%  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
%  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
%  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
%  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
%  (2) Xilinx shall not be liable (whether in contract or tort,
%  including negligence, or under any other theory of
%  liability) for any loss or damage of any kind or nature
%  related to, arising under or in connection with these
%  materials, including for any direct, or any indirect,
%  special, incidental, or consequential loss or damage
%  (including loss of data, profits, goodwill, or any type of
%  loss or damage suffered as a result of any action brought
%  by a third party) even if such damage or loss was
%  reasonably foreseeable or Xilinx had been advised of the
%  possibility of the same.
%
%  CRITICAL APPLICATIONS
%  Xilinx products are not designed or intended to be fail-
%  safe, or for use in any application requiring fail-safe
%  performance, such as life-support or safety devices or
%  systems, Class III medical devices, nuclear facilities,
%  applications related to the deployment of airbags, or any
%  other applications that could lead to death, personal
%  injury, or severe property or environmental damage
%  (individually and collectively, "Critical
%  Applications"). Customer assumes the sole risk and
%  liability of any use of Xilinx products in Critical
%  Applications, subject only to applicable laws and
%  regulations governing limitations on product liability.
%
%  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
%  PART OF THIS FILE AT ALL TIMES.
%-----------------------------------------------------------------------------
