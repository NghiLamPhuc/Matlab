function result = doc_so_2_chu_so(n)
s_1x = 'mu*o`*i';
s_x5 = 'lam'; % 'nham'
s_x1 = 'mo^"t';
sArr = {'mo^.t' 'hai' 'ba' 'bon' 'nam' 'sau' 'bay' 'tam' 'chin'};

a = fix(n/10);
b = fix(mod(n, 10));
if a == 1
    if b == 0
        result = s_1x;
    elseif b == 5
        result = [s_1x ' ' s_x5];
    else
        result = [s_1x ' ' char(sArr(b))];
    end
else
    if b == 0
        result = [char(sArr(a)) ' mu*o*i'];
    elseif b == 1
        result = [char(sArr(a)) ' mu*o*i ' s_x1];
    elseif b == 5
        result = [char(sArr(a)) ' mu*o*i ' s_x5];
    else
        result = [char(sArr(a)) ' mu*o*i ' char(sArr(b))];
    end
end
end