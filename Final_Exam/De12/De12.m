clc
clearvars
close all
format long

%% Cau 1
% % a
% n = input('Nhap n=');
% fprintf('u_%d = %d\n\n', n, dayso(n));
% % b
% S = 0;
% for n=1:5
%     u_n = dayso(n);
%     if u_n < 0
%         disp(num2str(u_n));
%         S = S + u_n;
%     end
% end
% S

%% Cau 2
% % 1
% n = 5;
% % n = input('Nhap n>3, n = ');
% if n<3
%     n = input('Nhap lai');
% else
%     A = zeros(n);
%     for i=1:n
%         for j=1:n
%             A(i,j) = (2*i+1)/(3*j+2);
%         end
%     end
%     A
% end
% 
% % 2
% B = A;
% B(n - 2, :) = [];
% B(:, n - 1) = [];
% B

%% Cau 3
% % a
% S = 0;
% xRange = linspace(0, 4, 101); 
% for k = 1:numel(xRange)-1
%     A = xRange(k + 1) - xRange(k);
%     B = exp(-xRange(k)) * sin(3*xRange(k));
%     C = exp(-xRange(k + 1)) * sin(3*xRange(k + 1));
%     S = S + 0.5 * A * (B + C);
% end
% S
% 
% % b
% syms x
% y(x) = exp(-x)*sin(3*x);
% % % kiem tra ket qua tich phan o tren
% % fprintf('%.20f\n', double(int(y, [0 4])));
% plot(xRange, y(xRange));
% grid on
% hold on
% nguyenham(x) = int(y);
% plot(xRange, nguyenham(xRange));
% xlabel('x')
% ylabel('y')
% legend('y = e^{-x}sin(3x)', 'nguyen ham cua y');% nguyen ham???
% title('Cau 3');

%% Cau 4
% syms y(x)
% % a
% eqn = (x^2 + 1)*diff(y,x) + 3*x*(y - 1) == 0;
% cond = y(0) == 2;
% nghiem(x) = dsolve(eqn, cond) %nghiem(x) ha`m nghiem theo x
% % pretty(nghiem(x)) % hien thi cho dep
% % b
% x_ = linspace(-1,1);
% plot(x_, nghiem(x_));
% grid on;
% axis([-1.5 1.5 1 2.5]);
% % c
% xGiaoDiem = solve(nghiem == 2, x)
% fprintf('Toa do giao diem (x;y) = (%d;%d)\n', double(xGiaoDiem), 2)
% hold on;
% plot(x_, ones(size(x_)) * 2);
% plot(xGiaoDiem, 2, 'or');

%% Cau 5
% % format long
% format short
% a = 1.3;
% b = 8.7;
% N = 100;
% dx = (b - a)/N;
% A = 0;
% for x = linspace(a,b,101)
%     y = x^2 - sin(x);
%     A = A + y*dx;
% end
% A
% 
% % De sai chang???
% % A = sigma i=1..101 moi co ket qua voi deltax = (b - a)/100
% % A = sigma i=1..(N + 1)