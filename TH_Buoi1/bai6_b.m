function R = bai6_b(x,n)
R = 0;
for k=0:n
    k_giaithua = 1;
    for i=2:n
       k_giaithua = k_giaithua * i;
    end
    R = R + (-1)^k * x^(2*k + 1) / k_giaithua; 
end
end