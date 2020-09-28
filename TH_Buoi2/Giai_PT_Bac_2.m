function result = Giai_PT_Bac_2(a, b, c)
%Giai pt bac 2, a=0 goi lai Giai_PT_Bac_1
    if a==0
        Giai_PT_Bac_1(b, c);
    else
        d = b*b - 4*a*c;
        if d<0
            x1 = (-b + 1i*sqrt(abs(d))) / 2*a;
            x2 = (-b - 1i*sqrt(abs(d))) / 2*a;
            fprintf('Phuong trinh co 2 nghiem phuc phan biet\nx1 = %f + %fi\nx2 = %f + (%fi)\n', real(x1), imag(x1), real(x2), imag(x2));
%             disp('Phuong trinh co 2 nghiem phuc phan biet')
            result = [x1, x2];
        elseif d==0
            x1 = -b / 2*a;
            fprintf('Phuong trinh co nghiem kep x = %5.10f\n', x1);
%             disp('Phuong trinh co nghiem kep');
            result = [x1];
        else
            x1 = (-b + sqrt(d)) / 2*a;
            x2 = (-b - sqrt(d)) / 2*a;
            fprintf('Phuong trinh co 2 nghiem thuc phan biet x1 = %5.10f, x2 = %5.10f\n', x1, x2);
%             disp('Phuong trinh co 2 nghiem thuc phan biet');
            result = [x1, x2];
        end    
    end
end