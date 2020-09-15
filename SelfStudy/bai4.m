function h = bai4(T)
if 0 < T && T < 100
    h = T - 10;
elseif T > 100
    h = 0.45*T + 900;
end
