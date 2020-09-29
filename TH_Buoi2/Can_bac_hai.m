function S = Can_bac_hai(a, ep)
% Tinh can bac hai (Euclid) bang chuoi hoi tu
    if a<0
        disp('Khong hop le');
    else
       S = a;
       while abs((S + a/S)/2 - S) >= ep
          S = (S + a/S)/2;
       end
    end
end