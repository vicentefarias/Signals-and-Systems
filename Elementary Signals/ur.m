
function y = ur(n)
%UR Unit ramp
% y = ur(n)
%   n:   time index
%   y:   signal

% ------- ur.m -----------------------------------
% Marios Athineos, marios@ee.columbia.edu
% http://www.ee.columbia.edu/~marios/
% Copyright (c) 2003 by Columbia University.
% All rights reserved.
% ----------------------------------------------------------

n(n<0) = 0;
y = n;