function c = combination(n,r)
% to hop n chap r
if n == r || r == 0
    c = 1;
elseif r == 1
    c = n;
else
    c = myFactorial(n)/(myFactorial(r)*myFactorial(n-r));
%     c = factorial_recursion(n)/(factorial_recursion(r)*factorial_recursion(n-r));
end
