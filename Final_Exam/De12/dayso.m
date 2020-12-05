function u_n = dayso(n)
% if n<0.....blahblah
uArr = [2, 0];
if n == 1
    u_n = uArr(1);
elseif n == 2
    u_n = uArr(2);
else
    for i=3:n
        uArr(i) = 2*uArr(i - 1) - uArr(i - 2) + 1; % Co the bo ; de kiem tra
    end
    u_n = uArr(end);
end