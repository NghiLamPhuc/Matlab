function P = TinhChuan_Vector(v, n)
%Tinh chuan 1,2,inf
    P = 0;
    if n == 1
        for i=v %numel, size
            P = P + abs(i);
        end
    end
    if n == 2
        for i=1:v
            P = P + i^2;
        end
        P = P ^ 0.5;
    end
    if n == 0
        maxV = abs(v(1));
        for i=2:length(v)
            if maxV < abs(v(i))
               maxV = abs(v(i)); 
            end
        end
        P = maxV;
    end
end
