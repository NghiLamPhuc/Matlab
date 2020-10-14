function result = xapXiTichPhan(a, b, n, f)
% Tich xap xi tich phan bang phuong phap diem giua
result = 0;
delta_x = (b-a)/n;
for i = 1:n
    x_mid = 0.5 * (2 * a + 2 * i - 1) * delta_x;
    result = result + f(x_mid) * delta_x;
end

end