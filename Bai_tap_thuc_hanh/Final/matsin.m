function S = matsin(A)
% final Cau 3
S = A; % k = 0
k = 1;
X = (-1)^k/factorial(2*k + 1)*A^(2*k + 1);%(-1/6) * A^3;% X = Sn+1(A) - Sn(A)
while abs(max(X(:))) >= 0.000000000000001
    S = S + X;
    k = k + 1;
    X = (-1)^k/factorial(2*k + 1)*A^(2*k + 1);
end
end