function result = TinhChuan_Vector(v, n)
%Tinh chuan 1,2,inf
%     if n == '1'
    result = 0;
    if n == 1
        for i=1:length(v)
            result = result + abs(v(i));
        end
    end
    if n == 2
        for i=1:length(v)
            result = result + v(i)^2;
        end
        result = result^0.5;
    end
    if n == 0
        maxV = abs(v(1));
        for i=2:length(v)
            if maxV < abs(v(i))
               maxV = abs(v(i)); 
            end
        end
        result = maxV;
    end
end