function S = DT_TamGiac_Vuong(a,b,c)
%tinh dien tinh tam giac vuong
if (a<=0) || (b<=0) || (c<=0) || (a>=(b+c)) || (b>=(a+c)) || (c>=(a+c))
    S = 'Khong phai tam giac';
else
    if ((a^2 + b^2) == c^2) || ((a^2 + c^2) == b^2) || ((b^2 + c^2) == a^2)
        P = (a + b + c) * 0.5;
        S = (P * (P - a) * (P - b) * (P - c)) ^ 0.5;
    else
        S = 'Khong phai tam giac vuong';
    end
end

end