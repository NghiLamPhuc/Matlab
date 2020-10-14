function S = Tong_Matran(A,B)
% Tong 2 ma tran
num_row_A = size(A, 1);
num_col_A = size(A, 2);
num_row_B = size(B, 1);
num_col_B = size(B, 2);    
if (num_row_A ~= num_row_B) || (num_col_A ~= num_col_B)
    S = 'Khong cung kich thuoc, khong tinh tong duoc.'; 
else
    S = zeros(num_row_A, num_col_A);
    for i=1:num_row_A
        for j=1:num_col_A
            S(i,j) = A(i,j) + B(i,j);
        end
    end
end
end