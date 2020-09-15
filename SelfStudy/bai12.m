function res = bai12(x)
count = 0;
count2 = 0;
m = mean(x);
for i=2:length(x)
    if x(i)>=0.8 && x(i)<=0.85
         count = count + 1;
    end
    
end
res = count;
end