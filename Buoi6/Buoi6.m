clc
clear all
format long g

%% Bai 1
% Dùng switch-case
% Nh?p vào m?t s? nguyên d??ng trong ?o?n [1;9]
% N?u nh?p sai, báo không h?p l?
% N?u nh?p ?úng, ??c s? ?ó.

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
% Nh?p vào tháng và n?m, in s? ngày c?a tháng ?ó.

month = input('Nhap thang: ');
while isempty(month) || mod(month,1)~=0 || (month <= 0 && month > 12) 
    month = input('Nhap lai thang (1->12): ');
end
year = input('Nhap nam: ');
while mod(year,1)~=0 || isempty(year)
    year = input('Nhap lai nam: ');
end
switch month
    case 1;3;5;7;8;10;12;
        disp(['Thang ', num2str(month), ' co 31 ngay.'])
    case 2
        feb = 28;
        if (mod(year,400) == 0) || (mod(year,4) == 0 && mod(year,100) ~=0)
            feb = 29;
        end
        disp(['Thang 2 co ', num2str(feb) , ' ngay.'])
    otherwise
        disp(['Thang ', num2str(month), ' co 30 ngay.'])
end

%% Bai 3 for
% for i=2:9
%     for j=1:10
%         disp([num2str(i) ' x ', num2str(j), ' = ', num2str(i*j)])
%     end
% end

%% Bai 3 switch
% Dùng switch case in bang cuu chuong tu 2 toi 9
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

%% Ma tran
% ghep ma tran
% theo cot A = [B C]
% theo dong A = [B, C]
% xoa phan tu 1 hang, 1 cot NOT xoa theo vi tri

%% vidu 1
% A = [2 4 1; 6 7 2; 3 5 9];
% x = A(1,:)
% Y = A(end-1:end,:)      %= Y = A(2:3,:)
% S_r = sum(A,2)
% S_c = sum(A)





