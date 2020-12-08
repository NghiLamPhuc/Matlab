% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 13/11/2020

clc
clear all
close all
format long

%% bai tap 1. bo a,d ------------------------------------------------------
% % https://www.mathworks.com/help/symbolic/symbolic-summation.html
% syms n
% b = (n + 1)/(3*n-1);
% X = subs(b, n, 1:5)
% limit(b, n, inf)

% c = cos((n*pi)/6);
% X = subs(c, n, 1:5);
% pretty(X)
% limit(c, n, inf)
% https://www.symbolab.com/solver/limit-calculator/%5Clim_%7Bx%5Cto%5Cinfty%7D%5Cleft(cos%5Cleft(%5Cfrac%7B%5Cpi%20x%7D%7B6%7D%5Cright)%5Cright)

%% bai tap 2---------------------------------------------------------------
% syms x
% fa = x^6 + x^4 - 3*x^3 - 16*x;
% d1 = diff(fa); pretty(d1)
% d2 = diff(fa,2); pretty(d2)
% subs(d1, 2)
% subs(d2,2)
% disp('-----')
% fb = sqrt(x) + x^(1/3) + x^(3/2);
% d1 = diff(fb); pretty(d1)
% d2 = diff(fb,2); pretty(d2)
% double(subs(d1, 2))
% double(subs(d2, 2))
% disp('-----')
% fc = 2*x - 5*x^(3/4);
% d1 = diff(fc); pretty(d1)
% d2 = diff(fc,2); pretty(d2)
% double(subs(d1, 2))
% double(subs(d2, 2))
% disp('-----')
% fd = sin(x) + log(x) + 1/(x^2);
% d1 = diff(fd); pretty(d1)
% d2 = diff(fd,2); pretty(d2)
% double(subs(d1, 2))
% double(subs(d2, 2))

%% bai tap 3 1-------------------------------------------------------------
% syms x
% hArr = [0.2 0.1 0.01];
% nArr = [1 2];
% x0 = 2;
% f = @(x) x^6 + x^4 - 3*x^3 - 16*x;
% % f = @(x) sqrt(x) + x^(1/3) + x^(3/2);
% % f = @(x) 2*x - 5*x^(3/4);
% % f = @(x) sin(x) + log(x) + 1/(x^2);
% for h=hArr
%     disp(['h = ' num2str(h)])
%     for n=nArr
%         fprintf('Dao ham bac %d = ', n);
%         disp(num2str(Xapxi_daoham(f, n, x0, h)));
%     end
% end

%% bai tap 3 2-------------------------------------------------------------
% syms x
% hArr = [0.2 0.1 0.01];
% nArr = [1 2];
% x0 = 2;
% f(x) = x^6 + x^4 - 3*x^3 - 16*x;
% % f(x) = sqrt(x) + x^(1/3) + x^(3/2);
% % f(x) = 2*x - 5*x^(3/4);
% % f(x) = sin(x) + log(x) + 1/(x^2);
% for h=hArr
%     disp(['h = ' num2str(h)])
%     for n=nArr
%         fprintf('Dao ham bac %d = ', n);
%         disp(num2str(Xapxi_daoham_2(f, n, x0, h)));
%     end
% end

%% bai tap 4---------------------------------------------------------------
syms x
% % a------------------------------------------------------------------------
% a(x) = log(abs(x - 2))
% l = limit(a, x, 2, 'left');
% r = limit(a, x, 2, 'right');
% if l==r
%     disp('Lien tuc');
% else
%     disp('Khong lien tuc');
% end
% x_ = linspace(-1.5,2.5);
% plot(x_, a(x_));

% b------------------------------------------------------------------------
% lf1 = limit(exp(x), x, 0, 'left')
% lf2 = limit(x^2, x, 0, 'right')
% f1(x) = exp(x); f2(x) = x^2;
% x1_ = linspace(-2, 0);
% x2_ = linspace(0, 2);
% plot(x1_, f1(x1_));
% hold on
% plot(x2_, f2(x2_));

% % c------------------------------------------------------------------------
% c(x) = (x^2 - x)/(x^2 - 1);
% limc = limit(c, x, 1)
% if limc==1
%     disp('Lien tuc');
% else
%     disp('Khong lien tuc');
% end
% ezplot(c)

%% bai tap 5 x=-2:0.01:2---------------------------------------------------
% x = -2:0.01:2;
% plot(x, 1./(1+exp(1./x)))

% x = -2:0.01:2;
% plot(x, log(tan(x).^2))

%% bai tap 6
syms x h
limit(((x+h)*sin(1/(x+h)) - x*sin(1/x)) / h, h, 0)
limit( ((x+h)^2 * sin(1/(x+h)) - x^2*sin(1/x)) / h, h, 0)

%% bai tap 7

%% bai tap 8
% syms x
% x=-5:0.01:5;
% y = sym('2*x^3 + 3*x^2 - 12*x + 1');
% ezplot(y)
% grid on
% hold on
% axis([-5 5 -30 30])
% 
% y1 = diff(y);
% xGiaoDiem = solve(y1 == 0);
% soGiaoDiem = length(xGiaoDiem);
% % danhSachGiaoDiem = {};
% for i=1:soGiaoDiem
% %     danhSachGiaoDiem{i} = [xGiaoDiem(i) subs(y, xGiaoDiem(i))];
%     x0 = xGiaoDiem(i);
%     y0 = subs(y, x0)
%     tt = 
%     ezplot('y = y0');
% end

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
