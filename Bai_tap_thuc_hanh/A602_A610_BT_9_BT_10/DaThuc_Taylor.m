function [P] = DaThuc_Taylor(f, n, x0)
syms x
P = f(x0);
for k=1:n
    derivative = diff(f,x,k);
    P = P + (derivative/factorial(k))*((x-x0)^k);
end
end