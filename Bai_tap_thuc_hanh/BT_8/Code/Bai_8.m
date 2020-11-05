%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 16/10/2020
clc
% clear all
clearvars
close all
format long

% % ########################################## BT 8
%% Bai tap 1
% A = [5 2 1; 8 7 3; 9 8 6];
% bar(A)

%% Bai tap 2
% values = [850 720 600 320];
% names = {'coca', 'pepsi', 'tinh khiet', 'khac'};
% pie(values);
% legend(names);

%% Bai tap 3
% %---------------------------------------------------------------- a
% x = -4:4; y = x;
% [X, Y] = meshgrid(x, y);
% a = X.^2.*Y*exp(-(X.^2)-(Y.^2));
% 
% graphArr = {'plot3'; 'mesh'; 'meshc';...
%             'surf'; 'surfc'};
% numOfGraphs = length(graphArr);
% d = 100;
% for i = 1:numOfGraphs
%     f = figure('Name', char(graphArr(i)));
%     funcExecute = str2func(char(graphArr(i)));
%     funcExecute(X, Y, a);
%     xlabel('x');
%     ylabel('y');
%     title(char(graphArr(i)));
%     legend('{x^2}y{e^{-{x^2}-{y^2}}}');
%     movegui(f, [i*d, i + d]);
% end
% %---------------------------------------------------------------- b
% x = -2:0.01:2; y = x;
% [X, Y] = meshgrid(x, y);
% b = 0.5*abs(X) + 0.5*abs(Y);
% 
% graphArr = {'plot3'; 'mesh'; 'meshc';...
%             'surf'; 'surfc'};
% numOfGraphs = length(graphArr);
% d = 100;
% for i = 1:numOfGraphs
%     f = figure('Name', char(graphArr(i)));
%     funcExecute = str2func(char(graphArr(i)));
%     funcExecute(X, Y, b);
%     xlabel('x');
%     ylabel('y');
%     title(char(graphArr(i)));
%     legend('0.5|x| + 0.5|y|');
%     movegui(f, [i*d, i + d]);
% end
%---------------------------------------------------------------- c
% x = -10:0.01:10; y = x;
% [X, Y] = meshgrid(x, y);
% c = sin(sqrt(X.^2 + Y.^2))./sqrt(X.^2 + Y.^2);
% 
% graphArr = {'plot3'; 'mesh'; 'meshc';...
%             'surf'; 'surfc'};
% numOfGraphs = length(graphArr);
% d = 100;
% for i = 1:numOfGraphs
%     f = figure('Name', char(graphArr(i)));
%     funcExecute = str2func(char(graphArr(i)));
%     funcExecute(X, Y, c);
%     xlabel('x');
%     ylabel('y');
%     title(char(graphArr(i)));
%     legend('R = \surd({x^2}+{y^2}), z=sinR/R');
%     movegui(f, [i*d, i + d]);
% end

%% Bai tap 4
% t = 0:0.01:2*pi;
% x = 5.*cos(t);
% y = 5.*sin(t);
% plot(x, y);
% grid on;
% axis equal;

%% Bai tap 5
% t = 0:0.01:6*pi;
% x = sin(t);
% y = cos(t);
% z = t;
% 
% plot3(x, y, z);

%% Bai tap 6
% u = 0:0.01:2*pi;
% v = -pi/2:0.01:pi/2;
% [U,V] = meshgrid(u, v);
% x = cos(V).*cos(U);
% y = cos(V).*sin(U);
% z = sin(V);
% 
% mesh(x,y,z);
% colormap(jet);
% colorbar;

%% Bai tap 7
% t = 0:0.01:2*pi;
% x = (4 + 3.*cos(11.*t)).*cos(t);
% y = (4 + 3.*cos(11.*t)).*sin(t);
% f = plot(x, y);
% set(f, 'color', 'blue');
% axis equal;

%% Bai tap 8
% t = 0:0.01:6*pi;
% x = sqrt(t).*sin(2.*t);
% y = sqrt(t).*cos(2.*t);
% z = 0.5.*t;
% plot3(x,y,z, 'color', 'blue');

%% Bai tap 9
% u = 0:0.01:2*pi;
% v = -5:0.01:5;
% [U,V] = meshgrid(u, v);
% x = cos(U);
% y = sin(U);
% z = V;
% mesh(x,y,z);
% colormap(jet);
% colorbar;

%% Bai tap 10
% u = 0:0.1:2*pi;
% v = u;
% [U,V] = meshgrid(u, v);
% x = (1 + 0.5*cos(V))*cos(U);
% y = (1 + 0.5*cos(V))*sin(U);
% z = 0.5*sin(V);
% mesh(x,y,z);
% colormap(jet);
% colorbar;

%% Bai tap 11
% u = 0:0.1:2*pi;
% v = -2:0.1:2;
% [U,V] = meshgrid(u, v);
% 
% x = cos(U);
% y = sin(U);
% z = V;
% 
% x1 = 0.5*cos(U);
% y1 = V;
% z1 = 0.5*sin(U);
% 
% hold on;
% mesh(x,y,z);
% mesh(x1,y1,z1);
% colormap(jet);
% colorbar;

%% Bai tap 12
% u = 0:0.01:2*pi;
% v = -2:0.01:2;
% [U,V] = meshgrid(u, v);
% s = -pi/2:0.1:pi/2;
% t = 0:0.1:2*pi;
% [S,T] = meshgrid(s, t);
% 
% x = cos(U);
% y = sin(U);
% z = V;
% 
% x1 = 1 + cos(S).*(1 + cos(T)/4);
% y1 = sin(T)/4;
% z1 = 0.5 + sin(S).*(1 + cos(T)/4);
% 
% hold on;
% mesh(x,y,z);
% mesh(x1,y1,z1);
% axis([-2 3 -2 2 -2 2]);
% colormap(jet);
% colorbar;

