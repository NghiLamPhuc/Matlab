function res = To_hop(n,k)
% Tinh to hop
    res = Giai_thua(n) / (Giai_thua(k) * Giai_thua(n - k));
end