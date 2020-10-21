%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 18/09/2020
clear all
close all
clc
format long

%% Bai tap 1
% n = input('Nhap mot so bat ky: ');
% %c1
% ar = {'mot', 'hai', 'ba', 'bon', 'nam', 'sau', 'bay', 'tam', 'chin'};
% if n <= 9 && n >= 1
%     disp(char(ar(n)));
% else
%     disp('Khong hop le');
% end
% %c2
% switch n
%     case 1
%         disp('mot');
%     case 2
%         disp('hai');
%     case 3
%         disp('ba');
%     case 4
%         disp('bon');
%     case 5
%         disp('nam');
%     case 6
%         disp('sau');
%     case 7
%         disp('bay');
%     case 8
%         disp('tam');
%     case 9
%         disp('chin');
%     otherwise
%         disp('Khong doc duoc');
% end

%% Bai tap 2
% % Nhung nam tron the ky (xx00), chia het cho 400 thi nam nhuan
% %     (hoac 2 so dau trong nam chia het cho 4)
% % nam nhuan: 1600 2000 2400 2800
% % nam k nhuan: 1700 1800 1900 2100 2200 2300 2500 2600 2700 2900 3000
% thang = input('Nhap vao mot thang: ');
% nam = input('Nhap vao mot nam: ');
% switch thang
%     case {1;3;5;7;8;10;12}
%         disp('Co 31 ngay');
%     case 2
%         if mod(nam, 400) == 0 || (mod(nam, 4) == 0 && mod(nam, 100) ~= 0)
%             disp('Co 29 ngay');
%         else
%             disp('Co 28 ngay');
%         end
%     case {4;6;9;11}
%         disp('Co 30 ngay');
%     otherwise
%         disp('Khong hop le');
% end

%% bai tap 3
% % c1
% n = input('n = ');
% switch n
%     case 2
%         for i=1:10 fprintf('2x%d=%d\n', i, n*i); end
%     case 3
%         for i=1:10 fprintf('3x%d=%d\n', i, n*i); end
%     case 4
%         for i=1:10 fprintf('4x%d=%d\n', i, n*i); end
%     case 5
%         for i=1:10 fprintf('5x%d=%d\n', i, n*i); end
%     case 6
%         for i=1:10 fprintf('6x%d=%d\n', i, n*i); end
%     case 7
%         for i=1:10 fprintf('7x%d=%d\n', i, n*i); end
%     case 8
%         for i=1:10 fprintf('8x%d=%d\n', i, n*i); end
%     case 9
%         for i=1:10 fprintf('9x%d=%d\n', i, n*i); end
%     otherwise
%         disp('Chi nhap tu 2 toi 9');
% end
% 
% % c2
% n = input('n = ');
% ar = 2:1:9;
% switch true
%     case ismember(n, ar)
%         for i=1:10 fprintf('%dx%d=%d\n', n, i, n*i); end
%     otherwise
%         disp('Chi nhap tu 2 toi 9');
% end

%% bai tap 4
% km = input('km = ');
% thanhTien = 0;
% switch 1
%     case km>0 && km<=1
%         thanhTien = 15000;
%     case km>1 && km<=5
%         thanhTien = 15000 + 13500*(km-1);
%     case km>5 && km<=120
%         thanhTien = 15000 + 13500*4 + 11000*(km-5);
%     case km>120
%         thanhTien = 0.9*(15000 + 13500*4 + 11000*(km-5));
%     otherwise
%         thanhTien = 'Khong hop le';
% end
% % disp thi the^m format longG hoac format bank;
% fprintf('Thanh tien = %5.5f\n', thanhTien);

%% Bai tap 5

% L = input('Nhap chieu dai "m", L = ');
% unit = input('Nhap don vi can doi: ', 's');
% % %luu y, input k co 's' khi nhap string co dau nhay don: 'cm'
% switch unit
%     case 'km'
%         L1 = L*0.001;
%         fprintf('%f m = %f %s\n', L, L1, unit);
%     case 'hm'
%         L1 = L*0.01;
%         fprintf('%f m = %f %s\n', L, L1, unit);
%     case 'dam'
%         L1 = L*0.1;
%         fprintf('%f m = %f %s\n', L, L1, unit);
%     case 'dm'
%         L1 = L*10;
%         fprintf('%f m = %f %s\n', L, L1, unit);
%     case 'cm'
%         L1 = L*100;
%         fprintf('%f m = %f %s\n', L, L1, unit);
%     case 'mm'
%         L1 = L*1000;
%         fprintf('%f m = %f %s\n', L, L1, unit);
%     otherwise
%         disp('Khong hop le')
% end


% % Hoac
% L = input('Nhap chieu dai "m", L = ');
% unit = input('Nhap don vi can doi: ', 's');
% switch unit
%     case 'km'
%         L1 = L*0.001;
%     case 'hm'
%         L1 = L*0.01;
%     case 'dam'
%         L1 = L*0.1;
%     case 'dm'
%         L1 = L*10;
%     case 'cm'
%         L1 = L*100;
%     case 'mm'
%         L1 = L*1000;
%     otherwise
%         L1 = 'error';
% end
% if ~strcmp(L1,'error')% strcmp: string compare, giong nhau = 1, khac = 0.
%     fprintf('%f m = %f %s\n', L, L1, unit);
% else
%     disp('Khong hop le');
% end

%% Bai tap 6.

% M = input('Nhap can nang (kg): ');
% h = input('Nhap chieu cao (m): ');
% BMI = M/(h*h);
% fprintf('BMI = %f\n', BMI);
% switch true
%     case BMI > 0 && BMI < 18.5
%         disp('Duoi chuan BMI');
%     case (BMI >= 18.5) && (BMI < 25)
%         disp('Dat chuan BMI');
%     case (BMI >= 25) && (BMI < 30)
%         disp('Thua can');
%     case (BMI >= 30) && (BMI < 40)
%         disp('Beo - nen giam can');
%     case (BMI > 40) && (BMI < inf)
%         disp('Rat beo - can giam can ngay');
%     otherwise
%         disp('Khong hop le');
% end

%% Bai tap 7

% v = input('Nhap vector: ');
% c = input('Nhap chuan 1, 2, 0: ');
% result = 0;
% n = length(v);
% if c == 1
%     for i=1:n
%         result = result + abs(v(i));
%     end
% % %     Hoac ghi bang cach nay
% %     for i=v
% %         result = result + abs(i); 
% %     end
% elseif c == 2
%     for i=v
%         result = result + i^2;
%     end
%     result = result^0.5;
% elseif c == 0
%     maxV = abs(v(1));
%     for i=v
%         if abs(i) > maxV
%             maxV = abs(i);
%         end
%     end
%     result = maxV;
% else
%     result = 'Chuan khong hop le';
% end
% 
% disp(result);




