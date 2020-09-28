function S = bai6_a(x,n)
S = 0;
for k=0:n
    k_giaithua = 1;
    for i=2:k
        k_giaithua = k_giaithua * i;
    end
    S = S + x^k / k_giaithua;
end
end