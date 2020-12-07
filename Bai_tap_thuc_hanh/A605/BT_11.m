% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 13/11/2020

clc
clear all
close all
format long

%% bai tap 1. bo a,d
% syms n
% S = ((n + 1)/(3*n-1));
% for i=0:5
%     subs(S,i)
% end
% limit(S, n, inf)

% syms n
% S = cos(n*pi/6);
% for i=0:5
%     subs(S,i)
% end
% limit(S, n, inf)

%% bai tap 2
% syms x
% fa = x^6 + x^4 - 3*x^3 - 16*x;
% d1 = diff(fa); subs(d1,2)
% d2 = diff(fa,2); 
% subs(d2,2)
% fb = sqrt(x) + x^(1/3) + x^(3/2);
% diff(fb)
% diff(fb,2)
% fc = 2*x - 5*x^(3/4);
% diff(fc)
% diff(fc,2)
% fd = sin(x) + log(x) + 1/(x^2);
% diff(fd)
% diff(fd,2)

%% bai tap 3
% syms x
% h = 0.2;
% h=0.1;
% h=0.01;
% n = 1;
% x0 = 2;
% f = @(x) x^6 + x^4 - 3*x^3 - 16*x;
% Xapxi_daoham(f, n, x0, h)

%% bai tap 4
% syms x
% fa = @(x) log(abs(x - 2));
% if limit(fa, x, 0) == subs(fa,0)
%     disp('lien tuc')
% else
%     disp('khong lien tuc');
% end
% x = -2:2;
% plot(x, log(abs(x - 2)))

% syms x
% fb = @(x) piecewise(exp(x), x<0, x^2, x>=0);
% limit(fb, x, 0, 'left')
% limit(fb, x, 0, 'right')
% fplot(fb, [-2,2])
% if (limit(@(x) exp(x), x, 0) == limit(@(x) x^2, x, 0))
%     disp('Lien tuc');
% else
%     disp('Khong lien tuc');
% end

% syms x
% % fc = @(x) piecewise([x ~= 1, (x^2-x)/(x^2-1)], [x == 1, 1]);
% if (limit(@(x) (x^2-x)/(x^2-1), x, 1) == limit(@(x) 1, x, 1))
%     disp('Lien tuc');
% else
%     disp('Khong lien tuc');
% end

% c
% syms x
% limit((x^2-x)/(x^2-1),x,1)

% fd = @(x) piecewise([x <= 0, cos(pi*x)], [x == 0, 0], [x > 0, 1 - x^2]);
% if (limit(@(x) cos(pi*x), x, 0) == limit(@(x) 1 - x^2, x, 0))...
%         && (limit(@(x) cos(pi*x), x, 0) == 0)
%     disp('lien tuc');
% else
%     disp('khong lien tuc');
% end
% limit(@(x) cos(pi*x), x, 0)
% limit(@(x) 1 - x^2, x, 0)

%% bai tap 5 x=-2:0.01:2
% x = -2:0.01:2;
% plot(x, 1./(1+exp(1./x)))

% x = -2:0.01:2;
% plot(x, log(tan(x).^2))

%% bai tap 6
% syms x h
% limit(((x+h)*sin(1/(x+h)) - x*sin(1/x)) / h, h, 0)
% limit( ((x+h)^2 * sin(1/(x+h)) - x^2*sin(1/x)) / h, h, 0)

%% bai tap 7

%% bai tap 8
% syms x t
% x=-2:0.01:2;
% y = 2.*x.^3 + 3*x.^2 - 12.*x + 1;
% plot(x, y)
% 
% y1 = 2.*t.^3 + 3*t.^2 - 12.*t + 1;
% dy = diff(y1,t);
% giaodiem = solve(dy == 0)
% 
% hold on
% tt = giaodiem(2)
% % plot tt

%% bai tap 9
% syms n
% r = -1;
% r = 0;
% r = 1;
% r = 2;

% if limit(symsum(n*r^n, n, 1)) == Inf
%     disp('Phan ky')
% else
%     limit(symsum(n*r^n, n, 1))
%     disp('Hoi tu')
% end
% 
% if limit(symsum(1/n^r, n, 1)) == Inf
%     disp('Phan ky')
% else
%     limit(symsum(1/n^r, n, 1))
%     disp('Hoi tu')
% end

%% bai tap 10
% syms x
% int(exp(x), 0, pi)
% int(sin(x)/x, 0, 1)
