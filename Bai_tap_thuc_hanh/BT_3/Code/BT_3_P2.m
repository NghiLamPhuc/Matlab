%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 18/09/2020
% clear all
clearvars
close all
clc
format long

%% bai tap 1
% v = input('Nhap vao vector: ');
% fprintf('max = %d\n', max(v));
% fprintf('min = %d\n', min(v));

%% bai tap 2
% v = input('Nhap vao vector: ');
% 
% evenNums = v( mod(v, 2) == 0);
% disp('Cac so chan:');
% disp(num2str(evenNums));
% fprintf('Tong cac so chan = %d\n', sum(evenNums) );
% 
% oddNums = v( mod(v, 2) ~= 0);
% disp('Cac so le:');
% disp(num2str(oddNums));
% fprintf('Tong cac so le = %d\n', sum(oddNums) );
% 
% evenPrimeNums = v( mod(v, 2) == 0 & isprime(v) );
% disp('Cac so nguyen to chan:');
% disp(num2str(evenPrimeNums));
% fprintf('Tong cac so nguyen to chan = %d\n', sum(evenPrimeNums) );
% 
% oddPrimeNums = v( mod(v, 2) ~= 0 & isprime(v) );
% disp('Cac so nguyen to le:');
% disp(num2str(oddPrimeNums));
% fprintf('Tong cac so nguyen to le = %d\n', sum(oddPrimeNums) );
% 
% squareNums = v( fix(v.^0.5) == v.^0.5);
% disp('Cac so chinh phuong:');
% disp(num2str(squareNums));
% fprintf('Tong cac so chinh phuong = %d\n', sum(squareNums) );


% %C2
% v = input('vector = ');
% S_chan = 0; S_le = 0; S_nt_chan = 0; S_nt_le; S_cp = 0;
% for i=v
%     if mod(i, 2) == 0
%         S_chan = S_chan + i;
%         .....sau lam tiep
% end
%% bai tap 3
% F = zeros(1, 10);
% F(1) = 1; F(2) = 1;
% % %----------------------------------------------------- a
% for i=3:10
%     F(i) = F(i-1) + F(i-2);
% end
% disp('[[10 so fibo dau tien]]');
% disp(F);
% fprintf('Tong 10 so fibo dau tien = %d\n\n', sum(F));
% 
% % %----------------------------------------------------- b
% while F(end) + F(end - 1) < 1000
%     F(end + 1) = F(end) + F(end -1);
% end
% disp('[[Cac so fibo < 1000]]');
% disp(num2str(F));
% n = length(F);
% fprintf('De F(n) < 1000 va F(n+1) >= 1000 thi n = %d\n\n', n);
% 
% % %----------------------------------------------------- c
% for i = n+1 : 50
%     F(i) = F(i-1) + F(i-2);
% end
% disp('[[50 so fibo dau tien]]');
% disp(num2str(F));
% 
% fibo_2_5 = [];
% for i=F
%     if mod(i,2) == 0 || mod(i,5) == 0
%         fibo_2_5(end + 1) = i;
%     end
% end
% 
% disp('[[Cac so fibo chia het 2, chia het 5]]');
% disp(num2str(fibo_2_5));
% fprintf('Tong = %d\n\n', sum(fibo_2_5) );

%% Bai tap 4

% S = 0;
% v = rand(1, 10^6);
% disp(v(1:3));
% tic;
% for i=v
%     S = S + i^2;
% end
% S
% toc;


%% Bai tap 5

% x = [4 0 5 -3 0 3 7 -1 6];
% length(x(x<0))
% numel(x(x>0))
% size(x(x==0), 2)

%% bai tap 6 while
% %-----------------------------------------------------------------------a
% epsilonAr = [10^(-6) 10^(-12)];
% x = 2;
% expX = exp(x);
% for epsilon = epsilonAr
%     myEXP = 1;
%     n = 0;
%     nGiaiThua = 1;
%     while abs(myEXP + (x^(n+1))/(nGiaiThua*(n+1)) - expX ) > epsilon
%         n = n + 1;
%         nGiaiThua = nGiaiThua * n;
%         nMoi = x^n/nGiaiThua;
%         myEXP = myEXP + nMoi;
%     end
%     fprintf('epsilon = %.e\n', epsilon);
%     fprintf('n = %d\n', n);
%     fprintf('myEXP          = %.20f\n', myEXP);
%     fprintf('exp(%f)  = %.20f\n', x, expX);
%     fprintf('myEXP - exp(x) = %.e\n\n', abs(myEXP - expX));
% end
% %-----------------------------------------------------------------------b
% epsilonAr = [10^(-6) 10^(-12)];
% for epsilon = epsilonAr
%     x = 2;
%     n = 0;
%     mySin = x;
%     denom = 1; %denomenator: mau so
%     while abs(mySin + ((-1)^(n + 1))*(x^(2*n + 3)) / (denom * 2*(n+1) * (2*n + 3)) - sin(x)) > epsilon
%         n = n + 1;
%         denom = denom * 2*n * (2*n + 1);
%         mySin = mySin + ((-1)^n)*(x^(2*n + 1))/denom;
%     end
%     fprintf('epsilon = %.e\n', epsilon);
%     fprintf('n = %d\n', n);
%     fprintf('mySin          = %.15f\n', mySin);
%     fprintf('sin(%f)  = %.15f\n', x, sin(x));
%     fprintf('mySin - sin(x) = %.e\n', abs(mySin - sin(x)));
%     fprintf('mySin - sin(x) = %.15f\n\n', abs(mySin - sin(x)));
% end
% %-----------------------------------------------------------------------c
% epsilonAr = [10^(-6) 10^(-12)];
% x = 1;
% cosX = cos(x);
% for epsilon = epsilonAr
%     n = 0;
%     myCos = 1;
%     denom = 1;
%     while abs(myCos + ((-1)^(n+1)) * x^(2*(n+1)) / (denom * (2*(n+1) - 1) * 2*(n+1)) - cosX) > epsilon
% %     while abs(myCos - cosX) > epsilon
%         n = n + 1;
%         denom = denom * (2*n - 1) * 2*n;
%         myCos = myCos + ((-1)^n) * x^(2*n) / denom;
%     end
%     fprintf('---%.e---\n', epsilon);
%     fprintf('cos(%f) = %.20f\n', x, cosX);
%     fprintf('myCos         = %.20f\n', myCos);
%     fprintf('n = %d\n', n);
%     fprintf('|cos(%f) - myCos| = %.e\n\n', x, abs(cosX - myCos));
% end
%% Bai tap 6 for
% %-----------------------------------------------------------------------a
% x = 2;
% expX = exp(x);
% n = 16;
% myEXP = 1;
% for k=1:n
%     kFactorial = 1;
%     for i=1:k
%         kFactorial = kFactorial * i;
%     end
%     myEXP = myEXP + (x^k)/kFactorial;
% end
% fprintf('%.20f\n', expX);
% fprintf('%.20f\n', myEXP);

%% bai tap 6
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

%% Bai tap 7 while
% %-----------------------------------------------------------------------a
% n = 1;
% S = 5/2; %5/1*(1+1)
% while S + (5 / ((n + 1) * (n + 2))) <= 4
%     n = n + 1;
%     S = S + (5 / (n * (n + 1)));
% end
% fprintf('n = %d => S = %f\n', n, S);
% %-----------------------------------------------------------------------b
% n = 1;
% S = 1/4; %1/1*(1+3)
% while S < 1/2
%     n = n + 1;
%     S = S + (1 / (n * (n + 3)));
% end
% fprintf('n = %d => S = %f\n', n, S);
% %-----------------------------------------------------------------------c
% n = 1;
% S = 1/2; %1/(1+1)
% % while S + (((n+1)^2) / ((n+1)^2 + 1)) < 10
% while S < 10
%     n = n + 1;
%     S = S + (n^2) / (n^2 + 1);
% end
% fprintf('n = %d => S = %f\n', n, S);

%% Bai tap 7 for
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
% % c1
% S = 0;
% for i=1:4:9997 S = S + i; end
% for i=3:4:9999 S = S + i^2; end
% disp(S);
% 
% % c2
% S=0;
% i = 1;
% while i<=9997
%     S = S + i + (i+2)^2;
%     i = i + 4;
% end
% disp(S);

%% bai tap 8b
% % c1
% S = 0;
% for i=2:4:9998 S = S + i^2; end
% for i=4:4:9996 S = S + i; end
% disp(S);
% 
% % c2
% S = 0;
% i = 2;
% while i<=9998
%     S = S + i^2 + (i+2);
%     i = i + 4;
% end
% S = S - 10000;
% disp(S);

%% Bai tap 9

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

% % 0.785398 413397194 " 10^(-6)
% % 0.785398 163... 10^(-9)


% %------------------------------------------------------------------------
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


