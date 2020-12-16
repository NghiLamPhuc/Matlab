function S = tong_2(n)
S = 0;
for i=3:n
    A = 0;
    fprintf('%d*(', i);
    for j=1:i-1
        A = A + j;
        fprintf('%d + ', j);
    end
    S = S + i * A;
    disp(') + ');
end
fprintf(' = %d', S);