clc
clearvars
close all
format long


% x = [3, 15, 9, 12, -1, 0, -12, 9, 6, 1];
% x(x>0) = 0
% x(mod(x,3)==0) = 3
% x(mod(x,2)==0) = x(mod(x,2)==0).*5
% x(x<sum(x)/numel(x)) = 0

% x = [3 2 6 8]'; y = [4 1 3 5]';
% sum(x)
% y = y + sum(x)
% x = x.^y
% y = y./x
% w = x.*y
% x.*y - w
% sum(x.*y)
% 3*4 + 2*1 + 6*3 + 8*5

% x = [1 4 8];    y = [2 1 5];    A = [3 1 6; 5 2 7];
% x + y
% x + A
% x' + y
% A - [x' y']
% A - 3

% rng(0);
% A = randi([-10, 10], 4)
% B = A([1 2], :) + 10;
% C = A(:, [1 4]) + 10;
% D = 1./A(A~=0);
% E = A.^0.5;

% A = [2 4 1; 6 7 2; 3 5 9];
% x = A(1, :)
% y = A(end - 1 : end, :)
% max(A(:))
% min(A(:))
% sum(A(:))

% A = [2 1 0; -2 5 -1; 3 4 9];    B = [3 1 2; -1 3 -2; 3 4 5];
% X = A*B^(-1);
% X = B*A^(-1);
% A(:,2) = [];
% A = [A B(:,1)]

% x = -pi:01:pi;
% y = x + sin(x);
% plot(x, y);
% title('Mot chiec do thi nao do');
% legend('y = x + sin(x)');

% syms x
% g = exp(x)
% ezplot(g, [-2 2])

% syms x
% x_ = linspace(0, 2*pi);
% ezplot(sin(x), x_);
% hold on
% ezplot(sin(x + pi/2), x_);
% ezplot(sin(x + pi/3), x_);
% plot(x_, sin(x_ + pi/2));plot(x_, sin(x_ + pi/3));

% syms x y;
% ezmesh(sin(x)*cos(y), [0, 10, 0, 10])
% ezmesh(x^2 - y^2, [-2 2 -2 2])
% ezmesh(sin(x)^5*cos(y))

% [X, Y] = meshgrid(-1:.2:1);
% Z = X.^2 - Y.^2;
% contour(Z);
% contour(X,Y,Z);


% syms x a b;
% limit(sin(sqrt(x + 1)) - sin(sqrt(x)), Inf);
% limit((1 - cos(x))/x^2, pi);
% limit((sin(x) - sin(a))/(x-a), a);
% limit(sin(3*x)/sin(4*x), pi);
% limit(log(cos(a*x))/log(cos(b*x)), 0)

% syms f(x)
% f(x) = x^5 + 3*x^4 - 3*x + 7;
% diff(f,x);
% subs(f,4);
% subs(diff(f,x),4);
% single(solve(f == 0, x))
% syms x
% quadl(sqrt(1 + sin(x)^4), 0, pi)
% single(int(sqrt(1 + sin(x)^4), 0, pi))

% syms y(t)
% eqn = diff(y) + t*y == t
% n(t) = dsolve(eqn)
% subs(n, t, 2)