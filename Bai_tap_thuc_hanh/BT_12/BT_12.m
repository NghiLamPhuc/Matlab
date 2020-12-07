% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 20/11/2020

clc
clearvars
close all
format long

%% bai tap 2
%a
% x = -2:0.1:2;
% y = x;
% [X, Y] = meshgrid(x, y);
% a = X.^2.*Y.*exp(-X.^2-Y.^2);
% mesh(a)

%b khong biet
% t = 0:0.1:5;
% x = sin(4.*t);
% y = cos(4.*t);
% plot(x, y);

%c
% s = 0:0.1:2*pi;
% t = -1:0.1:1;
% [S, T] = meshgrid(s, t);
% a = 2;
% x = (a + T.*cos(S/2)).*cos(S);
% y = (a + T.*cos(S/2)).*sin(S);
% z = T.*sin(S/2);
% mesh(x,y,z)

%% bai tap 3
% u = linspace(0,1);%0:0.1:1;
% v = linspace(0,2*pi);%0:0.1:pi*2;
% [U, V] = meshgrid(u, v);
% x = (1 - U).*(3 + cos(V)).*cos(5*pi.*U);
% y = (1 - U).*(3 + cos(V)).*sin(5*pi.*U);
% z = 2.*U + (1 - U).*sin(V);
% surf(U, V , x); hold on;
% surf(U, V , y);
% surf(U, V , z);
% 
% a = @(u,v) (1 - u).*(3 + cos(v)).*cos(5*pi.*u);
% b = @(u,v) (1 - u).*(3 + cos(v)).*sin(5*pi.*u);
% c = @(u, v) 2.*u + (1 - u).*sin(v);
% q1 = quad2d(@(U, V) (1 - U).*(3 + cos(V)).*cos(5*pi.*U), 0, 1, 0, 2*pi);
% q2 = quad2d(@(U, V) (1 - U).*(3 + cos(V)).*sin(5*pi.*U), 0, 1, 0, 2*pi);
% q3 = quad2d(@(U, V) 2.*U + (1 - U).*sin(V), 0, 1, 0, 2*pi);
% DT = q1 + q2 + q3
%% bai tap 4
% a
% n = -20:20;
% a = ((-1).^n) .* (n + 1)./n;
% plot(n, a)

% b 
% ezplot(@(n) sin(n)/sqrt(n))
% syms n
% limit(sin(n)/sqrt(n), n, Inf)

%% bai tap 5
% M = [1 2 3; 2 1 5; 4 6 4; 2 3 2];
% num_of_col = size(M, 1);
% for curr_col = 1 : num_of_col - 1
%     for next_col = curr_col : num_of_col
%         if M(curr_col, 2) < M(next_col, 2)
%             M([curr_col, next_col], :) = M([next_col, curr_col], :);
%         end
%     end
%     
% end
% M

%% bai tap 6
% A = randi([0, 100], 1, 100000);
% tic
% A_3a = A(mod(A, 3)==0);
% toc
% 
% tic
% A_3b = [];
% for num = A
%     if mod(num, 3) == 0
%         A_3b(end + 1) = num;
%     end
% end
% toc
% disp(num2str(length(A_3a)));
% disp(num2str(length(A_3b)));

%% bai tap 7
% convert_F_to_C()

%% bai tap 8
% ezplot('y^2 = (x^2)*(x + 3)')
% syms x y
% DT = -x*sqrt(x+3);
% int(int(DT, x, -3, 0), y, -2, 2)














% r=0.5;
% i=0;
% sum_new = 0;
% sum_old = -1;
% while sum_new > sum_old
%     sum_old = sum_new;
%     sum_new = sum_new + r^i;
%     i = i + 1;
% end
% sum_new


% A = [1];
% n = 51;
% r = 0.5;
% for i = 1:n
%     A(end + 1) = A(end) + r^i;
% end
% A











syms u(t)
ode = t*diff(u,t) == t^2 + 3*u %ordinary differential equation
cond = u(2) == 4; %condition
uSol(t) = dsolve(ode, cond) %solve system of differential equations
ezplot(uSol)
hold on
grid on
t_ = 0:4;
plot(t_, ones(size(t_)) * 10)















