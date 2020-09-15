function p = permutation_calc(n,r)
if r == 0 || r == n
    p = 1;
elseif r == 1
    p = n;
else
    p = myFactorial(n)/myFactorial(n-r);
end
