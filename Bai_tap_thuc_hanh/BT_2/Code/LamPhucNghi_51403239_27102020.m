% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 27/10/2020

clear all
close all
clc
format long

%% bai tap 1 for
% n = input('n = ');
% nGiaiThua = 1;
% if n == 0
%     nGiaiThua = 1;
% elseif n>=1
%     for i=2:n
%         nGiaiThua = nGiaiThua * i;
%     end
% else
%     nGiaiThua = -1;
% end
% if nGiaiThua == -1
%     disp('Khong hop le');
% else
%     fprintf('n! = %d\n', nGiaiThua);
% end

%% bai tap 2 for
% S = 0;
% for k=5:20
%     S = S + (k^2)/(k-1);
% end
% fprintf('S = %f\n', S);

%% bai tap 3 for
% S = 0;
% for n=1:10
%     for k=1:n
%         S = S + k;
%     end
% end
% fprintf('S = %d\n', S);

%% bai tap 4 for
% S = 0;
% for i=3:50
%     if mod(i,3)==0
%         S = S + i;
%     end
% end
% fprintf('S = %d\n', S);

%% bai tap 1 while
% n = input('n = ');
% k = 1;
% S = 0;
% while k<=n
%     S = S + 1/k;
%     k = k + 1;
% end
% fprintf('S = %f\n', S);

%% bai tap 2 while
% n = 1;
% S = 1;
% while S + (n+1)^2 < 100
%     n = n + 1;
%     S = S + n^2;
% end
% fprintf('n = %d, S = %d\n', n, S);

%% bai tap 3 while
% n = input('So nguyen duong n = ');
% while n>1
%     if mod(n,2) == 0
%         n = n/2
%     else
%         n = n + 1
%     end
% end
% fprintf('n = %f\n', n);

%% bai tap 4 while
% % rng(42); % random state, 42: the answer of the last question of life :)))
% rNum = rand();
% % rNum = 0 + (1 - 0)*rand(1,1);
% i = 1;
% while rNum <= 0.95
%     rNum = rand();
%     i = i + 1;
% end
% fprintf('n = %f\n So lan lap: %d\n', rNum, i);

%% bai tap 1 tong hop
% n = input('n = ');
% if n<=0
%     disp('n phai nguyen duong');
% elseif n == 1
%     disp('n la nguyen to');
% else
% %     if isprime(n)
% %         disp('n la nguyen to');
% %     else
% %         disp('n khong la nguyen to');
% %     end
%     flag = 1;
%     for i=2:fix(sqrt(n))
%         if mod(n,i)==0
%             flag = 0;
%             break;
%         end
%     end
%     if flag == 1
%         disp('n la nguyen to');
%     else
%         disp('n khong la nguyen to');
%     end
% end

%% bai tap 2 tong hop
% n = 5; k = 3;



