%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 08/10/2020
clc
clear all
close all
format long

% % ########################################## BT 6

%% Bai tap 1.
% A = [2 4 1; 6 7 2; 3 5 9]
% %a
% x = A(1,:)
% %b
% Y = A(end-1:end,:)
% %c
% S_r = sum(A, 2)
% %d
% S_c = sum(A) %sum(A,1)
% %e
% min_A = min(A(:))
% max_A = max(A(:))
% %f
% S_A = sum(A(:))

%% Bai tap 2.
% rng(42); %giu bo tao ngau nhien moi lan giong nhau, co the dat khac 42
% A = randi([-10, 10], 4)
% % A = round(-10+(10+10)*rand(4,4))
% % % --> a + (b - a)*rand(m,n)
% %a
% A = A + 15
% %b
% A = A.^2
% %c
% A([1,2],:) = A([1,2],:) + 10
% %d
% A(:, [1 4]) = A(:, [1 4]) + 10
% %e
% 1./A
% %f
% sqrt(A)
% A_sqrt = A.^0.5
%% Bai tap 3
% A = [1 2 3;5 6 9;10 11 15];
% row = size(A, 1);
% col = size(A, 2);
% A_U = zeros(row);
% A_L = zeros(row);
% A_D = zeros(row);
% 
% for i=1:row
%    A_U(i, i:col) = A(i, i:col);
%    A_L(i, 1:i) = A(i, 1:i);
%    A_D(i,i) = A(i,i);
% end
% A_U
% A_L
% A_D

% % Cach khac 1
% for i=1:row
%     for j=1:col
%         if i<=j
%            A_U(i,j)=A(i,j);
%         end
%         if i>=j
%            A_L(i,j)=A(i,j); 
%         end
%         if i==j
%            A_D(i,j)=A(i,j); 
%         end
%     end
% end
% A_U
% A_L
% A_D

% % Cach khac 2
% for i=1:row
%    for j=i:col
%       A_U(i,j) = A(i,j); 
%    end
%    for j=1:i
%       A_L(i,j) = A(i,j);
%    end
%    for j=i:i
%       A_D(i,j) = A(i,j); 
%    end
% end
% A_U
% A_L
% A_D

% % Neu du`ng ham co san
% A_U = triu(A)
% A_L = tril(A)
% A_D = diag(diag(A))
%% Bai tap 4
% A = [1 2 3 5 4; 5 6 8 9 11; 3 1 2 5 7; 9 2 5 6 12; 2 5 7 7 14];
% B = [11 12 20 30 32; 1 2 36 3 5; 31 22 25 9 11; 5 6 7 10 12; 15 32 24 34 38];
% num_row_A = size(A, 1);
% num_col_A = size(A, 2);
% [num_row_B, num_col_B] = size(B); % viet 2 kieu
% %a
% S = zeros(num_row_A, num_col_A);
% for i=1:num_row_A
%     for j=1:num_col_A
%         S(i,j) = A(i,j) + B(i,j);
%     end
% end
% S%-(A+B)
% %b
% P = zeros(num_row_A, num_col_B);
% for row_A = 1:num_row_A
%     for col_B = 1:num_col_B
%         for elem = 1:num_col_A % hoac num_of_row_B; elem:element
%             P(row_A, col_B) = P(row_A, col_B) + A(row_A, elem)*B(elem, col_B);
%         end
%     end
% end
% P%-(A*B)

%% Bai tap 5
% A = [1 2 3 4;
%      2 4 6 8;
%      3 6 9 12];
% %a
% A(3, :) = A(3, :) - 3 * A(1, :)
% %b
% A(2, :) = A(2, :) - 2 * A(1, :)

%% Bai tap 6
B = [1 -1 5 -1;
     1 1 -2 3;
     3 -1 8 1;
     1 3 -9 7];

% rats(rref(B))
 
B(2,:) = B(2,:) - B(1,:)
B(3,:) = B(3,:) - 3*B(1,:)
B(4,:) = B(4,:) - B(1,:)

B_2_4 = eye(4)
temp = B_2_4(2,:);
B_2_4(2,:) = B_2_4(4,:)
B_2_4(4,:) = temp
B = B_2_4 * B

B(3,:) = 2*B(3,:) - B(2,:);
B(4,:) = 2*B(4,:) - B(2,:)
B(2,:) = B(2,:)/4
rats(B)

num_row_B = size(B, 1);
rowZero = zeros(1, num_row_B);

r = num_row_B;

for i=1:num_row_B
    if B(i,:) == rowZero
        r = r - 1;
    end
end
r



% m = rank(B);
% B(2,:) = B(2,:) - 2*B(1,:);
% B(3,:) = B(3,:) - 3*B(1,:);
% B(4,:) = B(4,:) - B(1,:);
% B(3,:) = B(3,:) - B(2,:);
% B(4,:) = B(4,:) - 2*B(2,:);
% disp(B);
% a=[0 0 0 0];
% for i=1:4
%     if B(i,:) == a(1,:)
%         m = m-1;
%     end
% end
% m

%% Bai tap 7
% A = input('Tinh tong theo do`ng hoac cot cua ma tran. Nhap ma tran:\n');
% n = input('Nhap 1 de tinh theo dong, 2 de tinh theo cot: ');
% disp(HamTinh_Tong_MaTran(A, n));

%% Bai tap 8
% A = input('Nhap ma tran vuong: \n');
% fprintf('Ma tran tam giac tren:\n')
% disp(Matran_TGTren(A));
% fprintf('Ma tran tam giac duoi:\n');
% disp(Matran_TGDuoi(A));
% fprintf('Ma tran duong cheo:\n');
% disp(Matran_DuongCheo(A));

%% Bai tap 9
% A = input('Nhap ma tran A:\n');
% B = input('Nhap ma tran B:\n');
% Tong_Matran(A,B)

%% Bai tap 10
% A = input('Nhap ma tran A:\n');
% B = input('Nhap ma tran B:\n');
% Tich_Matran(A,B)

%% Bai tap 11
