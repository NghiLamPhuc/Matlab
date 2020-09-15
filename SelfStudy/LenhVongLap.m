clc
clear all
format long

%                                             for dung vector
% a = [1 2 3 -2 4]
% prod = 1;
% for i = a, prod = prod*i, end
% for i=1:size(a,2) prod = prod * a(i), end

%Tim gia tri lon nhat cua n de tong 1^2 + 2^2 + .. + n^2 < 100
% S = 1; n = 1;
% nArr = [1]; sArr = [1];
% while S < 100
%     n = n + 1; nArr(n) = n;
%     S = S + n^2; sArr(n) = S;
% end
% sArr
% nArr

% S = 1; n = 1;
% while S + (n + 1)^2 < 100
%     n = n + 1;
%     S = S + n^2;
% end
% n

% x = 1;
% while 1
%     xmin = x;
%     x = x/2;
%     if x == 0, break, end
% end
% ceil(xmin)


%%trang 24 Tinh chuan p cua vector x
% x = [1 2 3 4];
% p = input('p = ');
% switch p
%     case 1
%         y = sum(abs(x))
%     case 2
%         y = sqrt(x'*x)
%     case inf
%         y = max(abs(x))
%     otherwise
%         error('p phai la 1,2 hoac inf');
% end









