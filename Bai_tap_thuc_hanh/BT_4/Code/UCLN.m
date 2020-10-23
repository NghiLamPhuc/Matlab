function result = UCLN(a, b)
r = mod(a,b);
if r == 0
    result = b;
else
    result = UCLN(b, r);
end
end
