function sampling_lab2
% SAMPLING_LAB2 Recreates the results of the SAMPLING lab
%   sampling_lab2
%
%   Text here
%
%   x:  Variables here

% ------- sampling_lab2.m ----------------------------------
% Marios Athineos, marios@ee.columbia.edu
% http://www.ee.columbia.edu/~marios/
% Copyright (c) 2003 by Columbia University.
% All rights reserved.
% ----------------------------------------------------------

% Load the music sample and its sampling frequency
[m,fs] = wavread('neneh32.wav');
% Select a small part of it
m = m(110000:230000);

% Listen to it
soundsc(m,fs);

% Look at the time signal
time_plot(m,fs);

% Look at the spectrum
figure;
subplot(311);
freq_plot(m,fs);

% ----------------------------------------------------------

% Now resample it without antialiasing filter
%(sampling frequency is 4000 Hz, aliasing occurs)
newfs = 4000;
md1   = sampleit2(m,fs,newfs,0);

% Listen to it
soundsc(md1,newfs);

% Look at the spectrum
subplot(312);
freq_plot(md1,fs,newfs);

% ----------------------------------------------------------

% Lets try to resample it with an antialiasing filter
md2   = sampleit2(m,fs,newfs,1);

% Listen to it
soundsc(md2,newfs);

% Look at the spectrum
subplot(313);
freq_plot(md2,fs,newfs);

% ----------------------------------------------------------

% Listen to the difference
soundsc(md1 - md2,newfs);

% ----------------------------------------------------------

% Listen to the scaling property
soundsc(m,fs/2);

soundsc(m,fs*2);
