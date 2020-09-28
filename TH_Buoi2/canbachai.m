function S = canbachai(a, epsilon)
% TInh can bac hai theo cong thuc lap
    if a>=0
        S = a;
        while abs((S + a/S)/2 - S) >= epsilon
            S = (S + a/S)/2;
        end
        
    else
        disp('Khong hop le');
    end
end
