function t = tinhXapXiTichPhan(a, b, n, c)
% Tinh xap xi tich phan theo phuong phap diem giua
    deltaX = (b - a) / n;
    t = 0;
    for i = 1:n
        x(i) = a + (i-1) * deltaX;
        x(i + 1) = a + i * deltaX;
        xmid(i) = (x(i) + x(i+1)) / 2;
        t = t + hamsof(xmid(i), c) * deltaX;
    end
    function f=hamsof(x, c)
        switch c
            case 1
                f = x^2;
            case 2
                f = sin(x);
        end
    end
end