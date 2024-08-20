function wavinfo(wav)
% WAVINFO Reads a WAV file and plots the signal both in time and frequency domain.
%   wavinfo(wav)
% 
% wav: name of a WAV file

% Read the input signal
[m,fs] = audioread(wav);
% Keep only a small part of it to speed up calculations
m = m(110000:230000);

t = linspace(0, length(m)/fs, length(m));
f = linspace(-fs/2, fs/2, length(m));
% Listen to it
soundsc(m, fs);

figure;
% Look at the original time signal
subplot(2,1,1); plot(t,m); grid on;
axis([min(t), max(t), min(m), max(m)]);
title('The original time signal');
% Look at the spectrum of the original signal
M = am_spectrum(m);
subplot(2,1,2); plot(f, M); grid on;
axis([min(f), max(f), min(M), max(M)]);
title('The spectrum of the original signal');