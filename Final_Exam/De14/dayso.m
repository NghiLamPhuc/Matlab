function a_n = dayso(n)
% final cau 1:
% Tim phan tu a_n cua day so:
%  / a_1 = 1
% <
%  \ a_(n+1) = 5a_n - 3
%
% Syntax: dayso(n)
if n<=0 || mod(n,1)~=0
   a_n = 'empty';
   disp('n phai la so nguyen duong!');
else
    a_n = 1;
    for i=2:n
        a_n = 5*a_n - 3;
    end
end

% a_n = 1 --> a_1 = 1
% a_n = 5*1 - 3 = 2
% a_n = 5*2 - 3 = 7
% a_n = 5*7 - 3 = 33