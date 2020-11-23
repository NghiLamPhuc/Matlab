function a_n = dayso(n)
% final cau 1:
% Tim phan tu a_n cua day so:
%  / a_1 = 1
% <
%  \ a_(n+1) = 5a_n - 3
%
% Syntax: dayso(n)
a_n = 1;
i = 2;
while i<=n
    a_n = 5*a_n - 3; 
    i = i + 1;
end
