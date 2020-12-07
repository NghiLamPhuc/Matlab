function J = Jacobi(u)
syms x y z
J = [diff(u(1), x)    diff(u(1), y)     diff(u(1), z);
     diff(u(2), x)    diff(u(2), y)     diff(u(2), z);
     diff(u(3), x)    diff(u(3), y)     diff(u(3), z)];
end