function P = Giai_thua(n)
% Tinh giai thua
    if n<0
        P = -1;
    else
        P = 1;
        for i = 2:n
            P = P * i;
        end
    end
end