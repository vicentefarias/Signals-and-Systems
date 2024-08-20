function unitramp(K)
% UNITRAMP displays the unit ramp response of the feedback system described in Section 6.7 of 
% the Lathi course textbook.
%   unitramp(K)
%
%   K: DC amplifier gain

% Obtain the transfn function
[CTnum, CTden] = transfn(K);

% Note that the unit ramp response of this system is the same as the unit step response of the 
% system with the transfer function $T(s)/s$.

% Obtain the numerator of the transfer fn T(s)/s
CTRnum = CTnum;
% Obtain the denominator of $T(s)/s$
CTRden = conv([0 1 0], CTden); 
step(CTRnum, CTRden);
title('Ramp Response');