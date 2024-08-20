function printtransfn(K)
% PRINTTRANSFN prints the transfer function of the feedback system described in Section 6.7 of 
% the Lathi course textbook.
%   printtransfn(K)
%
%   K: DC amplifier gain

% Call the transfn function with given K
[CTnum, CTden] = transfn(K);
% Print the transfer fn 
printsys(CTnum, CTden);