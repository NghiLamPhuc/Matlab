function g = tinh_giai_thua(n)
% tinh_giai_thua(n)
% n: integer
if n>=0
    g = 1;
    for i=2:n
        g = g * i;
    end
else
    g = -1;
end
end