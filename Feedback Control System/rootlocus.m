function rootlocus()
% ROOTLOCUS Displays the root locus plot of the feedback system described in Section 6.7 of
% the Lathi course textbook.
%   rootlocus

% The numerator of the open-loop transfer fn A(s)G(s)H(s)
OTnum = [0 0 1];
% The denominator of the open-loop transfer fn A(s)G(s)H(s)
OTden = [1 8 0]; 
% Obtain the root-locus plot
rlocus(OTnum, OTden);
% Set the range for the x and y axis of the current plot
axis([-10, 2, -10, 10]);