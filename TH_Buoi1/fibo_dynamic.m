function n = fibo_dynamic(x)
% Lay danh sach x so fibonacci theo quy hoach dong
    if x>1
        n = [1 1];
        for i=1:x-2
            n = [n n(end)+n(end-1)]
        end
    elseif x==1
        n = 1;
    else
        n = [];
    end
end
