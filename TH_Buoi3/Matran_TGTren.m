function A_U = Matran_TGTren(A)
% Xuat ma tran tam giac tren
    [row_A,col_A] = size(A);
    A_U = zeros(row_A, col_A);
    if row_A ~= col_A
       A_U = 'Khong phai ma tran vuong!';
    else
       for i=1:row_A
           for j=i:col_A
               A_U(i,j) = A(i,j);
           end
       end
    end

end