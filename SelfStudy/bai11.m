function res = bai11(x)
a = length(find(x>0));
b = length(find(x<0));
c = length(find(x==0));
res = ['So duong:', num2str(a), 'So am:', num2str(b), 'So 0:', num2str(c)];
end