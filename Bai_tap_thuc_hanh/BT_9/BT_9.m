% Ho va ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: quen roi

clc
clear all
close all
format long

%% Bai tap 1---------------------------------------------------------------
% A = [2 4 5/2;
%     -3/4 2 1/4;
%     1/4 1/2 2];
% 
% B = [1 -1/2 3/4;
%     3/2 1/2 -2;
%     1/4 1 1/2];

% % a
% rats(A^(-1)*B^(-1))
% rats((A*B)^(-1))
% rats((B*A)^(-1))

% % b
% rats(A')
% rats(A^(-1))
% 
% rats(A^(-1)')
% rats(A'^(-1))

%% Bai tap 2---------------------------------------------------------------
% % 2.1
% A = [1 -2 3 9;
%     -1 3 0 -4;
%     2 -5 5 17];
% A = rref(A);
% A = A(:,end);
% fprintf('He phuong trinh co nghiem [x; y; z] = %s\n', mat2str(A))

% % 2.2
% A = [3 3 4;
%     1 1 3;
%     2 -5 4];
% B = [2; -2; 3];
% 
% X = A\B
% 
% XR = rref([A B]);
% XR(:, end)

%% Bai tap 3---------------------------------------------------------------
% % a
% syms x
% x_ = linspace(-1,1);
% f(x) = x*sin(x);
% g(x) = x*cos(x);
% plot(x_, f(x_));
% grid on;
% hold on;
% plot(x_, g(x_));
% hoanhDoGiaoDiem = solve(f == g, x)
% tungDoGiaoDiem = subs(f, hoanhDoGiaoDiem)
% plot(hoanhDoGiaoDiem, tungDoGiaoDiem, 'or')

% % b
% syms t
% 
% t_ = -20:20;
% x(t) = 5*(cos(t) + t*sin(t));
% y(t) = 5*(sin(t) - t*cos(t));
% plot(t_, x(t_), t_, y(t_));
% grid on;
% hold on;
% axis equal;
% y2(t) = t;
% 
% plot(t_, y2(t_));
% 
% hoanhDoGiaoDiem1 = solve(x == y2, t)
% hoanhDoGiaoDiem2 = solve(y == y2, t)
% plot(hoanhDoGiaoDiem1, hoanhDoGiaoDiem1, 'or');
% plot(hoanhDoGiaoDiem2, hoanhDoGiaoDiem2, 'or');

%% Bai tap 4---------------------------------------------------------------
% A = [1 3]; B = [-3 5]; C = [2 -4]; D = [-1 -3]; O = [0 0];
% % a
% plot(A(1), A(2), 'or');
% text(A(1), A(2), 'A' , 'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
% hold on
% grid on
% axis([-4 3 -5 6]);
% plot(B(1), B(2), 's', 'color', 'blue');
% text(B(1), B(2), 'B','HorizontalAlignment', 'right', 'VerticalAlignment', 'top');
% plot(C(1), C(2), '<', 'color', [147/255, 112/255, 219/255]);
% text(C(1), C(2), 'C', 'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
% plot(D(1), D(2), '>y');
% text(D(1), D(2), 'D', 'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
% plot(O(1), O(2), 'dk');
% text(O(1), O(2), 'O', 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom');

% % b
% plot([A(1) B(1)], [A(2) B(2)], 'lineWidth', 2);
% line([O(1) C(1)], [O(2) C(2)], 'lineWidth', 2);
% line([D(1) B(1)], [D(2) B(2)], 'lineWidth', 2);
% plot([C(1) B(1)], [C(2) B(2)], 'lineWidth', 2);
% line([O(1) A(1)], [O(2) A(2)], 'lineWidth', 2);

% % c
% plot([A(1) B(1) C(1) A(1)], [A(2) B(2) C(2) A(2)]);
% plot([A(1) B(1) D(1) A(1)], [A(2) B(2) D(2) A(2)]);
% plot([A(1) C(1) D(1) A(1)], [A(2) C(2) D(2) A(2)]);
% plot([A(1) B(1) C(1) D(1) A(1)], [A(2) B(1) C(2) D(2) A(2)]);
% plot([A(1) O(1) C(1) D(1) A(1)], [A(2) O(1) C(2) D(2) A(2)]);

%% Bai tap 5 --------------------------------------------------------------
% A = [4 -2; 3 -5];
% b = [10; 11];
% X = zeros(2,1);
% A1 = A;
% A1(:,[1]) = b;
% x(1) = det(A1)/det(A);
% A2 = A;
% A2(:,[2]) = b;
% x(2) = det(A2)/det(A);
% x

% A = [3 3 4;
%     1 1 4;
%     2 -5 4];
% b = [2; -2; 3];
% n = numel(b);
% X = zeros(1, n);
% for i=1:n
%     Ai = A;
%     Ai(:, i) = b;
%     X(i) = det(Ai)/det(A);
% end
% X
% % kiem tra
% % A\b

%% Bai tap 6 --------------------------------------------------------------
% A = [1 2 3 4;
%     2 5 4 7;
%     3 7 8 12;
%     4 8 14 19];
% SC = [A eye(size(A))]
% SC = rref(SC)
% A_1 = SC(:, [size(A, 2) + 1 : end])

%% Bai tap 7 --------------------------------------------------------------
% A = randn(5)
% % a
% while det(A)==0
%     A = randn(5);
% end

% % b lam bieng lammmmmmmmmmmmmmmmmmmmmmm, su dung lai bai tap 6
% SC = [A eye(size(A))];
% SC = rref(SC);
% A_1 = SC(:, [size(A, 2) + 1 : end])

% % c
% inv(A)

%% Bai tap 8---------------------------------------------------------------
% % a
% A = [1 3 3 -2;
%     2 -1 -2 -3;
%     3 2 -1 2;
%     2 -3 2 1];
% b = [6; 4; 4; -8];

% % b
% A = [1 3 5 -4 0;
%     1 3 2 -2 1;
%     1 -2 1 -1 -1;
%     1 -4 1 1 -1;
%     1 2 1 -1 1];
% b = [1; -1; 3; 3; -1];
% 
% n = numel(b);
% X = zeros(1, n);
% for i = 1:n
%    Ai = A;
%    Ai(:, i) = b;
%    X(i) = det(Ai)/det(A);
% end
% X
% % kiem tra
% A\b

%% bai tap 9 --------------------------------------------------------------
% % a
% r = linspace(0, 4);
% theta = linspace(0, 2*pi);
% [R, Theta] = meshgrid(r, theta);
% mesh(R.*cos(Theta), R.*sin(Theta), R.^2 + 1);

% % b
% v = linspace(-1, 1);
% u = linspace(0, 2*pi);
% [U, V] = meshgrid(u, v);
% surf(sqrt(1 + 4.*V.^2)*cos(U), V, sqrt(1 + 4.*V.^2)*sin(U))

% % c
% y = linspace(0, 4*pi);
% t = linspace(0, 2*pi);
% [Y, T] = meshgrid(y, t);
% mesh((2 + sin(Y)) .* cos(T), Y, (2 + sin(Y)) .* sin(T));

% % d
% u = linspace(0, 2*pi);
% v = linspace(0, 4*pi);
% [U, V] = meshgrid(u, v);
% mesh(cos(U)/4 + cos(V), sin(U)/4 + sin(V), V);

% % e
% u = linspace(0, 4*pi);
% v = linspace(0, 2*pi);
% [U, V] = meshgrid(u, v);
% mesh(cos(U), sin(U), U + V/4);

% % f
% u = linspace(0, 2*pi);
% v = linspace(0, 4*pi);
% [U, V] = meshgrid(u, v);
% mesh(U.*cos(V), U.*sin(V), U.*V);

%% bai tap 10 -------------------------------------------------------------
% A = randn(sqrt(10000));
% size(A)
% 
% % a
% while det(A) == 0
%     A = randn(sqrt(10000));
% end
% 
% % b luoi lammmmmmmmmmmmmmmmmmmm
% SoCap = [A eye(size(A))];
% SoCap = rref(SoCap);
% A_1 = SoCap(:, [size(A, 2) + 1: end])
% 
% % c
% inv(A)

%% Bai tap 11 -------------------------------------------------------------
% A = [1 3 3 -2;
%     2 -1 -2 -3;
%     3 2 -1 2;
%     2 -3 2 1];
% b = [6; 4; 4; -8];
% He_PT(A, b)