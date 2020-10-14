function A_U = Matran_TGTren(A)
% Xuat ma tran tam giac tren
    [row_A,col_A] = size(A);
    A_U = zeros(row_A, col_A);
    if row_A ~= col_A
       A_U = 'Khong phai ma tran vuong!';
    else
       for i=1:row_A
           A_U(i, i:col_A) = A(i, i:col_A);
       end
    end

end