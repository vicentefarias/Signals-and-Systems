function compensate(alpha, beta)
% COMPENSATE Displays the root locus plot of the feedback system described in Section 6.7 of
% the Lathi course textbook.
%   compensate(alpha, beta)
%
%   alpha: -zero of the compensator
%   beta: -pole of the compensator

% The numerator of the compensator
Cnum = [0 1 alpha];
% The denominator of the compensator
Cden = [0 1 beta]; 
% The numerator of the open-loop transfer fn A(s)G(s)H(s)
OTnum = [0 0 1]; 
% The denominator of the open-loop transfer fn A(s)G(s)H(s)
OTden = [1 20 0]; 
% The new system
[COTnum, COTden] = series(Cnum, Cden, OTnum, OTden);
rlocus(COTnum, COTden);
axis([-60, 2, -20, 20]);
