function C = To_hop(n, k)
% Tinh to hop
    if n<k
        C = -1;
    else
        C = Giai_thua(n) / (Giai_thua(k) * Giai_thua(n - k));
    end
end