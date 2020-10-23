function result = doc_so_3_chu_so(n)
a = fix(n/100);
b = fix(mod(n, 100));
sArr = {'mo^.t' 'hai' 'ba' 'bon' 'nam' 'sau' 'bay' 'tam' 'chin'};

if b>=10
    result = [char(sArr(a)) ' tram ' doc_so_2_chu_so(b)];
elseif b == 0
    result = 'mo^.t tram';
else
    result = ['mo^.t tram le ' char(sArr(b))];
end

end