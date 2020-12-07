function res = f3()
    while 1
        x = input('Nhap x: ');
        if isempty(x) || x==1 || x<=0
            res = 'empty';
            break;
        end
        res = (1+x^0.5)/(x^2-x)
    end
end