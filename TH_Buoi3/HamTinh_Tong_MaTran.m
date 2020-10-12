function S = HamTinh_Tong_MaTran(A, n)
% n=1 tinh tong theo cot, n=2 tinh tong theo dong cua ma tran.
    if n == 1
        S = sum(A);%hoac S = sum(A,1);
    end
    if n == 2
        S = sum(A,2);
    end
end