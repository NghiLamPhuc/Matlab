function fibo_at = fibo_at_n(n)
% Lay so fibonaci o vi tri n
ar = zeros(1,n);
if n>2
    ar(1) = 1; ar(2) = 1;
    for i=3:n
        ar(i) = ar(i-2) + ar(i-1);
    end
    fibo_at = ar(end);
else
    fibo_at = 1;
end