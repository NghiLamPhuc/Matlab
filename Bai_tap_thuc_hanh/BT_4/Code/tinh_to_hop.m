function C = tinh_to_hop(n, k)
% tinh to hop chap k cua n theo cong thuc
if k<0
    C = -1;
elseif k == 0
    if n<0
        C = -1;
    else % n>=0
        C = 1;
    end
else % k>0
    if n<k
        C = -1;
    elseif n == k
        C = 1;
    else % n>k
        C = tinh_giai_thua(n) / (tinh_giai_thua(k) * tinh_giai_thua(n - k));
    end
end 

end