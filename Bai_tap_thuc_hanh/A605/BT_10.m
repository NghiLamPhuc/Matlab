% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 13/11/2020

clc
clear all
close all
format long

%% bai tap 10
syms x
n = 6;
x0 = 0;
% f = @(x) exp(x);
f = @(x) cos(x);
DaThuc_Taylor(f, n, x0)
taylor(f, x, x0, 'order', n)



% syms x
% f = 2*x^2 - 1;
% subs(f,x,2) %subs(f,2)

%% bai tap 11
