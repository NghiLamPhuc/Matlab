function [x,n] = Giai_PT_Bac_1(a,b)
%Giai phuong trinh bac nhat ax + b =0
    if a == 0
        x = '';
        n = 0;
    else
        n = 1;
        x = -b/a;
    end
    
    
end