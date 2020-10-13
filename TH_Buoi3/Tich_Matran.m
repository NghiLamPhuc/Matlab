function P = Tich_Matran(A,B)
% Tich 2 ma tran bang vong lap for
[num_row_A, num_col_A] = size(A);
[num_row_B, num_col_B] = size(B);
if num_col_A ~= num_row_B
    P = 'Khong nhan duoc.';
else
    P = A*B;
end

end