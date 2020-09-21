function res = get_fibo_series_of_n(n)
% Hien thi danh sach n so fibonaci
ar = zeros(1,n);
if n > 2
    ar(1) = 1; ar(2) = 1;
    i = 3;
    while i<n+1
        ar(i)=ar(i-2) + ar(i-1);
        i = i + 1;
    end
elseif n==1
    ar(1) = 1;
elseif n==2
    ar(1) = 1; ar(2) = 1;
else
    disp('Khong hop le')
end
res = ar;
end
