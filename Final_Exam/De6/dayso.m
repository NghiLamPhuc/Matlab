function u = dayso(n)
uArr = [1 2];
if n<=0 || mod(n,1)~=0
    u = 'empty';
    disp('Nhap n nguyen duong.');
elseif n == 1
    u = 1;
elseif n == 2
    u = 2;
else
    for i=3:n
        uArr(i) = 3*uArr(i - 1) - uArr(i - 2) + 1;% co the bo ; de kiem tra
    end
    u = uArr(end);
end
