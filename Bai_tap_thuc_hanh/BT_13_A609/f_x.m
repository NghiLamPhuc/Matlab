function res = f_x()
    while 1
        x = input('Nhap x: ');
        if isempty(x) || x==1
            res = 'empty';
            break;
        end
        res = log(1/(1-x))
    end
end