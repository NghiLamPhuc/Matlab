% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay kiem tra: 16/12/2020

clc
clearvars
close all
format long

%% Cau 1
% % a------------------------------------------------------------------------
% n = input('Moi nhap n = ');
% fprintf('u_%d = %d\n', n, dayso(n));
% % b------------------------------------------------------------------------
% S = 0;
% for i=1:11
%     u = dayso(i);
%     if mod(u, 2) == 0
%         S = S + u;
%     end
% end
% fprintf('Tong = %d\n', S);

%% Cau 2
% % % a------------------------------------------------------------------------
% n = input('Nhap n>3, n = ');
% while n <= 3
%     n = input('Nhap lai n>3, n = ');
% end
% A = zeros(n);
% for i=1:n
%     for j=1:n
%         A(i, j) = (i + 2)/(2*j + 1);
%     end
% end
% A
% 
% % % b------------------------------------------------------------------------
% B = A;
% B(n - 2, :) = [];
% B(:, n - 1) = [];
% B

%% Cau 3
% syms y(x)
% y(x) = 1/(x*log(x));
% % a------------------------------------------------------------------------
% N = 101;
% x = linspace(exp(1), exp(1) + 1, N);
% S = 0;
% for k=1:N-1
%     A = 1 / (x(k) * log(x(k)));
%     B = 1 / (x(k + 1) * log(x(k + 1)));
%     S = S + 0.5 * (x(k + 1) - x(k)) * (A + B);
% end
% S
% % % kiem tra bang int
% double(int(y, exp(1), exp(1) + 1))
% % b------------------------------------------------------------------------
% ezplot(y);
% hold on;
% ezplot(int(y));
% grid on;
% title('Do thi Cau 3');
% legend('y(x) = 1/{x*ln(x)}',  'Tich phan y(x)');
% xlabel('x');
% ylabel('y');

    
    
    