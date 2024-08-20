function unitstep(K)
% UNITSTEP displays the unit step response of the feedback system described in Section 6.7 of 
% the Lathi course textbook.
%   unitstep(K)
%
%   K: DC amplifier gain

% Obtain the transfn function
[CTnum, CTden] = transfn(K);
% Step response of the closed-loop system
step(CTnum, CTden);