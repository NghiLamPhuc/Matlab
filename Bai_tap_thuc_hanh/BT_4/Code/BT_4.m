%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 25/09/2020
% clear all
clearvars
close all
clc
format long

%% Bai tap 1
% n = input('n = ');
% k = input('k = ');
% fprintf('To hop chap k cua n = %d\n', tinh_to_hop(n, k));
% fprintf('ham nchoosek = %d\n', nchoosek(n, k));

%% Bai tap 2
% n = input('n = ');
% % n = 10;
% for i = 0:n-1
%     fprintf( blanks(2*(n - 1 - i)) );
%     for j = 0:i
%         fprintf('%d', tinh_to_hop(i, j));
%         fprintf(blanks(3));
%     end
%     fprintf('\n');
% end

%% Bai tap 3
% a = input('a = ');
% b = input('b = ');
% % a = 80; b = 176;
% x = a; y = b;
% r = mod(a, b);
% while r ~= 0
%     x = y;
%     y = r;
%     r = mod(x, y);
% end
% UCLN = y;
% BCNN = a*b/UCLN;
% disp(UCLN);
% disp(BCNN);
% 
% gcd(a, b)
% lcm(a, b)

% a = 80; b = 176;
% % dung function
% disp(UCLN(a, b));
% disp(BCNN(a, b));

%% bai tap 4
% a = input('a = ');
% % a = 16;
% ep = 10^(-6);
% xCurr = a;
% xNext = (xCurr + a/xCurr)/2;
% while (xCurr - xNext) >= ep
%     xCurr = xNext;
%     xNext = (xCurr + a/xCurr)/2;
% end
% fprintf('%.10f\n', xCurr);

%% bai tap 5
% for i = 1:1000
%     S = 0;
%     for j=1:i-1
%         if mod(i, j) == 0;
%             S = S + j;
%         end
%     end
%     if S == i
%         fprintf('%d\n', i);
%     end
% end

% cach khac updating..
% cac uoc so cua mot so tu nhien, co the gom thanh cap. VD:
% uoc cua 100:
% (1,100), (2,50), (4,25), (5,20), (10,10)

%% bai tap 6
% n = input('n = ');
% disp(doc_so_2_chu_so(n));
% % in luon het :v
% for i=10:99
%     disp(doc_so_2_chu_so(i));
% end

%% bai tap 7
% for i = 100:999
%     disp(doc_so_3_chu_so(i));
% end