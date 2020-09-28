function res = tohop(n,k)
% to hop chap k cua n phan tu
    res = giaithua(n) / (giaithua(k)*giaithua(n-k));
end