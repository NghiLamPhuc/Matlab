function P = Tich_Matran(A,B)
% Tich 2 ma tran bang vong lap for
[num_row_A, num_col_A] = size(A);
[num_row_B, num_col_B] = size(B);
if num_col_A ~= num_row_B
    P = 'Khong nhan duoc.';
else
%     P = A*B;
P = zeros(num_row_A, num_col_B);
for row_A = 1:num_row_A
    for col_B = 1:num_col_B
        for elem = 1:num_col_A % hoac num_of_row_B; elem:element
            P(row_A, col_B) = P(row_A, col_B) + A(row_A, elem)*B(elem, col_B);
        end
    end
end
end

end