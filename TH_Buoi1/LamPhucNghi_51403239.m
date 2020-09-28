%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 18/09/2020
clear all
close all
clc
format long

% Dung switch-case
%% Bai 1.
%{
Nhap L la chieu dai don vi met.
Tiep nhap don vi can doi (km, hm, dam, dm, cm, mm).
Hay xuat ra ket qua L1 doi chieu dai L tu don vi met
sang cac don vi tren.
VD: L=1, units = cm thi ket qua L1 = 100
Goi y: unit = input('Nhap input = ');
Nhung trong command window thi nen co dau nhay.
Nhap unit = 'cm'
%}

% L = input('Nhap chieu dai "m", L = ');
% unit = input('Nhap don vi can doi: ', 's');%luu y, khi nhap string co dau nhay don: 'cm'
% switch unit
%     case 'km'
%         L1 = L*0.001;
% %         disp([num2str(L1), ' km']);
%         fprintf('%5.5f m = %5.5f km\n', L, L1);
%     case 'hm'
%         L1 = L*0.01;
%         fprintf('%5.5f m = %5.5f km\n', L, L1);
%     case 'dam'
%         L1 = L*0.1;
%         disp([num2str(L1), ' dam']);
%     case 'dm'
%         L1 = L*10;
%         disp([num2str(L1), ' dm']);
%     case 'cm'
%         L1 = L*100;
%         disp([num2str(L1), ' cm']);
%     case 'mm'
%         L1 = L*1000;
%         disp([num2str(L1), ' mm']);
%     otherwise
%         disp('Khong hop le');
% end

%% Bai 2
%{
Nhap M (la kg), trong luong
     h (m) chieu cao
Tinh BMI = M/h^2
Xuat ra danh gia
- Duoi chuan BMI, it hon 18.5
- Chuan BMI tu 18.5 - 25
- Thua can: BMI tu 25 - 30
- Beo: tu 30 - 40
- Rat beo: BMI>40
%}

% M = input('Nhap can nang (kg): ');
% h = input('Nhap chieu cao (m): ');
% BMI = M/(h*h);
% disp(num2str(BMI));
% switch true
%     case BMI<18.5
%         disp('Duoi chuan BMI')
%     case (BMI>=18.5)&&(BMI<25)
%         disp('Dat chuan BMI')
%     case (BMI>=25)&&(BMI<30)
%         disp('Thua can')
%     case (BMI>=30)&&(BMI<40)
%         disp('Beo')
%     case (BMI>40)
%         disp('Rat beo')
%     otherwise
%         disp('Khong hop le')
% end

%% Bai 3
%{
Nhap vao vector. Tiep theo nhap chuan can tinh 1,2,inf.
Xuat ra ket qua tinh chuan
%}

%{
Nhap lan luot tung phan tu cua vector,
de ket thuc nhat mot ky tu bat ky.
%}
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
% %      Create a string array: concatenate strings into an array using square brackets  
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
%% Bai 3 khong dung function
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
%% Bai 3 function
% a) Tong 10 so fibo dau tien
% a = get_fibo_series_of_n(10);%lay danh sach 10 so dau tien
% S = 0;
% resultStr = 'S = ';
% for i=a
%     S = S + i;
%     resultStr = [resultStr num2str(i) ' + '];%Hien thi dang S = 1 + 1 + 2 + 3 + 5.....
% end
% resultStr = resultStr(1:end-3);
% resultStr = [resultStr ' = ' num2str(S)];
% disp(['3_2.a) Tong 10 so fibo dau tien: ', resultStr]);
% 
% % b) Tim n sao cho F(n) < 1000 va F(n + 1) >= 1000
% n_1 = 1;
% while fibo_at_n(n_1 + 1) < 1000
%     n_1 = n_1 + 1;
% end
% disp(['3_2.b)De fibo(n) < 1000 va fibo(n+1) >= 1000 thi n = ', num2str(n_1)]);
% disp(['Day ', num2str(n_1 + 1), ' so fibo']);
% disp(num2str(get_fibo_series_of_n(n_1 + 1)));
% disp(['So fibo thu ', num2str(n_1), ' : ' , num2str(fibo_at_n(n_1))]);
% disp(['So fibo thu ', num2str(n_1 + 1), ' : ' , num2str(fibo_at_n(n_1 + 1))]);
% 
% % c) Tinh tong f(n),n=1..50 voi f(n) chia het cho 2 hoac 5
% S_3c = 0;
% tic
% resultStr = 'S = ';
% for i=1:50
%     f_i = fibo_at_n(i);
%     if mod(f_i, 2)==0 || mod(f_i, 5)==0
%         resultStr = [resultStr num2str(f_i) ' + ']; %Neu k dung, thoi gian giam 10 lan.
%         S_3c = S_3c + f_i;
%     end
% end
% resultStr = resultStr(1:end-3);
% resultStr = [resultStr ' = ' num2str(S_3c)];
% disp(['Bai 3_2. c) ', resultStr])
% toc %tic toc hien thi thoi gian thuc thi.

%% Bai4
%{
Tao mot vector ngau nhien gom 10^6 phan tu.
Tinh tong binh phuong cac phan tu (dung vong lap for)
%}

% S = 0;
% v = rand(1, 10^6);
% for i=v
%     S = S + i^2;
% end
% S

%% Bai 5
%{
x(x>0): tao ma?ng cac phan tu > 0 cua x.
size(x(x>0),2):
   - x(x>0): la ma?ng co so chieu: 1x5
   - size(...., 2): 2 lay kich thuoc chieu thu 2 = 5
%}

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

% n = 0;
% x = 2;
% while abs(exp(x) - bai6_a(x, n+1)) > 10^(-12)
%     n = n + 1;
% end
% fprintf('e^%d     = %5.13f\n', x, exp(x));
% fprintf('S(n=%d) = %5.13f\n', n, bai6_a(x, n));
% fprintf('|e^%d - S(n=%d)| = %.12f\n', x, n-1, abs(exp(x) - bai6_a(x,n-1)) )
% fprintf('|e^%d - S(n=%d)| = %.12f\n', x, n, abs(exp(x) - bai6_a(x,n)) )
% fprintf('|e^%d - S(n=%d)| = %.12f\n', x, n+1, abs(exp(x) - bai6_a(x,n+1)) )


% n = 0; x = 2;
% S = 0;
% while abs(exp(x) - S) > 10^(-6)
%     n_giaithua = 1;
%     i = 2;
%     while i<=n
%         n_giaithua = n_giaithua*i;
%         i = i + 1;
%     end
%     S = S + x^n / n_giaithua;
%     n = n + 1;
% end
% fprintf('e^%d     = %5.8f\n', x, exp(x));
% fprintf('S(n=%d) = %5.8f\n', n, S);
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n, abs(exp(x) - S) )

% n = 0; %n tang dan qua cac vong lap
% x = 2; %mac dinh 1 so
% while 1
%     S = 0;
%     for k=0:n
%         k_giaithua = 1;
%         for i=2:k
%             k_giaithua = k_giaithua * i;
%         end
%         S = S + x^k / k_giaithua;
%     end
%     if abs(exp(x) - S) <= 10^(-6)
%         break;
%     end
%     n = n + 1;
% end
% fprintf('e^%d     = %5.8f\n', x, exp(2));
% fprintf('S(n=%d) = %5.8f\n', n, S);
% fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n, abs(exp(x) - S) )

%% Bai 6 sin(x)
n = 0;
x = 2;
while abs(sin(x) - bai6_b(x, n+1)) > 10^(-6)
    n = n + 1;
end
fprintf('sin(%d)     = %5.8f\n', x, sin(x));
fprintf('S(n=%d) = %5.8f\n', n, bai6_b(x, n));
fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n-1, abs(sin(x) - bai6_b(x,n-1)) )
fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n, abs(sin(x) - bai6_b(x,n)) )
fprintf('|e^%d - S(n=%d)| = %.7f\n', x, n+1, abs(sin(x) - bai6_b(x,n+1)) )



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



