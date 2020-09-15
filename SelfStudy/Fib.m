function f = Fib(n)
F = zeros(1, n+1);
F(2) = 1;
for i = 3:n+1
    F(i) = F(i-1) + F(i-2);
end
f = F(n);
