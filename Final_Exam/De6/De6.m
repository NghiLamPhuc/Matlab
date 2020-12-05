clc
format long
clearvars
close all

%% Cau 1.
% % a
% n = input('n = ');
% fprintf('u_n = %d\n', dayso(n));

% % b
% S = 0;
% for n=2:5
%     u_n = dayso(n);
%     if mod(u_n, 2) == 0
%         disp(num2str(u_n));
%         S = S + u_n;
%     end
% end
% S

%% Cau 2.
% f = @(x) 2*x^3 + 3*x^2 - 12*x + 1;
% X = [-39 71; 72 55];
% % X = input('X = :');
% fX = f(X)
% positiveArr = [];
% for i=1:numel(X)
%     if X(i) > 0
%         positiveArr(end + 1) = X(i);
%     end
% end
% positiveArr

%% Cau 3.
% syms f(x)
% % a
% disp('##### Cau a #####');
% f = 3*exp(-3*x) - x;
% nghiem = solve(f, x)
% double(nghiem)
% % b
% disp('##### Cau b #####');
% x_n = 1;
% n = 0;
% while abs(subs(f, x_n)) >= 10^(-8)
%     n = n + 1;
%     x_n = x_n - subs(f, x_n)/subs(diff(f, x), x_n);
% %     fprintf('x_%d = %.9f\t', n, double(x_n));
% %     fprintf('f(x) = %.9f\n', double(abs(subs(f, x_n))));
% end
% fprintf('\nVay voi x_n ben duoi thi f(x) = 0\n')
% x_n
% double(x_n)
% fprintf('f(x) = %.15f\n', double(abs(subs(f, x_n))));

%% Cau 4.
% syms y(t)
% eqn = diff(y, 2) + diff(y) == y + 2
% cond1 = y(0) == 3;
% cond2 = subs(diff(y), t, 0) == 0;
% % a
% tSol(t) = dsolve(eqn, cond1, cond2)
% % pretty(tSol)
% 
% % b
% t_ = linspace(0, 0.2); % linspace: 100 so [0; 0,2]
% plot(t_, tSol(t_));
% grid on;
% 
% % c
% nghiem = solve(tSol == 3.01, t)
% hold on
% plot(t_, ones(size(t_)) * 3.01);
% plot(nghiem, 3.01, 'or');

%% Cau 5.
% % format short
% column = 1;
% for goc=0:pi/10:2*pi
%     D(1, column) = goc * 180 / pi;
%     S(1, column) = cos(goc);
%     column = column + 1;
% end
% D
% S