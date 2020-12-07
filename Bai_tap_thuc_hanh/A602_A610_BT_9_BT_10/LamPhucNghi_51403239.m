% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 6/11/2020

clearvars
clc
close all
format long

%% bai tap 2
% A = [1 -2 3 9; -1 3 0 -4; 2 -5 5 17];
% [R,jb] = rref(A);
% n = R(:,end);

% A = [3 3 4; 1 1 4; 2 -5 4];
% B = [2; -2; 3];
% X = A\B
% rref([A B])

%% bai tap 3
% x = -pi/2:0.01:pi/2;
% f = x.*sin(x);
% g = x.*cos(x);
% plot(f, g);
% grid on;
% text(0,0,'A');

% t = meshgrid(-20:0.01:20);
% x = 5*(cos(t) + t.*sin(t));
% y = 5*(sin(t) + t.*cos(t));
% mesh(t,x,y)

%% bai tap 4
% A = [1 3]; B = [-3 5]; C = [2 -4]; D = [-1 -3]; O = [0 0];
% plot(A,'or');
% plot(B,'sb');
% plot(C,'>m');

%% -------------------------------------------- bai 10
%% bai tap 1
% syms x
% f = x^3 - x^2 - 6*x + 2;
% diff(f)
% diff(f,2)
% diff(f,3)

% f = x^(1/3) - x/3;
% diff(f)
% diff(f,2)
% diff(f,3)

% f = cos(2*x);
% diff(f)
% diff(f,2)
% diff(f,3)

% f = x/(x^3-1);
% diff(f)
% diff(f,2)
% diff(f,3)

% f = sqrt(x) - x^(1/4);
% diff(f)
% diff(f,2)
% diff(f,3)

%% Bai tap 2
% syms x;
% int(sqrt(1-x^2))
% int(sin(sqrt(x)))
% int(cos(x)^4, 0, pi/2)
% int(abs(x-5),0,10)
% int(tan(x), pi/4, pi/3)

%% Bai tap 3
% syms x y
% a = x^2 + x*y + y^2 + y;
% diff(a,x)
% diff(a,x,2)
% diff(diff(a,y),x)
% diff(a,y)
% diff(a,y,2)
% b = x*exp(-2*x^2 - 2*y^2);
% diff(b,x)
% diff(b,x,2)
% diff(diff(b,y),x)
% diff(b,y)
% diff(b,y,2)
% c = exp(x)*cos(y);
% diff(c,x)
% diff(c,x,2)
% diff(diff(c,y),x)
% diff(c,y)
% diff(c,y,2)

%% Bai tap 4
% syms x y a
% int(int(cos(y^3),x,0,y^2),y,0,1)
% int(int(1/(4-x^2), x, -1, y), y, -1, 1)
% int(int(1/(sqrt(a^2-x^2)),x), y)
% int(int(cos(y^2), y, x, 1), x, 0, 1)
% int(int((y*exp(x^2))/x^3, x, sqrt(y), 1), y, 0, 1)

%% Bai tap 5-
% syms x y
% %-------------------------------------------------------a
% S = solve([y == 2*x.^2, y == 1 + x.^2], [x, y]);
% numOfIntersectPoints = length(S.x);
% X = cell(1, numOfIntersectPoints);
% for i=1:numOfIntersectPoints
%     X{i} = [S.x(i) S.y(i)];
% end
% X{1}
% X{2}
% A = int(int(1, x, X{1}(1), X{1}(2)), y, X{2}(1), X{2}(2))
% x = X{1}(1):0.01:X{2}(1);
% plot(x, 2*x.^2);
% hold on;
% plot(x, 1 + x.^2);

% %-------------------------------------------------------b
% S = solve([y - 2*x == 0, y - x.^2 == 0], [x, y]);
% numOfIntersectPoints = length(S.x);
% X = cell(1, numOfIntersectPoints);
% for i=1:numOfIntersectPoints
%     X{i} = [S.x(i) S.y(i)];
% end
% X{1}
% X{2}
% A = int(int(1, x, X{1}(1), X{1}(2)), y, X{2}(1), X{2}(2))
% x = X{1}(1):0.01:X{2}(1);
% plot(x, 2*x);
% hold on;
% plot(x, x.^2);

% %-------------------------------------------------------c
% S = solve([y - x + 1 == 0, y^2 == 2*x + 6], [x, y]);
% numOfIntersectPoints = length(S.x)
% X = cell(1, numOfIntersectPoints);
% for i=1:numOfIntersectPoints
%     X{i} = [S.x(i) S.y(i)];
% end
% X{1}
% X{2}
% A = int(int(1, x, X{1}(1), X{1}(2)), y, X{2}(1), X{2}(2))
% x = X{1}(1):0.01:X{2}(1);
% plot(x, x-1);
% hold on;
% plot(x, sqrt(2*x+6));
% plot(x, -sqrt(2*x+6));

% %-------------------------------------------------------d
% S = solve([y == x, y == x^3], [x, y]);
% numOfIntersectPoints = length(S.x);
% X = cell(1, numOfIntersectPoints);
% for i=1:numOfIntersectPoints
%     X{i} = [S.x(i) S.y(i)];
% end
% X{1}
% X{2}
% A = int(int(1, x, X{1}(1), X{1}(2)), y, X{2}(1), X{2}(2))
% x = X{1}(1):0.01:X{2}(1);
% plot(x, x);
% hold on;
% plot(x, x.^3);

% %-------------------------------------------------------e
% S = solve([y == x - 2, x == y^2], [x, y]);
% numOfIntersectPoints = length(S.x);
% X = cell(1, numOfIntersectPoints);
% for i=1:numOfIntersectPoints
%     X{i} = [S.x(i) S.y(i)];
% end
% X{1}
% X{2}
% A = int(int(1, x, X{1}(1), X{1}(2)), y, X{2}(1), X{2}(2))
% x = X{1}(1):0.01:X{2}(1);
% plot(x, x - 2);
% hold on;
% plot(x, x);
% plot(x, -x);

%% Bai tap 6
syms x y z
u = [sin(x) + cos(y), x^2 + 3*x - 4, log(x) + y^2 + sqrt(z)];
% u = [5*(x^3) - x^2*y^2 + tan(x), exp(x^2 + y^2 + z^2), x^3*y*x^2 -x^2*y - x^3*z];
% u = [cos(x) + sin(x) + tan(x), log(x - y + z), x^3 - y^3 + z^3];
% u = [2*x^2 + 3*y^2 + 2*x*y*z, cos(x*y)*sin(x*z)*tan(y*z), exp(x+y)*log(x*y*z)];
% u = [sqrt(x + log(y*z)), x/(z^2 + y^3), (y*z)/sqrt(x^2 - 1)];
J = cell(3,3);
sArr = [x y z];
for i=1:3
    for j=1:3
       J{i,j} = diff(u(i), sArr(j));
    end
end
for i=1:3
    for j=1:3
        fprintf('%s     ', char(J{i,j}));
    end
    disp(' ');
end

%% bai tap 7
% syms x y z t
% a = sin(x^2+y^2)/(x^2 + y^2)
% deltaa = diff(a,x,2) + diff(a,y,2)

% b = exp(-y^2-z^2)*cos(sqrt(1 + x - 7))
% deltab = diff(b, x, 2) + diff(b, y, 2) + diff(b, z, 2)

% c = log(2*x*y/(x^2 + 2*y^2 + 3*z^2)) + (x*y*z*exp(x*y*z*t))/sqrt(x^2-y^2+z^2-t^2);
% deltac = diff(c, x, 2) + diff(c, y, 2) + diff(c, z, 2) + diff(c, t, 2)


%% bai tap 8
% syms x y
% int(exp(-x^2), -inf, inf)
% int(int(exp(-x^2-y^2), x, -inf, inf), y, -inf, inf)

%% bai tap 9
% syms x y z
% int(int(int(y, x, 0, 3), y, 0, x), z, x - y, x + y)
% int(int(int(exp(x/y), x, 1, y), y, 0, 1), z, 0, x*y)
% int(int(int(z/(z^2+x^2), x, 0, z), y, 1, 4), z, y, 4)

%% bai tap 10
% syms x
n = 6;
x0 = 1; f = @(x) log(x);
taylor(f, x, x0, 'order', n)
P = DaThuc_Taylor(f, n, x0);
P
