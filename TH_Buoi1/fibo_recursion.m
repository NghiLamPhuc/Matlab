function [n] = fibo_recursion(x)
% Lay so fibonacci thu x, de quy
if (x == 1 || x == 0)
    n = x;
    return
else
    n = fibo_recursion(x - 1) + fibo_recursion(x - 2);
end
end
