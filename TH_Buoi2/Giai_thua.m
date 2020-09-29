function result = Giai_thua(n)
% Tinh giai thua
    if n<0
        disp('Khong hop le');
    else
        result = 1;
        for i = 2:n
            result = result * i;
        end
    end
end