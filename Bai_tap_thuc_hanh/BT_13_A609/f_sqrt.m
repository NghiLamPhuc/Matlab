function res = f2()
    while 1
        x = input('Nhap x: ');
        if isempty(x) || x<0
            res = 'empty';
            break;
        end
        res = x**0.5
    end
end