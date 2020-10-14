function [x1, x2] = Giai_PT_Bac_2(a, b, c)
%Giai pt bac 2, a=0 goi lai Giai_PT_Bac_1
    if a == 0
        [x1,n] = Giai_PT_Bac_1(b, c);
        x2 = x1;
    else
        d = b*b - 4*a*c;
        if d<0
            x1 = (-b + 1i*sqrt(abs(d))) / 2*a;
            x2 = (-b - 1i*sqrt(abs(d))) / 2*a;
        elseif d==0
            x1 = -b / 2*a;
            x2 = x1;
        else
            x1 = (-b + sqrt(d)) / 2*a;
            x2 = (-b - sqrt(d)) / 2*a;
        end    
    end  
end