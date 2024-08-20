function [CTnum, CTden] = transfn(K)
% TRANSFN Returns the transfer function of the feedback system described in Section 6.7 of
% the Lathi course textbook.
%   [CTnum, CTden] = transfn(K)
%
%   K: DC amplifier gain
%   CTnum: numerator of the transfer function
%   CTden: denominator of the transfer function

Anum=[0 0 K]; % numerator of A(s)
Aden=[0 0 1]; % denominator of A(s)
Gnum=[0 0 1]; % numerator of G(s)
Gden=[1 20 0]; % denominator of G(s)
Hnum=[0 0 1]; % numerator of H(s)
Hden=[0 0 1]; % denominator of H(s)
[FTnum, FTden]=series(Anum, Aden, Gnum, Gden); % feed-forward transfer fn
[CTnum, CTden]=feedback(FTnum, FTden, Hnum, Hden); % closed-loop transfer fn