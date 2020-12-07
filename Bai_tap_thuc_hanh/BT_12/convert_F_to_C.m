function res = convert_F_to_C()
    while 1
        nhiet_do = input('Nhap nhiet do F: ');
        if isempty(nhiet_do)
            res = 'empty';
            break;
        end
        res = (5/9) * (nhiet_do - 32)
    end
end