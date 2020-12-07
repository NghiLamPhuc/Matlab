% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 13/11/2020

clc
clear all
close all
format long

%% bai tap 1---------------------------------------------------------------
% syms x
% f(x) = x^3 - x^2 - 6*x + 2;
% diff(f)
% diff(f,2)
% diff(f,3)
% 
% f = x^(1/3) - x/3;
% diff(f)
% diff(f,2)
% diff(f,3)
% 
% f = cos(2*x);
% diff(f)
% diff(f,2)
% diff(f,3)
% 
% f = x/(x^3-1);
% diff(f)
% diff(f,2)
% diff(f,3)
% 
% f = sqrt(x) - x^(1/4);
% diff(f)
% diff(f,2)
% diff(f,3)

%% bai tap 2 --------------------------------------------------------------
% syms x
% % a
% int(sqrt(1 - x^2))
% 
% % b
% int(sin(sqrt(x)))
% 
% % c
% int(cos(x)^4, 0, pi/2)
% 
% % d
% int(abs(x-5), 0, 10)
% 
% % e
% int(tan(x), pi/4, pi/3)

%% bai tap 3 --------------------------------------------------------------
% syms f(x,y)
% % a
% f(x,y) = x^2 + x*y + y^2 + y;
% diff(f, x)
% diff(f, x, 2)
% diff(diff(f, x), y)
% diff(f, y)
% diff(f, y, 2)
% 
% % b
% f(x, y) = x*exp(-2*x^2-2*y^2);
% diff(f, x)
% diff(f, x, 2)
% diff(diff(f, x), y)
% diff(f, y)
% diff(f, y, 2)
% 
% % c
% f(x, y) = exp(x)*cos(y);
% diff(f, x)
% diff(f, x, 2)
% diff(diff(f, x), y)
% diff(f, y)
% diff(f, y, 2)

%% bai tap 4 --------------------------------------------------------------
% syms x y a
% % a
% int(int(cos(y^3), x, [0, y^2]), y, [0, 1])
% 
% % b
% int(int(1 / (4 - x^2), x, [-1, y]), y, [-1, 1])
% 
% % c
% int(int(1/(sqrt(a^2 - x^2)), x), y)
% 
% % d
% int(int(cos(y^2), y, [x, 1]), y, [0, 1])
% 
% % e
% int(int(y*exp(x^2)/x^3, x, [sqrt(y), 1]), y, [0, 1])

%% bai tap 5---------------------------------------------------------------
% % a----------------------------------------------------------------------
% syms x
% y1(x) = 2*x^2;
% y2(x) = 1 + x^2;
% hoanhDo = double(solve(y1 == y2, x))
% tungDo = double(subs(y1, hoanhDo))
% dienTich = abs(int(int(1, [y1, y2]), [hoanhDo(1), hoanhDo(2)]))
% ezplot(y1);
% hold on
% grid on
% ezplot(y2);
% axis([min(hoanhDo)-1    max(hoanhDo)+1  min(tungDo)-3   max(tungDo)+1]);

% % b----------------------------------------------------------------------
% syms x
% y1(x) = 2*x;    y2(x) = x^2;
% hoanhDo = double(solve(y1 == y2, x))
% tungDo = double(subs(y1, hoanhDo))
% dienTich = abs(int(int(1, [2*x, x^2]), [hoanhDo(1), hoanhDo(2)]))
% ezplot(y1);
% hold on;
% grid on;
% ezplot(y2);
% axis([hoanhDo(1)-1 hoanhDo(2)+1 tungDo(1)-1 tungDo(2)+1]);

% % c----------------------------------------------------------------------
% syms x
% y1(x) = x - 1;    y2(x) = sqrt(2*x + 6); y3(x) = -sqrt(2*x + 6);
% hoanhDo = [double(solve(y1 == y2, x)) double(solve(y1 == y3, x))]
% tungDo = double(subs(y1, hoanhDo))
% dienTich1 = abs(int(int(1, [y1, y2]), [hoanhDo(1), hoanhDo(2)]))
% dienTich2 = abs(int(int(1, [y1, y3]), [hoanhDo(1), hoanhDo(2)]))
% dienTich = dienTich1 + dienTich2
% ezplot(y1);
% hold on;
% grid on;
% ezplot(y2);
% ezplot(y3);
% axis([min(hoanhDo)-3    max(hoanhDo)+1  min(tungDo)-1   max(tungDo)+1]);

% % d-----------------------------------------------------------------------
% syms x
% y1(x) = x;  y2(x) = x^3;
% hoanhDo = double(solve(y1 == y2, x))
% tungDo = double(subs(y1, hoanhDo))
% dienTich1 = abs(int(int(1, [y1, y2]), [hoanhDo(1) hoanhDo(2)]))
% dienTich2 = abs(int(int(1, [y1, y2]), [hoanhDo(2) hoanhDo(3)]))
% dienTich = dienTich1 + dienTich2
% 
% ezplot(y1);
% hold on;
% grid on;
% ezplot(y2);
% axis([min(hoanhDo)-1    max(hoanhDo)+1  min(tungDo)-1   max(tungDo)+1]);

% % e-----------------------------------------------------------------------
% syms x
% y1(x) = x - 2;  y2(x) = sqrt(x);    y3(x) = -sqrt(x);
% hoanhDo = [double(solve(y1 == y2, x))   double(solve(y1 == y3, x))]
% tungDo = double(subs(y1, hoanhDo))
% dienTich1 = abs(int(int(1, [y1, y2]), [hoanhDo(1) hoanhDo(2)]))
% dienTich2 = abs(int(int(1, [y1, y3]), [hoanhDo(1) hoanhDo(2)]))
% dienTich = dienTich1 + dienTich2
% % 
% ezplot(y1);
% hold on;
% grid on;
% ezplot(y2);
% ezplot(y3);
% axis([min(hoanhDo)-1    max(hoanhDo)+1  min(tungDo)-1   max(tungDo)+1]);

%% bai tap 6---------------------------------------------------------------
% syms x y z
% % a
% u1(x,y,z) = sin(x) + cos(y);
% u2(x,y,z) = x^2 + 3*x - 4;
% u3(x,y,z) = log(x) + y^2 + sqrt(z);
% 
% J = [diff(u1, x)    diff(u1, y)     diff(u1, z);
%      diff(u2, x)    diff(u2, y)     diff(u2, z);
%      diff(u3, x)    diff(u3, y)     diff(u3, z)]

% % b
% syms x y z
% u1(x,y,z) = 5*x^3 - x^2*y^2 + tan(x);
% u2(x,y,z) = exp(x^2 + y^2 + z^2);
% u3(x,y,z) = x^3*y*x^2 - x^2*y - x^3*z;
% u = [u1(x,y,z) u2(x,y,z) u3(x,y,z)];
% Jacobi(u)

% % c
% syms x y z
% c = [cos(x) + sin(x) + tan(x)
%     log(x - y + z)
%     x^3 - y^3 + z^3];
% Jacobi(c)

% % d
% syms x y z
% d = [2*x^2 + 3*y^2 + 2*x*y*z;
%     cos(x*y)*sin(x*z)*tan(y*z);
%     exp(x+y)*log(x*y*z)];
% Jacobi(d)

% % e
% syms x y z
% e = [sqrt(x + log(y*z)),    x/(z^2 + y^3),  y*z/sqrt(x^2 - 1)];
% Jacobi(e)

%% bai tap 7---------------------------------------------------------------
% syms x y z t
% % a
% f(x,y) = sin(x^2 + y^2)/(x^2 + y^2);
% deltaf = diff(f,x,2) + diff(f,y,2)
% pretty(deltaf)

% % b
% f(x,y,z) = exp(-y^2-z^2)*cos(sqrt(1 + x - 7));
% deltaf = diff(f,x,2) + diff(f,y,2) + diff(f,z,2)
% pretty(deltaf)

% % c
% f(x,y,z,t) = log(2*x*y/(x^2 + 2*y^2 + 3*z^2)) 
% + (x*y*z*exp(x*y*z*t) / sqrt(x^2 - y^2 + z^2 - t^2));
% deltaf = diff(f,x,2) + diff(f,y,2) + diff(f,z,2) + diff(f,t,2)
% pretty(deltaf)

%% bai tap 8
% syms x y
% % a
% int(exp(-x^2), [-Inf, Inf])
% 
% % b
% int(int(exp(-x^2-y^2), x, [-Inf, Inf]), y, [-Inf, Inf])

%% bai tap 9
% syms x y z
% a = int(int(int(y, z, [x - y, x + y]), y, [0, x]), x, [0, 3])
% b = int(int(int(exp(x/y), z, [0, x*y]), x, [y, 1]), y, [0, 1])
% c = int(int(int(z/(z^2 + x^2), x, [0, z]), z, [y, 4]), y, [1, 4])

%% bai tap 10
% syms x
% n = 6;
% x0 = 0;
% f(x) = exp(x);
% % % f(x) = cos(x);
% % % f(x) = sin(x);
% % % x0 = 1; f(x) = log(x);
% 
% DaThuc_Taylor(f, n, x0)
% taylor(f, x, x0, 'order', n)

%% bai tap 11
% syms x y
% f(x,y) = x - 3*y^2;
% 
% a = 0; b = 2; c = 1; d = 2;
% m = 10; n = 10; % tu cho
% delta_x = (b - a)/m;    delta_y = (d - c)/n;
% delta_A = delta_x * delta_y;
% 
% S = 0;
% for i = 1:m
%     x_mid = 0.5*(2*a + (2*i - 1)*delta_x);
%     for j = 1:n
%         y_mid = 0.5*(2*c + (2*j - 1)*delta_y);
%         S = S + double(subs(f, [x y], [x_mid y_mid])) * delta_A;
% %         S = S + subs(f, [x, y], [x_mid, y_mid]) * delta_A;
%     end
% end
% S
% % [x y] hoac [x, y] cung duoc.
% % double tinh ra xap xi => tinh toan nhanh hon subs
% % subs tinh ra chinh xac so ( do x y la symbolic) => tinh toan lau
% 
% % kiem tra
% int(int(x-3*y^2, y, [1, 2]), x, [0, 2])