function ms = sampleit2(m,fs,newfs,bf)
% SAMPLEIT2 Sample a signal (method 2 is for music signals)
%   ms = sampleit2(m,fs,newfs,bf)
%
%   m:     the 'analog' signal
%   fs:    the sampling rate of the 'analog' signal
%   newfs: the desired sampling rate
%   bf:    should we use antialiasing filter (0 or 1)

% Specify tolerance to avoid really long integers
[N,D] = rat(fs/newfs,1);

if bf
    ms = resample(m,D,N,40);
else
    ms = resample(m,D,N,0);
end
