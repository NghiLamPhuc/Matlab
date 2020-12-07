function df = Xapxi_daoham(f, n, x0, h)
if n == 1
    df = (f(x0 + h) - f(x0 - h)) / (2*h);
elseif n == 2
    df = (f(x0 + h) - 2*f(x0) + f(x0 - h)) / (h*h);
end