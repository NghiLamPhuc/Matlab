function S = matcos(A)
% final Cau 3 cos
S = A^0;
k = 1;
X = -0.5*A^2;
while abs(max(X(:))) > 0.00001
    S = S + (-1) ^ k / factorial(2*k) * A^(2*k);
    k = k + 1;
    X = (-1) ^ k / factorial(2*k) * A^(2*k);
end
end