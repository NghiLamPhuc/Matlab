function A_L = Matran_TGDuoi(A)
% Xuat ma tran tam giac duoi
    [row_A,col_A] = size(A);
    A_L = zeros(row_A, col_A);
    if row_A ~= col_A
       A_L = 'Khong phai ma tran vuong!';
    else
       for i=1:row_A
           for j=1:i
               A_L(i,j) = A(i,j);
           end
       end
    end

end