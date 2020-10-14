function A_D = Matran_DuongCheo(A)
% Xuat ma tran duong cheo
    [row_A,col_A] = size(A);
    A_D = zeros(row_A, col_A);
    if row_A ~= col_A
       A_D = 'Khong phai ma tran vuong!';
    else
       for i=1:row_A
           A_D(i,i) = A(i,i);
       end
    end

end