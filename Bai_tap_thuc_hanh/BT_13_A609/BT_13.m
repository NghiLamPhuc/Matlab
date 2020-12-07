% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 27/11/2020

clc
clearvars
close all
format long

%% Bai tap 2
% rng(42);
% n = input('Nhap kich thuoc: ');
% A = randi([0, 100], 1, n)
% A(A == 2) = []
% A(mod(A, 3)==0 & mod(A, 2)==0) = []
% A(isprime(A)) = []

%% Bai tap 3
% f1()
% f2()
% f3()

%% Bai tap 4
% a=1;b=5;
% a=5;b=1;
% a=1;b=1;
% Taovector(a,b)

%% Bai tap 5
% spacing = 0.2;
% [X,Y] = meshgrid(-2:spacing:2);
% Z = X.^2.*Y - Y.^3;
% [DX, DY] = gradient(Z, spacing);
% quiver(X,Y,DX,DY)
% hold on
% contour(X,Y,Z)
% axis equal

% spacing = 0.2;
% [X,Y] = meshgrid(-2:spacing:2);
% Z = Y.^2.*X - X.^3;
% [DX, DY] = gradient(Z, spacing);
% quiver(X,Y,DX,DY)
% hold on
% contour(X,Y,Z)
% axis equal

% spacing = 0.2;
% [X,Y] = meshgrid(-2:spacing:2);
% Z = 1.^2.*sin(Y) - sin(Y).^3;
% [DX, DY] = gradient(Z, spacing);
% quiver(X,Y,DX,DY)
% hold on
% contour(X,Y,Z)
% axis equal

% spacing = 0.2;
% [X,Y] = meshgrid(-2:spacing:2);
% Z = (X-2).^2.*(X+1) - (X+1).^3;
% [DX, DY] = gradient(Z, spacing);
% quiver(X,Y,DX,DY)
% hold on
% contour(X,Y,Z)
% axis equal

% spacing = 0.2;
% [X,Y] = meshgrid(-2:spacing:2);
% Z = Y.^2.*(1./X) - (1./X).^3;
% [DX, DY] = gradient(Z, spacing)
% quiver(X,Y,DX,DY)
% hold on
% contour(X,Y,Z)
% axis equal

% spacing = 0.2;
% [X,Y] = meshgrid(-2:spacing:2);
% Z = log(1+Y.^2).^2.*log(1+X.^2) - log(1+X.^2).^3;
% [DX, DY] = gradient(Z, spacing);
% quiver(X,Y,DX,DY)
% hold on
% contour(X,Y,Z)
% axis equal

%% Bai tap 6
% theta = -2*pi:2*pi;
% polar(theta, cos(2.*theta))
% polar(theta, 2*cos(theta))
% polar(theta, 1 + cos(theta))
% polar(theta, sin(2.*theta).*cos(2.*theta))

%% Bai tap 7

%% Bai tap 8
% t = linspace(0,2*pi);
% x = 4*cos(t);
% y = 9*sin(t);
% 
% subplot(2, 2, 1);
% plot(x,y,'--r');
% axis tight
% legend('ellipse axis tight')
% 
% subplot(2, 2, 2);
% plot(x,y,'-.g');
% axis square
% legend('ellipse axis square')
% 
% subplot(2, 2, 3);
% plot(x,y,'-^b');
% axis normal
% legend('ellipse axis normal')
% 
% subplot(2, 2, 4);
% plot(x,y,'-vk');
% axis equal
% legend('ellipse axis equal')
% 
% suptitle('Bai tap 8')

%% Bai tap 9
% syms x
% f = @(x) (x^2 - y^2)/(x^2 + y^2); 
% Limit()