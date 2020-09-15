function c = combination_dynamic(n, r)
% to hop chap r, n phan tu quy hoach dong
arr = zeros(n + 1);
arr(1,1) = 1;
for i=2:n+1
    arr(i,1) = 1;
    arr(i,i) = 1;
    for j=2:n
        arr(i,j) = arr(i-1, j-1) + arr(i-1, j);
    end
end
% arr
c = arr(n + 1, r + 1);
