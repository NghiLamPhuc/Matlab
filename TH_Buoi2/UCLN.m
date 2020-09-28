% function res = UCLN(a,b)
% % UCLN theo cong thuc
%     x = a; y = b;
%     while y ~= 0
%        r = mod(x, y);
%        x = y;
%        y = r;
% %        fprintf('%d %d %d\n', x,y,r);
%     end
%     res = x;
% end

function res = UCLN(a,b)
    r = mod(a,b);
    while r~=0
        a = b;
        b = r;
        r = mod(a,b);
    end
    res = b;
end

% function res = UCLN(a,b)
%     if mod(a,b)==0
%         res = b;
%     else
%         fprintf('%d %d\n',b,mod(a,b));
%         res = UCLN(b, mod(a,b));
%     end
% end
