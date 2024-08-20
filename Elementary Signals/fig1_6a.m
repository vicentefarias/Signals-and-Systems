t = -1:0.001:4;
x = ur(t) .* (us(t)-us(t-2)) + (ur(-2*t+6) .* us(t-2));
plot(t,x);
grid on;
axis([-1 4 -.5 2.5]);
set(gcf,'paperunits','centimeters');
exportfig(gcf, 'elem1.eps','bounds','tight','width',8.5,'linestylemap','bw');
