function res = factorial_recursion(n)
% Tinh giai thua theo de quy
if n == 0 || n == 1
    res = 1;
else
    res = n * factorial_recursion(n - 1);
end
