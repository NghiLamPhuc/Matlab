% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 28/10/2020

clearvars
close all
clc
format long

%% bai tap 1 41
% x = [2 5 1 6];
% x = x + 16
% x(1:2:end) = x(1:2:end) + 3
% x = x.^0.5
% x = x.^2

%% bai tap 2 41
% x = [3 2 6 8]';
% y = [4 1 3 5]';
% y = y + sum(x)
% x = x.^y
% y = y./x
% z = x.*y
% w = sum(z)
% x.*y - w
% sum(x.*y)

%% bai tap 3 41
% x = [1 4 8]; y = [2 1 5];
% A = [3 1 6; 5 2 7];
% x + y
% x + A
% x' + y
% A - [x' y']
% A - 3

%% bai tap 4 41
% A = [2 7 9 7; 3 1 5 6; 8 1 2 5];
% A'
% sum(A)
% sum(A')
% sum(A,2)
% [[A;sum(A)][sum(A,2);sum(A(:))]]

%% bai tap 5 42
% rng(42); % random number generator
% A = round(-10 + (10 + 10)*rand(4, 4))% A = randi([-10 10], 4,4)
% A = A + 15
% A = A.^2
% A([1 2], :) = A([1 2], :) + 10
% A(:, [1 4]) = A(:, [1 4]) + 10
% A.^(-1)
% sqrt(A) %A.^0.5

%% bai tap trang 43
% A = [2 4 1; 6 7 2; 3 5 9];
% x = A(1,:)
% y = A(end-1:end, :)
% sum(A,2)
% sum(A)
% min(A(:))
% max(A(:))
% sum(A(:))

