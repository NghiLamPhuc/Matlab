function f = Fibo(n)
% Day fibo tu 0 toi n
F = zeros(1, n);
F(1) = 1; F(2) = 1;
for i=3:n
    F(i) = F(i-2) + F(i-1);
end
f = F;
