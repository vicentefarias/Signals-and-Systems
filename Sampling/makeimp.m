function [it,ts] = makeimp(fs,len)
% MAKEIMP Makes an impulse train for sampling
%   [it,ts] = makeimp(fs,len)
%
%   fs:  frequency of the impulse train (sampling frequency) 
%   len: length in seconds
%   it:  the impulse train
%   ts:  the time vector of the impulses

% Default value
if nargin < 2; len = 2; end

ts  = ((-len/2):1/fs:(len/2)).'; % sampling times
it  = ones(size(ts)); % impulse train
