function [X] = hinhtron(X0, r)

fCircle = @(x, y) (x - X0(1)).^2 + (y - X0(2)).^2 - r;
fig = ezplot(fCircle);
set(fig, 'color', 'blue');

axis equal;
xlabel('x'); ylabel('y');
legend('{(x - a)^2} + {(y - b)^2} = {r^2}');
title('Hinh tron');


end