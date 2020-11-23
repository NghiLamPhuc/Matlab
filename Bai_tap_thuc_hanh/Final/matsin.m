function S = matsin(A)
% final Cau 3
S = A; % k = 0
k = 1;
X = (-1)^k/factorial(2*k + 1)*A^(2*k + 1); % X = Sn+1(A) - Sn(A)
while abs(max(X(:))) >= 0.000000000001
    S = S + (-1)^k / factorial(2*k + 1) * A^(2*k + 1);
    k = k + 1;
    X = (-1)^k/factorial(2*k + 1)*A^(2*k + 1);
end
end