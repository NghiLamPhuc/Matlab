clc
clearvars
close all
format long

%% Cau 1.
% % a
% S = 0;
% k = 0;
% while S<99
%     k = k + 1;
%     S = S + k^2/(k^2 + 1);
% end
% S
% k
% % % % kiemtra
% % S = 0;
% % for k=1:101
% %     S = S + k^2/(k^2+1);
% % end
% % S
% 
% % b
% tong(k)

%% Cau 2.
% f = @(x) 10*x^3 - 5*x^2 - 4*x - sin(x)^4 - 2*cos(pi + x)^3;
% % X = input('X = ');
% X = [51 40; 32 39];
% fX = f(X)
% maxfX = fX(1);
% for fx=fX
%     if maxfX < fx
%         maxfX = fx;
%     end
% end
% maxfX

%% Cau 3.
% syms f(x)
% f = cos(2*x) - 4*x
% % a
% xSol = solve(f == 0, x)
% % b
% disp('####### Cau b ######');
% x_n = 1;
% n = 0;
% while abs(subs(f, x, x_n)) >= 10^(-10)
%     n = n + 1;
%     x_n = x_n - subs(f, x, x_n)/subs(diff(f, x), x, x_n);
% %     fprintf('x_%d = %.15f\t', n, double(x_n));
% %     fprintf('f(x) = %.20f\n', double(abs(subs(f, x, x_n))));
% end
% fprintf('\nVay voi x_n ben duoi thi f(x) = 0\n');
% x_n
% double(x_n)
%% Cau 4.
% syms y(t)
% eqn = diff(y, t) - 2*y/t == t^2*exp(t)
% cond = y(1) == 0;
% % a
% tSol(t) = dsolve(eqn, cond)
% % b
% t_ = linspace(0,3);
% plot(t_, tSol(t_));% ezplot(tSol)
% grid on;
% xlabel('t');
% ylabel('y');
% % c
% nghiem = solve(tSol == 0.25, t)
% hold on;
% plot(t_, ones(size(t_)) * 0.25);
% plot(nghiem, 0.25, 'or');
%% Cau 5.
% n = 10000;
% dem = zeros(1, 6);
% for i=1:n
%     x = randi(6);
%     dem(x) = dem(x) + 1;
% end
% dem
% sum(dem)
