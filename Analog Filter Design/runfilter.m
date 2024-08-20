function runfilter(num, den, wav)
% RUNFILTER Tests a given filter
%   runfilter(num, den, m)
% 
% num: numerator of the transfer function of the filter
% den: denominator of the transfer function of the filter
% wav: name of a WAV file

% Read the input signal
[m,fs] = audioread(wav);
% Keep only a small part of it to speed up calculations
m = m(110000:230000);

t = linspace(0, length(m)/fs, length(m));
f = linspace(-fs/2, fs/2, length(m));
M = am_spectrum(m);

% Filter
sys = tf(num, den);
newm = lsim(sys, m, t);
% Listen to the filtered signal
soundsc(newm, fs); 

figure; 
% Look at the filtered time signal
subplot(2,1,1); plot(t, newm); grid on;
axis([min(t), max(t), min(m), max(m)]);
title('The filtered time signal');
% Look at the spectrum of the filtered signal
subplot(2,1,2); plot(f, am_spectrum(newm)); grid on;
axis([min(f), max(f), min(M), max(M)]);
title('The spectrum of the filtered signal');