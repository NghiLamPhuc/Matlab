function S = bai6_b(x,n)
S = 0;
for k=0:n
    k_giaithua = 1;
    for i=2:k
        k_giaithua = k_giaithua * i;
    end
    S = S + ((-1)^k)*(x^k / k_giaithua) * x^(2*k+1);
end
end