function S = DT_TamGiac_Vuong(a,b,c)
%tinh dien tinh tam giac vuong
    if a+b>c && b+c>a && a+c>b
        if a*a + b*b == c*c
            S = 0.5*a*b;
        elseif a*a + c*c == b*b
            S = 0.5*a*c;
        elseif b*b + c*c == a*a
            S = 0.5*b*c;
        else
            disp('Khong phai tam giac vuong');
        end
    else
        disp('Khong phai tam giac');
    end
end