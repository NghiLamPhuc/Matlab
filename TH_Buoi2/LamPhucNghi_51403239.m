%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 25/09/2020
clear all
close all
clc
format long

% ################################################     BT3

%% Bai 3
% % Nhap vao vector. Tiep theo nhap chuan can tinh 1,2,inf.
% % Xuat ra ket qua tinh chuan
% 
% % Nhap lan luot tung phan tu cua vector,
% % de ket thuc nhat mot ky tu bat ky.

% disp('Nhap cac phan tu cua vector.');
% v = [];
% while 1
%     n = input('Nhap vao so (hoac ky tu de thoat): ','s');
%     if isempty(str2num(n)) ~= 1
%         v(end+1) = str2num(n);
%     else
%         break;
%     end
% end
% disp(['Vector: ', num2str(v)]);
% while 1
%     % Nhap chuan 1, 2, inf. Neu nhap khong dung, bat nhap lai
%     c = input('Nhap chuan (1 hoac 2 hoac inf) hoac "e" de dung lai: ', 's');
%     % while strcmp(c,'1')==0 ...
%     while ismember(c, ['1', '2', 'inf', 'e']) == 0
%         c = input('Nhap lai: ', 's');
%     end
%     if c == 'e'
%         disp('Cam on. Hen gap lai!');
%         break;
%     else
%         result = 0;
%         resultStr = '';
%         switch c
%             case '1'
%                 resultStr = 'Chuan 1 =';
%                 for i=1:length(v)
%                     v_i = abs(v(i));
%                     result = result + v_i;
% %      Tao 1 string array: ghe'p cac strings bang ngoac vuongs  
%                     resultStr = [resultStr ' ' num2str(v_i) ' +'];%don gian hon strcat
%                 end
%                 resultStr = resultStr(1:end-1);% bo dau + cuoi cung
%                 
%             case '2'
%                 resultStr = 'Chuan 2 = (';
%                 for i=1:length(v)
%                     result = result + v(i)^2;
%                     resultStr = [resultStr ' ' num2str(v(i)) '^2 +' ];
%                 end
%                 result = result^(1/2);
%                 resultStr = resultStr(1:end-1);
%                 resultStr = [resultStr ')^(1/2) '];
%             case 'inf'
%                 max = abs(v(1));
%                 for i=2:length(v)
%                     v_i = abs(v(i));
%                     if v_i > max
%                         max = v_i;
%                     end
%                 end
%                 result = max;
%                 resultStr = 'Chuan 3 ';
%         end
%         resultStr = [resultStr '= ' num2str(result)];
%         disp(resultStr);
%     end
% end
%% Bai 3
% %a
% disp('Bai 3 ---------- a')
% S = 0; fibo = [1 1];% Du`ng array de luu danh sach fibo
% % %Can them vao fibo 8 so nua => i=1:8
% for i=1:8
% % % Cach 1: i+2: bat dau them so vao fibo o vi tri thu 3
%     fibo(i+2) = fibo(end) + fibo(end-1);
% % % Cach 2: dung dau [ ] de ghep cac phan tu ben trong []
% % % O day, fibo ghep them 1 phan tu moi: fibo(end) + fibo(end-1)
% % % Cach nay bi warning ve thoi gian cha.y
% %     fibo = [fibo fibo(end) + fibo(end-1)];
% end
% for i=fibo
%     S = S + i;
% end
% disp('10 so fibonacci dau tien: ');
% disp(fibo);
% fprintf('Tong = %d\n\n' ,S);
% 
% %b
% disp('Bai 3 ---------- b: F(n)<1000 and F(n+1)>=1000')
% % Tim n de  F(n)  <   1000
% % va       F(n+1) >=  1000
% % co nghia la tim vi tri so fibo lon nhat < 1000
% fibo = [1 1];
% n = 2; % n hien tai = 2 (vi fibo co 2 phan tu)
% while fibo(end) + fibo(end - 1) < 1000 % Neu so fibo tiep theo >= 1000, stop.
%     n = n + 1;
%     fibo(n) = fibo(end) + fibo(end - 1);
% end
% fprintf('n = %d. Danh sach %d so fibonacci: \n', n, n);
% for i=1:length(fibo)
%     fprintf('%d : %d\n', i, fibo(i));
% end
% %c
% disp('Bai 3 ---------- c')
% fibo = [1 1];
% fibo_2_5 = []; % danh sach cac so fibo chia het cho 2 hoac 5
% S = 0;
% for n=1:50
%     fibo(n + 2) = fibo(end) + fibo(end - 1);
%     cur = fibo(n + 2);
%     if mod(cur, 2) == 0 || mod(cur, 5) == 0
%         fibo_2_5(end + 1) = cur;
%         S = S + cur;
%     end
% end
% disp(['Day 50 so fibo: ' num2str(fibo)]);
% disp('Day so fibo chia het 2 hoac 5');
% for i=1:length(fibo_2_5)
%     fprintf('%d :   %d\n', i, fibo_2_5(i));
% end
% fprintf('Tong = %d\n', S);

%% Bai4
% % Tao mot vector ngau nhien gom 10^6 phan tu.
% % Tinh tong binh phuong cac phan tu (dung vong lap for)

% S = 0;
% v = rand(1, 10^6);
% for i=v
%     S = S + i^2;
% end
% S

%% Bai 5
% % x(x>0): tao ma?ng cac phan tu > 0 cua x.
% % size(x(x>0),2):
% %    - x(x>0): la ma?ng co so chieu: 1x5
% %    - size(...., 2): 2 lay kich thuoc chieu thu 2 = 5

% x = [4 0 5 -3 0 3 7 -1 6];
% disp(['So phan tu > 0: ' ,num2str(size(x(x>0),2))]);
% disp(x(x>0))
% disp(['So phan tu < 0: ' ,num2str(size(x(x<0),2))]);
% disp(x(x<0))
% disp(['So phan tu 0: ' ,num2str(size(x(x==0),2))]);
% disp(x(x==0))

%% Bai 6
% n = 0;
% x = 2;
% while abs(exp(x) - bai6_a(x, n+1)) > 10^(-6)
%     n = n + 1;
% end
% fprintf('e^%d     = %5.8f\n', x, exp(x));
% fprintf('S(n=%d) = %5.8f\n', n, bai6_a(x, n));
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n-1, abs(exp(x) - bai6_a(x,n-1)) )
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n, abs(exp(x) - bai6_a(x,n)) )
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n+1, abs(exp(x) - bai6_a(x,n+1)) )

%% Bai 7 dung while

% n = 1;
% S = 5/2; %5/1*(1+1)
% while S + (5 / ((n + 1) * (n + 2))) <= 4
%     n = n + 1;
%     S = S + (5 / (n * (n + 1)));
% end
% fprintf('n = %d => S = %f\n', n, S);
 
% n = 1;
% S = 1/4; %1/1*(1+3)
% while S < 1/2
%     n = n + 1;
%     S = S + (1 / (n * (n + 3)));
% end
% fprintf('n = %d => S = %f\n', n, S);
% 
% n = 1;
% S = 1/2; %1/(1+1)
% while S < 10
%     n = n + 1;
%     S = S + (n^2) / (n^2 + 1);
% end
% fprintf('n = %d => S = %f\n', n, S);

%% Bai 7 dung for
% n = 0;
% while 1
%     S = 0;
%     for k=1:n
%         S = S + (5 / (k * (k + 1)));
%     end
%     if S >= 4
%         break;
%     end
%     n = n + 1;
% end
% fprintf('n = %d', n);
% 
% n = 0;
% while 1
%     S = 0;
%     for k=1:n
%         S = S + 1 / (k * (k + 3));
%     end
%     if S >= 1/2
%         break;
%     end
%     n = n + 1;
% end
% fprintf('n = %d', n);
% 
% n = 0;
% while 1
%     S = 0;
%     for k=1:n
%         S = S + (k^2 / k^2 + 1);
%     end
%     if S >= 10
%         break;
%     end
%     n = n + 1;
% end
% fprintf('n = %d', n);
%% Bai 8
% %a
% % S = 1 + 3^2 + 5 + 7^2 + 9 + 11^2 + ... + 9999^2
% % S = (1 + 5 + 9 + ... + 9997) + (3^2 + 7^2 + 11^2 + ... + 9999^2)
% S = 0;
% for i=1:4:9999
%     S = S + i;
% end
% for i=3:4:9999
%     S = S + i^2;
% end
% fprintf('S = %d\n', S);
% % %b
% % S = 2^2 + 4 + 6^2 + 8 + ... + 9998^2
% % S = (2^2 + 6^2 + ... + 9998^2) + (4 + 8 + ... + 9996)
% S = 0;
% for i=2:4:9998
%     S = S + i*i;
% end
% for i=4:4:9998
%     S = S + i;
% end
% fprintf('S = %d\n', S);

%% Bai 9 
