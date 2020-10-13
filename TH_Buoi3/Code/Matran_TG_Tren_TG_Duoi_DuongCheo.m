function result = Matran_TG_Tren_TG_Duoi_DuongCheo(A)
%
    [row_A,col_A] = size(A);
    A_U = zeros(row_A, col_A);
    A_L = zeros(row_A, col_A);
    A_D = zeros(row_A, col_A);
    if row_A ~= col_A
        result = 'Khong phai ma tran vuong!';
    else
        for i=1:row_A
            for j=i:col_A
                A_U(i,j) = A(i,j);
            end
            for j=1:i
                A_L(i,j) = A(i,j);
            end
            A_D(i,i) = A(i,i);
        end
    result = [A_U(:), A_L(:), A_D(:)];    
    end
end