function [num, den] = makefilter(type, class, Gp, Gs, wp, ws)
% MAKEFILTER Creates an analog filter that satisfies the given criteria.
%   makefilter(type, class, gp, gs, wp, ws)
% 
% type: type of the filter - 'lowpass', 'bandpass', 'highpass', or 'bandstop'
% class: filter class: 'butter', 'cheby1', 'cheby2' or 'elliptic'
% Gp: minimum passband gain in dB
% Gs: maximum stopband gain in dB
% wp: passband edge frequencies in radians
% ws: stopband edge frequencies in radians
% num: numerator of the transfer function of the filter
% den: denominator of the transfer function of the filter

if ~strcmp(type,'lowpass')  & ~strcmp(type,'bandpass') & ~strcmp(type,'highpass') & ~strcmp(type,'bandstop') 
    error('Invalid option for the type of the filter.');
end
if ~strcmp(class,'butter')  & ~strcmp(class,'cheby1') & ~strcmp(class,'cheby2') & ~strcmp(class,'elliptic') 
    error('Invalid option for the filter class.');
end

if strcmp(type,'lowpass')
    if strcmp(class,'butter')
        % Butterworth
        [n, wn] = buttord(wp, ws, -Gp, -Gs, 's');
        [num, den] = butter(n, wn, 's');
    elseif strcmp(class,'cheby1')
        % Chebyshev Type I
        [n wn] = cheb1ord(wp, ws, -Gp, -Gs, 's');
        [num, den] = cheby1(n, -Gp, wn, 's');
    elseif strcmp(class,'cheby2')
        % Chebyshev Type II
        [n wn] = cheb2ord(wp, ws, -Gp, -Gs, 's');
        [num, den] = cheby2(n, -Gs, wn, 's');
    else
        % Elliptic
        [n wn] = ellipord(wp, ws, -Gp, -Gs, 's');
        [num, den] = ellip(n, -Gp, -Gs, wn, 's');
    end
elseif strcmp(type, 'bandpass')
    if strcmp(class,'butter')
        % Butterworth
        [n, wn] = buttord(wp, ws, -Gp, -Gs, 's');
        [num, den] = butter(n, wn, 's');
    elseif strcmp(class,'cheby1')
        % Chebyshev Type I
        [n wn] = cheb1ord(wp, ws, -Gp, -Gs, 's');
        [num, den] = cheby1(n, -Gp, wn, 's');
    elseif strcmp(class,'cheby2')
        % Chebyshev Type II
        [n wn] = cheb2ord(wp, ws, -Gp, -Gs, 's');
        [num, den] = cheby2(n, -Gs, wn, 's');
    else
        % Elliptic
        [n wn] = ellipord(wp, ws, -Gp, -Gs, 's');
        [num, den] = ellip(n, -Gp, -Gs, wn, 's');
    end
elseif strcmp(type, 'highpass')
    if strcmp(class,'butter')
        % Butterworth
        [n, wn] = buttord(wp, ws, -Gp, -Gs, 's');
        [num, den] = butter(n, wn, 'high', 's');
    elseif strcmp(class,'cheby1')
        % Chebyshev Type I
        [n wn] = cheb1ord(wp, ws, -Gp, -Gs, 's');
        [num, den] = cheby1(n, -Gp, wn, 'high', 's');
    elseif strcmp(class,'cheby2')
        % Chebyshev Type II
        [n wn] = cheb2ord(wp, ws, -Gp, -Gs, 's');
        [num, den] = cheby2(n, -Gs, wn, 'high', 's');
    else
        % Elliptic
        [n wn] = ellipord(wp, ws, -Gp, -Gs, 's');
        [num, den] = ellip(n, -Gp, -Gs, wn, 'high', 's');
    end
else
    if strcmp(class,'butter')
        % Butterworth
        [n, wn] = buttord(wp, ws, -Gp, -Gs, 's');
        [num, den] = butter(n, wn, 'stop', 's');
    elseif strcmp(class,'cheby1')
        % Chebyshev Type I
        [n wn] = cheb1ord(wp, ws, -Gp, -Gs, 's');
        [num, den] = cheby1(n, -Gp, wn, 'stop', 's');
    elseif strcmp(class,'cheby2')
        % Chebyshev Type II
        [n wn] = cheb2ord(wp, ws, -Gp, -Gs, 's');
        [num, den] = cheby2(n, -Gs, wn, 'stop', 's');
    else
        % Elliptic
        [n wn] = ellipord(wp, ws, -Gp, -Gs, 's');
        [num, den] = ellip(n, -Gp, -Gs, wn, 'stop', 's');
    end
end

fprintf('The filter order n = %i\n', n);
fprintf('The transfer function of the filter is:\n');
printsys(num, den);

% Plot the magnitude response of the filter
w = 0:1:2*pi*4500;
w = w';
[mag, phase, w] = bode(num, den, w);
figure;
plot(w, mag);
title(['The ' type ' filter (' class ')']);