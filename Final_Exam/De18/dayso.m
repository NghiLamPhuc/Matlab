function u = dayso(n)
uArr = [2 1];
if n == 1
    u = 2;
elseif n == 2
    u = 1;
else
    for i=3:n
       uArr(i) = uArr(i - 1) - uArr(i - 2);
    end
%     disp(num2str(uArr));
    u = uArr(end);
end
