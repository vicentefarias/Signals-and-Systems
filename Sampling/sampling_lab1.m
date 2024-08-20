function sampling_lab1
% SAMPLING_LAB1 Recreates the results of the SAMPLING lab
%   sampling_lab1
%
%   Text here
%
%   x:  Variables here

% ------- sampling_lab1.m ----------------------------------
% Marios Athineos, marios@ee.columbia.edu
% http://www.ee.columbia.edu/~marios/
% Copyright (c) 2003 by Columbia University.
% All rights reserved.
% ----------------------------------------------------------

% Make our initial, "analog" signal
% (frequency 20 Hz)
[m,t] = makecos(20);

% Let's make an impulse train for sampling our signal
% (sampling frequency 50 Hz)
[it1,ts1] = makeimp(50);

% Now sample our original signal
ms1 = sampleit1(t,m,ts1);

% Plot all the signals to visualize the sampling process
c1 = 'r'; % color for the first case
smpl_plot(t,m,ts1,it1,ms1,c1);

% ----------------------------------------------------------

% Now make a second impulse train
% (sampling frequency 30 Hz less than nyquist)
[it2,ts2] = makeimp(30);

% Now sample our original signal with the new sampling rate
ms2 = sampleit1(t,m,ts2);

% Plot all the signals to visualize the sampling process
c2 = 'g'; % color for the second case
smpl_plot(t,m,ts2,it2,ms2,c2);

% ----------------------------------------------------------

% Now we reconstruct from the two sampled versions
mr1 = interpsinc(ms1,ts1,t);
mr2 = interpsinc(ms2,ts2,t);

% Plot original and reconstructed to compare
recon_plot(t,m,ts1,ms1,mr1,c1);
recon_plot(t,m,ts2,ms2,mr2,c2);

% ----------------------------------------------------------

% Now lets look at the spectrum to examine the aliasing
% Make the frequency index for plotting
f = (-5000/2):(1/2):(5000/2);

% Use the functions we wrote in lab3 to calculate spectra
M   = am_spectrum(m);
MR1 = am_spectrum(mr1);
MR2 = am_spectrum(mr2);

% Plot the spectra to compare
am_plot(f,M,MR1,MR2,0.02);
