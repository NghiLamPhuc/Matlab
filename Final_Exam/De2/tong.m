function S = tong(n)
% S = n * ( (n-1) + ... + 1)
%          \_____   _____/
%                 V
% S = n *         A
%                 A = 1 + 2 + .. + (n-1)
    S = 0;
    for i=3:n
        A = 0;
        fprintf('%d*(', i);
        for j=i-1:-1:1
            A = A + j;
            fprintf('%d + ', j);
        end
        fprintf(')\n');
        S = S + i * A;
        disp(num2str(S));
    end
end