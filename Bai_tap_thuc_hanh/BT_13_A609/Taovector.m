function [V] = Taovector(a,b)
V = [];
if a<b
    V = a:b;
elseif a>b
    for i=a:-1:b
       V(end+1) = i; 
    end
else
    V = a;
end


end