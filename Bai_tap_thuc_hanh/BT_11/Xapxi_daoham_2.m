function df = Xapxi_daoham_2(f, n, x0, h)
if n == 1
    df = double((subs(f, x0 + h) - subs(f, x0 - h)) / (2*h));
elseif n == 2
    df = double((subs(f, x0 + h) - 2*subs(f, x0) + subs(f, x0 - h)) / (h*h));
end