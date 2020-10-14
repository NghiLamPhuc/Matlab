%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 25/09/2020
clc
clear all
close all
format long

% % ########################################## BT 5
%% Bai tap 1
a = input('a = ');
b = input('b = ');
c = input('c = ');
fprintf('Dien tich = %f\n', DT_TamGiac_Vuong(a,b,c));

%% Bai tap 2
% x = input('x = ');
% fprintf('f(x) = %f\n', HamSo_f(x));
% fprintf('g(x) = %f\n', HamSo_g(x));
% fprintf('h(x) = %f\n', HamSo_h(x));

%% Bai tap 3
% a = input('a = ');
% b = input('b = ');
% Giai_PT_Bac_1(a,b);

%% Bai tap 4
% a = input('a = ');
% b = input('b = ');
% c = input('c = ');
% Giai_PT_Bac_2(a,b,c);

%% bai tap 5
% n = input('n = ');
% fprintf('%d! = %d\n', n, Giai_thua(n));

%% bai tap 6
% n = input('n = ');
% k = input('k = ');
% fprintf('To hop chap %d cua %d phan tu la: %d\n', k, n, To_hop(n, k));

%% bai tap 7
% v = input('Vector: ');
% n = input('Chuan (1,2,0): ');
% fprintf('Chuan %d = %f\n', n, TinhChuan_Vector(v, n));

%% bai tap 8
% a = input('a = ');
% ep = input('epsilon = ');
% fprintf('Can bac hai cua %d = %f\n', a, Can_bac_hai(a, ep));

%% bai tap 9
% tinhXapXiTichPhan(0, 1, 10, 1)
% tinhXapXiTichPhan(0, pi, 10, 2)

% f_a = @(x) x^2;
% f_b = @(x) sin(x);
% xapXiTichPhan(0, 1, 10, f_a)
% xapXiTichPhan(0, pi, 10, f_b)