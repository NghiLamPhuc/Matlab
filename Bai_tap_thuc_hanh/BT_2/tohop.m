function C = tohop(n, k)
%cu phap:
%   to hop(n, k). 0<=k<=n.
if n<0 || k<0 || k>n
    C = -1;
elseif n == k
    C = 1;
else
    
nGiaiThua = 1;
kGiaiThua = 1;
nkGiaiThua = 1;
C = 1;
for i = 1:n
    nGiaiThua = nGiaiThua * i;
    if i<=k
        kGiaiThua = kGiaiThua * i;
    end
    if i<=(n-k)
        nkGiaiThua = nkGiaiThua * i;
    end
    C = nGiaiThua / (kGiaiThua * nkGiaiThua);
end
end

end
