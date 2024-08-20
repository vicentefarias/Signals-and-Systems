function z = avgones(a)

b = find(a==1);
c = diff(b);
d = find(c~=1);
x = c(1:d);
z = x;
