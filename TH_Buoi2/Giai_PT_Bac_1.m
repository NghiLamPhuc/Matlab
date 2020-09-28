function result = Giai_PT_Bac_1(a,b)
%Giai phuong trinh bac nhat ax + b =0
    if a == 0
        disp('Phuong trinh vo nghiem');
    else
        n = 1;
        x = -b/a;
        fprintf('Phuong trinh co %d nghiem la x = %f\n', n,x);
        result = [x,n];
    end
end