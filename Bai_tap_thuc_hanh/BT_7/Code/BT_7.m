%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 16/10/2020
clc
% clear all
clearvars
close all
format long

% % ########################################## BT 7
%% Bai tap 1
% x = 0:0.5:4;
% hold on;
% plot(x, x);
% plot(x, x.^3);
% plot(x, exp(x));
% plot(x, exp(x.^2));
% xlabel('x'); ylabel('y');
% legend('x', '{x^3}','{e^x}', '{e^{x^2}}');
% title('Bai tap 1');
% axis([-10 10 -2 10]);

%% Bai tap 2
% x = 0:0.5:4;
% plot(x, exp(x.^2), '-.^b');
% xlabel('x'); ylabel('y');
% legend('{e^{x^2}}');
% title('Bai tap 2');
% axis([-1 3 0 10]);

%% Bai tap 3
% x = -5:1:5;
% f_x = x./(1 + x.^4);
% % set(0,'defaultTextInterpreter','latex');
% plot(x, f_x, '-.or', 'lineWidth', 2, 'color', [0.6350 0.0780 0.1840],...
%     'MarkerSize', 6,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor', 'b');
% % %http://math.loyola.edu/~loberbro/matlab/html/colorsInMatlab.html
% axis([-7 7 -7 7]);
% xlabel('x'); ylabel('y');
% title('bai tap 3');
% legend('f(x) = x/(1 + {x^4})');
% % legend('f(x) = \frac{x}{1+{x^4}}');

%% Bai tap 4
% hold on;
% ezplot('sin(x)');
% ezplot('cos(x)');
% ezplot('tan(x)');
% xlabel('x'); ylabel('y');
% title('bai tap 4');
% legend('sin(x)', 'cos(x)', 'tan(x)');

%% Bai tap 5
% x = -5:0.1:5;
% 
% y = x.^3 - 3.*x;
% yd1 = 3.*x.^2 - 3; % yd1 = 0 -> x = +-1;yd1(-2) = 9; yd1()
% yd2 = 6.*x;
% 
% yArr = [y; yd1; yd2];
% 
% hold on;
% plot(x, yArr);
% legend('y = {x^3} - 3x', 'y1d = 3{x^2} - 3', 'y2d = 6x');
% xlabel('x'); ylabel('y');
% title('Bai tap 5');
%% Bai tap 6a
% x = -10:10;
% f = abs(x.^2 + 3.*x);
% g = x.^3 - x - 2;
% 
% suptitle('Bai tap 6a');
% subplot(1,2,1);
% plot(x,f);
% 
% legend('|{x^2} + 3x|');
% xlabel('x'); ylabel('y');
% 
% subplot(1,2,2);
% plot(x,g);
% 
% legend('{x^3} - x - 2');
% xlabel('x'); ylabel('y');

%% Bai tap 6b
% x = -10:10;
% f = x.^2;
% g = sqrt(x);
% % set(0,'defaultTextInterpreter','latex');
% 
% suptitle('Bai tap 6b');
% subplot(2,1,1);
% plot(x,f);
% 
% legend('{x^2}');
% xlabel('x'); ylabel('y');
% 
% subplot(2,1,2);
% plot(x,g);
% 
% legend('{\surdx}');
% xlabel('x'); ylabel('y');

%% Bai tap 6c
% x = -10:10;
% % f = [exp(x); log(x); sin(x); cos(x)]
% % set(0,'defaultTextInterpreter','latex');
% 
% suptitle('Bai tap 6c');
% 
% subplot(2,2,1);
% plot(x,exp(x));
% legend('{e^x}');
% xlabel('x'); ylabel('y');
% 
% subplot(2,2,2);
% plot(x,log(x));
% legend('ln(x)');
% xlabel('x'); ylabel('y');
% 
% subplot(2,2,3);
% plot(x,sin(x));
% legend('sin(x)');
% xlabel('x'); ylabel('y');
% 
% subplot(2,2,4);
% plot(x,cos(x));
% legend('cos(x)');
% xlabel('x'); ylabel('y');









%% Bai tap 9
% A = [-3 -3];
% a = 5; b = 4;
% tamgiacvuong(A, a, b);

%% bai tap 10
% A = [-3 -3];
% d = 5; r = 4;
% hinhchunhat(A, d, r);

