%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 18/09/2020
clear all
close all
clc
format long

%% bai tap 1
% v = input('Nhap vao vector: ');
% fprintf('max = %d\n', max(v));
% fprintf('min = %d\n', min(v));

%% bai tap 2
% v = input('Nhap vao vector: ');
% fprintf('Tong cac so chan = %5.5f\n', sum( v(mod(v, 2) == 0) ) );
% fprintf('Tong cac so le = %5.5f\n', sum( v(mod(v, 2) ~= 0) ) );
% fprintf('Tong cac so nguyen to chan = %d\n', sum( v(isprime(v) & (mod(v, 2) == 0)) ) );
% fprintf('Tong cac so nguyen to le = %d\n', sum( v(isprime(v) & (mod(v, 2) ~= 0)) ) );
% fprintf('Tong cac so chinh phuong = %d\n', sum( v(fix(v.^0.5) == v.^0.5) ) );

%% bai tap 3
% F = zeros(1, 10);
% F(1) = 1; F(2) = 1;
% S = 2;
% for i=3:10
%     F(i) = F(i-1) + F(i-2);
% %     S = S + F(i);
% end
% disp(F);
% fprintf('Tong 10 so fibo dau tien = %d\n', sum(F));

% while F(end) + F(end - 1) < 1000
%     F(end + 1) = F(end) + F(end -1);
% end
% n = length(F);
% fprintf('De F(n) < 1000 va F(n+1) >= 1000 thi n = %d\n', n);

% while F(end) < 1000
%     F(end + 1) = F(end) + F(end - 1);
% end
% disp(F);
% n = length(F) - 1;
% fprintf('De F(n) < 1000 va F(n+1) >= 1000 thi n = %d\n', n);

% for i=18:50
%     F(i) = F(i-1) + F(i-2);
% end    
% S_3 = 0;
% for i=F
%     if mod(i,2) == 0 || mod(i,5) == 0
%         S_3 = S_3 + i;
%     end
% end
% fprintf('S = %d\n', S_3);


%% Bai tap 4

% S = 0;
% v = rand(1, 10^6);
% for i=v
%     S = S + i^2;
% end
% S
% S = 0;
% for i=v
%     S = S + i;
% end
% S = S^2

%% Bai tap 5

% x = [4 0 5 -3 0 3 7 -1 6];
% length(x(x<0))
% numel(x(x>0))
% size(x(x==0), 2)

%% bai tap 6 for



%% Bai tap 6
% n = 0;
% x = 2;
% while abs(exp(x) - bai6_a(x, n+1)) > 10^(-6)
%     n = n + 1;
% end
% fprintf('e^%d     = %5.8f\n', x, exp(x));
% fprintf('S(n=%d) = %5.8f\n', n, bai6_a(x, n));
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n-1, abs(exp(x) - bai6_a(x,n-1)) )
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n, abs(exp(x) - bai6_a(x,n)) )
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n+1, abs(exp(x) - bai6_a(x,n+1)) )

% n = 0;
% x = 2;
% while abs(exp(x) - bai6_a(x, n+1)) > 10^(-12)
%     n = n + 1;
% end
% fprintf('e^%d     = %5.13f\n', x, exp(x));
% fprintf('S(n=%d) = %5.13f\n', n, bai6_a(x, n));
% fprintf('|e^%d - S(n=%d)| = %.12f\n', x, n-1, abs(exp(x) - bai6_a(x,n-1)) )
% fprintf('|e^%d - S(n=%d)| = %.12f\n', x, n, abs(exp(x) - bai6_a(x,n)) )
% fprintf('|e^%d - S(n=%d)| = %.12f\n', x, n+1, abs(exp(x) - bai6_a(x,n+1)) )


% n = 0; x = 2;
% S = 0;
% while abs(exp(x) - S) > 10^(-6)
%     n_giaithua = 1;
%     i = 2;
%     while i<=n
%         n_giaithua = n_giaithua*i;
%         i = i + 1;
%     end
%     S = S + x^n / n_giaithua;
%     n = n + 1;
% end
% fprintf('e^%d     = %5.8f\n', x, exp(x));
% fprintf('S(n=%d) = %5.8f\n', n, S);
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n, abs(exp(x) - S) )

% n = 0; %n tang dan qua cac vong lap
% x = 2; %mac dinh 1 so
% while 1
%     S = 0;
%     for k=0:n
%         k_giaithua = 1;
%         for i=2:k
%             k_giaithua = k_giaithua * i;
%         end
%         S = S + x^k / k_giaithua;
%     end
%     if abs(exp(x) - S) <= 10^(-6)
%         break;
%     end
%     n = n + 1;
% end
% fprintf('e^%d     = %5.8f\n', x, exp(2));
% fprintf('S(n=%d) = %5.8f\n', n, S);
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n, abs(exp(x) - S) )

%% Bai 6 sin(x)
% n = 0;
% x = 2;
% while abs(sin(x) - bai6_b(x, n+1)) > 10^(-6)
%     n = n + 1;
% end
% fprintf('sin(%d)     = %5.8f\n', x, sin(x));
% fprintf('S(n=%d) = %5.8f\n', n, bai6_b(x, n));
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n-1, abs(sin(x) - bai6_b(x,n-1)) )
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n, abs(sin(x) - bai6_b(x,n)) )
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n+1, abs(sin(x) - bai6_b(x,n+1)) )



%% Bai 7 dung while

% n = 1;
% S = 5/2; %5/1*(1+1)
% while S + (5 / ((n + 1) * (n + 2))) <= 4
%     n = n + 1;
%     S = S + (5 / (n * (n + 1)));
% end
% fprintf('n = %d => S = %f\n', n, S);
 
% n = 1;
% S = 1/4; %1/1*(1+3)
% while S < 1/2
%     n = n + 1;
%     S = S + (1 / (n * (n + 3)));
% end
% fprintf('n = %d => S = %f\n', n, S);
% 
% n = 1;
% S = 1/2; %1/(1+1)
% while S < 10
%     n = n + 1;
%     S = S + (n^2) / (n^2 + 1);
% end
% fprintf('n = %d => S = %f\n', n, S);

%% Bai 7 dung for
% n = 0;
% while 1
%     S = 0;
%     for k=1:n
%         S = S + (5 / (k * (k + 1)));
%     end
%     if S >= 4
%         break;
%     end
%     n = n + 1;
% end
% fprintf('n = %d', n);
% 
% n = 0;
% while 1
%     S = 0;
%     for k=1:n
%         S = S + 1 / (k * (k + 3));
%     end
%     if S >= 1/2
%         break;
%     end
%     n = n + 1;
% end
% fprintf('n = %d', n);
% 
% n = 0;
% while 1
%     S = 0;
%     for k=1:n
%         S = S + (k^2 / k^2 + 1);
%     end
%     if S >= 10
%         break;
%     end
%     n = n + 1;
% end
% fprintf('n = %d', n);
%% bai tap 8a
% S = 0;
% for i=1:4:9997 S = S + i; end
% for i=3:4:9999 S = S + i^2; end
% disp(S);

% S=0;
% i = 1;
% while i<=9997
%     S = S + i + (i+2)^2;
%     i = i + 4;
% end
% disp(S);

%% bai tap 8b
% S = 0;
% for i=2:4:9998 S = S + i^2; end
% for i=4:4:9996 S = S + i; end
% disp(S);

% S = 0;
% i = 2;
% while i<=9998
%     S = S + i^2 + (i+2);
%     i = i + 4;
% end
% S = S - 10000;
% disp(S);

%% Bai tap 9
% % Cach nay co van de o cho, lan while cuoi cung, van cong them 1 luot nua
% % Trung hop thay, no van giu loss = 10^(-x)
% tic;
% n = 0;
% myPi = 1;
% while abs(pi - 4*myPi) >= 10^(-6)
%     n = n + 1;
%     myPi = myPi + ((-1)^n)/(2*n + 1);
%     disp(4*myPi)
% end
% fprintf('pi   = %1.10f\n', pi);
% fprintf('myPi = %1.12f\n', (myPi - ((-1)^n)/(2*n + 1) ) * 4);
% fprintf('n=%d \n', n - 1);
% toc;



% tic;
% n = 0;
% myPi = 1;
% while abs(pi - 4*(myPi + ((-1)^(n+1))/(2*(n+1) + 1) ) ) >= 10^(-6)
%     n = n + 1;
%     myPi = myPi + ((-1)^n)/(2*n + 1);
%     disp(4*myPi)
% end
% fprintf('pi   = %1.10f\n', pi);
% fprintf('myPi = %1.12f\n', myPi*4);
% fprintf('n=%d \n', n);
% toc;




% 0.785398 413397194 " 10^(-6)
% 0.785398 163... 10^(-9)