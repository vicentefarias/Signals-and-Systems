
function y = us(n)
%US Unit step
% y = us(n)
%   n:   time index
%   y:   signal

% ------- us.m ---------------------------------------------
% Marios Athineos, marios@ee.columbia.edu
% http://www.ee.columbia.edu/~marios/
% Copyright (c) 2003 by Columbia University.
% All rights reserved.
% ----------------------------------------------------------

y = (n >= 0);