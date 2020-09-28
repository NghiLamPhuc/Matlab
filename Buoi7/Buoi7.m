clc
clear all
format long

% x = -2*pi:pi/10:2*pi; 
% plot(x,sin(x))

% % x = -2*pi:pi/2:2*pi;           % pi/? : ? ca`ng nho?, do xap xi cang chinh xac 
% % plot(x,sin(x))                 % vi du sin(x) duong cong hon.
% % x = -2*pi:pi/3:2*pi; 
% % plot(x,sin(x))
% % x = -2*pi:pi/5:2*pi; 
% % plot(x,sin(x))

% ezplot('sin(x)')

%% Ve~ nhie^`u do^` thi
% %Cach 1
% x = -2*pi:pi/100:2*pi;
% y1 = sin(x);
% y2 = sin(x + pi/4);
% y3 = sin(x + pi/2);
% plot(x, y1, x, y2, x, y3);
% %Cach 2
% y = [y1; y2; y3];
% plot(x,y)
% %Du`ng hold
% plot(x,y1)
% hold on
% plot(x,y2)
% plot(x,y3)
%% Ve~ nhie^`u do thi
% f = 50;
% T = 1/f;
% t = 0:T/100:2*T;
% va = 220*sin(2*pi*f*t);
% plot(t,va,'b');
% hold on;
% vb = 220*sin(2*pi*f*t + 120*pi/180);
% plot(t,vb,'g');
% vc = 220*sin(2*pi*f*t - 120*pi/180);
% plot(t,vc,'red');

%% Cac thuoc tinh ne't ve~
% t = 0:pi/20:2*pi;
% plot(t,sin(t),'-- r v', 'LineWidth',1)

%% VD Bai 2
% x=1:0.1:3;
% plot(x, exp(x.^2),'-. m v')
% axis([0 3 -2 100])
% xlabel('x');
% ylabel('y');
% legend('e^{x^2}');
% grid on
% title('Do thi ham y = e^{x^2}');
%% VD Bai 3
% x = -5:0.2:5;
% y = x./(1+x.^4);
% plot(x, y, '-. r o',...
%     'LineWidth', 2, ...
%     'MarkerSize', 6, ...
%     'MarkerEdgeColor', 'black',...
%     'MarkerFaceColor', 'blue')
% axis([-6 6 -1 1])
% xlabel('x');
% ylabel('y');
% legend('x/(1+x^4)');
% grid on
%% VD axis, grid...
% x = 0:0.25:pi/2;
% y = tan(x);
% plot(x, y, '-ro');
% axis([0 pi/2 0 5]) %                         Gioi han 2 chieu do thi
% grid on

%%Bai 4
% x = -2*pi:pi/100:2*pi; 
% a=sin(x); b=cos(x); c=tan(x);
% subplot(3,1,1)
% plot(x,a)
% legend('sin(x)')
% title('Do thi ham y = sin(x)')
% xlabel('x'); ylabel('y');
% 
% subplot(3,1,2)
% plot(x,b)
% legend('cos(x)')
% title('Do thi ham y = cos(x)')
% xlabel('x'); ylabel('y');
% 
% subplot(3,1,3)
% plot(x,c)
% legend('tan(x)')
% title('Do thi ham y = tan(x)')
% xlabel('x'); ylabel('y');

% % Tren cung truc toa do
% plot(x, a)
% hold on
% plot(x, b)
% plot(x, c)

%% VD
% x = 0:0.01:20;
% y = 0.8*exp(-0.5*x).*sin(10*x);
% plot(x, y);
% xlabel('x'); ylabel('y');
% legend('0.8 e^{-0.5x}sin(10x)');
% title('Do thi ham y = 0.8 e^{-0.5x}sin(10x)');

%% subplot: nhieu do thi, cac truc toa do khac nhau
% %subplot(p,q,i): p:do`ng, q:cot
%% VD1
% f = 50;
% T = 1/f;
% t = 0:T/100:2*T;
% v = 220*sin(2*pi*f*t);
% i = 55*sin(2*pi*f*t - 90*pi/180);
% 
% subplot(2,1,1);
% plot(t,v);
% xlabel('x'); ylabel('y');
% legend('220*sin(2*pi*f*t);');
% grid on
% 
% subplot(2,1,2);
% plot(t,i);
% xlabel('x'); ylabel('y');
% legend('55*sin(2*pi*f*t - 90*pi/180)');
% grid on
%% VD2
% t = 0:pi/20:2*pi; [x,y] = meshgrid(t);
% subplot(2,2,1)
% plot(sin(t),cos(t))
% axis equal
% 
% subplot(2,2,2)
% z = sin(x)+cos(y);
% plot(t,z)
% axis([0 2*pi -2 2])
% 
% subplot(2,2,3)
% z = sin(x).*cos(y);
% plot(t,z)
% axis([0 2*pi -1 1])
% 
% subplot(2,2,4)
% z = (sin(x).^2)-(cos(y).^2);
% plot(t,z)
% axis([0 2*pi -1 1])

