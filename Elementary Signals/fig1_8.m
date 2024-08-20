t = -1:0.001:5;
x = ur(t-1) .* (us(t) - us(t-2)) + (us(t-2) - us(t-4));
plot(t,x);
grid on;
axis([-1 5 -.5 2.5]);
set(gcf,'paperunits','centimeters');
exportfig(gcf, 'elem2.eps','bounds','tight','width',8.5,'linestylemap','bw')