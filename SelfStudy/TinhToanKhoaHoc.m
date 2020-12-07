clc
clear all
close all
format long

% syms x
% y = x^2 + 2*x + 3;
% diff(y,x)
% diff(y,x,2)
% limit(y,x,0)
% int(y, 1, 3)
% r = solve(y == 0)
% r = solve('x^2 + 2*x + 3')
% r = roots([1 2 3])
%% bien phuc
% x = sym('x', 'real');
% y = sym('y', 'real');
% % syms x y real
% z = x + i*y

%% 
% syms a b n t x z
% s = x^n; g = sin(a*t + b);
% findsym(s)
% findsym(g, 1)

%%
% syms s t
% f = sin(s*t)
% diff(f,t)
% diff(f,s)
% diff(f,t,2)
% findsym(f,1)

%%
% syms a x
% A = [cos(a*x) sin(a*x); -sin(a*x) cos(a*x)]
% diff(A)

%% 