function c = tohop_dong(n, k)
% to hop chap k, n phan tu
    arr = zeros(n + 1); %Tao ma?ng 2 chieu, bat dau tu 0 den n
    arr(1,1) = 1; % Phan tu dau tien = 1
    for i=2:n+1 % 
        arr(i,1) = 1; % To hop chap 0
        arr(i,i) = 1; % To hop chap i cua i.
        for j=2:n
            arr(i,j) = arr(i-1, j-1) + arr(i-1, j);
        end
    end
    % arr
c = arr(n + 1, k + 1);
end
