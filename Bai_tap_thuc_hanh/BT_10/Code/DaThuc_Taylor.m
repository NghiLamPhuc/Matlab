function [P] = DaThuc_Taylor(f, n, x0)
% bai 10
syms x;
P = f(x0);
for k=1:n-1
    daoham(x) = diff(f(x), k);
    P = P + (subs(daoham, x0) * (x - x0)^k) / factorial(k);
end
end