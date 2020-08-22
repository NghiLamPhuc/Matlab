clc
clear all
format long

% vd 1.5.1 trang 12/23
3^2-(5+4)/2+6*3;
u=cos(10);
v=exp(2)*sqrt(20^2+9*12/2^(-3));
sqrt(2^3-3^2);
x=7;y=-3;x^2-2*x*y+y^2;

% vd 1.5.3 trang 18/23
10/2\5-3+2*4;
3^2/4;
3^2^2;
2+round(6/9+3*2)/2-3;
2+floor(6/11)/2-3;
2+ceil(-6/9)-3;
fix(-4/9)+fix(3*(5/6));

% help elfun
% help specfun
% help elmat

% vd 1.5.4 trang 21/23
log10(exp(3));
sin(2*pi/3);
x=pi/2;
sin(x)/x;
cos(x)^2-sin(x)^2;
atan(1/2);
cosh(0.1);
1/(1+1/(1+1/x));

%%
a = input('Nhap a: ');
b = input('Nhap b: ');
if a>b
    disp('a > b');
elseif a==b
    disp('a=b');
else a<b
    disp('a<b');
end

%%
% a=input('Nhap a = ');
% b=input('Nhap b = ');
% if a~=0
%     x=-b/a;
% %     fprintf('nghiem so x = %9.5g\n', x);
%     disp(['nghiem so x = ',num2str(x)]);
% else
%     if b~=0
%         disp('ptvn')
%     else
%         disp('ptvsn')
%     end
% end

%%
% a=input('Nhap a = ');
% b=input('Nhap b = ');
% c=input('Nhap c = ');
% delta = b^2-4*a*c;
% if delta > 0:
disp(['so pi la:',num2str(pi)])    