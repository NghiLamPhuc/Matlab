%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 25/09/2020
clc
clear all
close all
format long

%% Bai tap 1: To hop
% n = input('Nhap n = ');
% k = input('Nhap k = ');
% ketqua = tohop(n,k);
% fprintf('C(%d,%d) = %d! / %d!(%d-%d)! = %f\n', k, n, n, k, n, k, ketqua);
% %disp(tohop_dong(n,k));

%% Bai tap 2: Tam giac Pascal
% %C1
% n = input('Nhap n = ');
% for i=0:n
%     for j=0:n-i
%        fprintf(' ') ;
%     end
%     for j=0:i
%         fprintf('%d ', tohop(i,j));
%     end
%     disp(' ');
% end

% %C2
% n = input('Nhap n = ');
% for i=0:n
%     row = blanks(2*(n-i));  %row la string tung do`ng cua tam giac
%     for j=0:i
%         row = [row num2str(tohop(i,j)) '   '];
%     end
%     row = [row blanks(2*(n-i))];
%     disp(row);
% end


%% Bai tap 3: 
% a = input('Nhap so nguyen a = ');
% while isempty(a) || mod(a,1)~=0
%     a = input('Nhap lai: ');
% end
% b = input('Nhap so nguyen b = ');
% while isempty(b) || mod(b,1)~=0
%     b = input('Nhap lai: ');
% end
% fprintf('UCLN = %d\n', UCLN(a,b));
% fprintf('BCNN = %d\n', BCNN(a,b));
%% Bai tap 4
% a = input('a = ');
% epsilon = input('nhap e = ');
% fprintf('%f \n',canbachai(a, epsilon));
%% Bai tap 5
% for i=1:1000
%     S = 0;
%     jStr = [];
%     for j=1:i-1
%         if mod(i,j)==0
%             S = S + j;
%             jStr = [jStr num2str(j) ' + '];
%         end
%     end
%     if S == i
%         disp([jStr(1:end-2) '= ' num2str(i)]);
%     end
% end
%% Bai tap 6
% num_str = 'mot, hai, ba, bon, nam, sau, bay, tam, chin'; %class=char
% num_str = strsplit(num_str, ', '); %class=cell -> num_str: cell array
% class(num_str)
% n = input('Nhap vao so 2 chu so: ');
% while length(num2str(n))<2
%     n = input('Nhap lai: ');
% end
% a = fix(n/10);
% b = mod(n,10);
% result = '';
% if a==1                                              %(10:19)
%     if b==0
%         result = 'mu*o*`i';
%     elseif b==5
%         result = 'mu*o*`i la(m';
%     else
%         result = ['m*o*`i ' strjoin(num_str(b))];
%     end
% elseif b==0                                         %(20:90:10)   
%     result = [strjoin(num_str(a)) ' mu*o*i'];
% elseif b==5                                         %(25:95:10)
%     result = [strjoin(num_str(a)) ' mu*o*i la(m'];
% else                                                %21,22,23,24,26..,31,32,..,93,94,96,..
%     result = [strjoin(num_str(a)) ' mu*o*i ' strjoin(num_str(b))];
% end
% fprintf('%s\n', result);
% % strjoin chuyen cell ve string