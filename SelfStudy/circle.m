function circle(a, b, r)
% Ham ve~ duong tron tam (a,b), ban kinh r.
t = 0:pi/20:2*pi;
x = a + r*sin(t);
y = b + r*cos(t);
plot(x, y);
axis equal;
