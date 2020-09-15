function c = combination_recursion(n, r)
% to hop chap r cua n phan tu, de quy
% cong thuc truy hoi
% r == 1 -> ketqua = n
% r == n hoac r == 0 -> ketqua = 1
% ketqua = tohop(n-1,r-1) + tohop(n-1,r)
if r == 0 || r == n
    c = 1;
elseif r == 1
    c = n;
else
    c = combination_recursion(n - 1, r - 1) + combination_recursion(n - 1, r);
end
