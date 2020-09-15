clc
clear all
format long

%% Bai 1
% D�ng switch-case

% n = input('Nhap mot so nguyen ');
% switch n
%     case 1
%         disp('Mot')
%     case 2
%         disp('Hai')
%     case 3
%         disp('Ba')
%     case 4
%         disp('Bon')
%     case 5
%         disp('Nam')
%     case 6
%         disp('Sau')
%     case 7
%         disp('Bay')
%     case 8
%         disp('Tam')
%     case 9
%         disp('Chin')
%     otherwise
%         disp('Khong hop le')
% end

%% Bai 2
% Nhap v�o th�ng v� nam, in so ng�y cua th�ng.

% month = input('Nhap thang: ');
% year = input('Nhap nam: ');
% switch month
%     case {1,3,5,7,8,10,12}
%         disp('Co 31 ngay.')
%     case 2
%         if (mod(year,400) == 0) || (mod(year,4) == 0 && mod(year,100) ~=0)
%             disp('Co 29 ngay.')
%         else
%             disp('Co 28 ngay.')
%         end
%     otherwise
%         disp('Co 30 ngay')
% % cach viet khac:
% %         disp(['Thang ', num2str(month), ' co 30 ngay.'])
% %         disp(sprintf('Thang %d co 30 ngay', month));
% %         fprintf('Thang %d co 30 ngay\n', month);
% end

%{
Muon hien thi nhieu bien c�ng mot d�ng, d�ng '[ ]' de^? no^'i
c�c chuo^~i(string), c�ch nhau dau pha^?y.
num2str l� h�m chuye^?n so^' th�nh string
sprintf -> https://www.mathworks.com/help/matlab/ref/sprintf.html
%}

%% Bai 3 switch
% D�ng switch case in bang cuu chuong tu 2 toi 9
%{
switch case: chi? cha.y theo tung case, ne^n ca^`n cung cap truoc so^' n
Cho ne^n t la`m theo ca'ch hieu cu?a mi`nh.
%}

%{
####################################################### Cach 1:
Sau khi nguoi dung nhap n
bang cuu chuong la lay n*1 n*2 ... n*10 => chay for 10 lan.
%}

% n = input('n = ');
% for i=1:10
%     switch n
%         case 2
%             disp(['2 x ', num2str(i), ' = ', num2str(2*i)])
%         case 3
%             disp(['3 x ', num2str(i), ' = ', num2str(3*i)])
%         case 4
%             disp(['4 x ', num2str(i), ' = ', num2str(4*i)])
%         case 5
%             disp(['5 x ', num2str(i), ' = ', num2str(5*i)])
%         case 6
%             disp(['6 x ', num2str(i), ' = ', num2str(6*i)])
%         case 7
%             disp(['7 x ', num2str(i), ' = ', num2str(7*i)])
%         case 8
%             disp(['8 x ', num2str(i), ' = ', num2str(8*i)])
%         case 9
%             disp(['9 x ', num2str(i), ' = ', num2str(9*i)])
%         otherwise
%             disp('Chi nhap n tu 2 toi 9');
%     end
% end

%{
########################################################  Cach 2:
Sau khi nhap n, in bang cuu chuong cua n luon.
%}

% switch n
%     case 2
%         for i=1:10
%             disp(['2 x ', num2str(i), ' = ', num2str(2*i)])
%         end
%     case 3
%         for i=1:10
%             disp(['3 x ', num2str(i), ' = ', num2str(3*i)])
%         end
%     case 4
%         for i=1:10
%             disp(['4 x ', num2str(i), ' = ', num2str(4*i)])
%         end
%     case 5
%         for i=1:10
%             disp(['5 x ', num2str(i), ' = ', num2str(5*i)])
%         end
%     case 6
%         for i=1:10
%             disp(['6 x ', num2str(i), ' = ', num2str(6*i)])
%         end
%     case 7
%         for i=1:10
%             disp(['7 x ', num2str(i), ' = ', num2str(7*i)])
%         end
%     case 8
%         for i=1:10
%             disp(['8 x ', num2str(i), ' = ', num2str(8*i)])
%         end
%     case 9
%         for i=1:10
%             disp(['9 x ', num2str(i), ' = ', num2str(9*i)])
%         end
%     otherwise
%         disp('Chi nhap tu 1 toi 9');
% end

%{
So sanh 2 cach:
C1: Chay 10 la^`n lap, moi lan lap se tim case theo n => ca^`n 20 thao ta'c
C2: Tim case theo n truoc, roi chay 10 lan lap        => ca^`n 11 thao ta'c
May tinh xu ly nhanh, nen chenh lech thao tac k dang ke.
%}
%% Bai 4
%{ 
Tinh tien taxi. Nhap so km. 1. 1km dau tien, 15.000
2. Tu 2km den 5km, 13.500
3. Tu 6km tro di, 11.000
4. Tren 120km, tong tien giam 10
%}

% Na`y lam theo bai huong dan cua co tren lop, co them bot 1 so cho.
% km = input('Nhap so km: ');
% c = 0;
% if (0 <= km) && (km <= 1)
%     c = 1;
% elseif (2 <= km) && (km <= 5)
%     c = 2;
% elseif (6 <= km) && (km < 120)
%     c = 3;
% elseif km >= 120
%     c = 4;
% end
% switch c
%     case 1
%         disp('So tien la 15.000')
%     case 2
%         tien = 15000 + 13500 * (km - 1)
%     case 3
%         tien = 15000 + 4*13500 + (km-5)*11000
%     case 4
%         tien = 0.9*(15000 + 4*13500 + (km-5)*11000)
%     otherwise
%         disp('So km khong hop le')
% end


%% Bai 4 cach khac
% km = input('Nhap so km: ');
% tien = 0;
% switch true                                  % LUU Y switch giua 2 cach lam
%     case ((km >= 0) && (km <= 1))
%         disp('So tien la 15.000')
%         1                                   % de kiem tra chay dung hay sai
%     case ((km >= 2) && (km <= 5))
%         tien = (10^3)*(15 + 13.5 * (km - 1));
%         2
%     case ((km >= 6) && (km < 120))
%         tien = (10^3)*(15 + 4*13.5 + (km-5)*11);
%         3
%     case km >= 120
%         tien = 0.9*(10^3)*(15 + 4*13.5 + (km-5)*11);
%         4
%     otherwise
%         disp('khong hop le');
%         5
% end
% sprintf('Tong tien la: %f\n',tien)
% disp(sprintf('Tong tien la: %f\n',tien))
% fprintf('Tong tien la: %f\n',tien)

%{
De in so lon, khong co e+
vi du km = 123456789
tien -> 1.222222223700000e+12
sprintf -> 1222222223700.000000
ma` sprintf se~ in them te^n bien. VD: ans =
                                                 1222222223700.000000
Vay de bo? "ans =" di, dun`g them disp(sprintf)
Ma` disp(sprintf) co the thay bang fprintf
%}

