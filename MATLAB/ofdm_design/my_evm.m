function [evm_lin] = my_evm( ...
    tx_frame,rx_frame)
    % ofdm_signal - complex time domain serial OFDM signal
    % reference_pilot - pilots sent at transmitter
[nfft,ofdm_symbols] = size(tx_frame);

for i = 1:ofdm_symbols
    for k = 1:nfft
        my_evm(k,i) = sqrt((imag(rx_frame(k,i))-imag(tx_frame(k,i)))^2+(real(rx_frame(k,i))-real(tx_frame(k,i)))^2)/abs(tx_frame(k,i));
    end
end