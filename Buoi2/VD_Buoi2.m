clc
clear all
format long

%% vd trang 5/31
% a=input('Nhap a = ');
% b=input('Nhap b = ');
% if a<b
%     disp('a nho hon b');
% end
% if a>b
%     disp('a lon hon b');
% end
% if a==b
%     disp('a bang b');
% end
% name = 'Alice';   
% age = 12;
% X = [name,' will be ',num2str(age),' this year.'];
% X = sprintf('%s will be %d this year.',name,age);
% disp(X)
% fprintf('%s will be %d this year.\n',name,age);
% A = randi(3,4);
% B = A(:);
% A = rand(3,4);
% A(:) = 1:12;
% C = {[2.6 4.7 3.9], rand(8)*6, 'C. Coolidge'};
%% vd trang 6/31                                 giai phuong trinh bac nhat
%{
a=input('nhap a=');
b=input('nhap b=');
if a~=0
    x=-b/a
    fprintf('nghiem so x = %9.5g\n', x);
else
    if b~=0
        disp('ptvn')
    else
        disp('ptvsn')
    end
end
%}

%% vd trang 7/31                                  giai phuong trinh bac hai
% a = input('Nhap a=');
% b = input('Nhap b=');
% c = input('Nhap c=');
% d = b*b-4*a*c;
% if d > 0
%     x1 = (-b+sqrt(d))/(2*a);
%     x2 = (-b-sqrt(d))/(2*a);
%     disp(['Phuong trinh co 2 nghiem x1 = ', num2str(x1), ', x2 = ', num2str(x2)])
% elseif d == 0
%     x = -b/(2*a);
%     fprintf('Phuong trinh co nghiem x = %3.4g\n', x)
% else
%     disp('phuong trinh vo nghiem')
% end

%% vd trang 9/31                                          xep loai hoc sinh
% diem = input('Nhap diem: ');
% if mod(diem,1)==0
%     if diem >= 0 & diem <= 4 disp('Loai yeu')
%     elseif diem <= 6 disp('Loai trung binh')
%     elseif diem <= 8 disp('Loai kha')
%     elseif diem <= 10 disp('Loai gioi')
%     else disp('Diem khong hop le')
%     end
% else
%     disp('Diem phai la so nguyen')
% end

% diem = input('Nhap diem:');
% if (diem==9)|(diem==10)
%     disp('Loai gioi')
% elseif (diem==7)|(diem==8)
%     disp('Loai kha')
% elseif (diem==5)|(diem==6)
%     disp('Loai trung binh')
% elseif (diem>=0)&(diem<=4)&(mod(diem,1)==0)
%     disp('Loai yeu')
% else
%     disp('Diem vao khong hop le')
% end
%% vd trang 11/31                                    chuong trinh doan tuoi
% % x = 29;
% x = randi([20 40], 1);
% tuoi = input('Nhap tuoi: ');
% if mod(tuoi,1)==0
%     if tuoi>x disp(['Tuoi lon hon ', num2str(x)])
%     elseif tuoi==x disp(['Tuoi bang ', num2str(x)])
%     else disp(['Tuoi nho hon ', num2str(x)])
%     end
% else
%     disp('Tuoi phai la so nguyen')
% end

%% vd trang 12/31                         tinh tong S = 1 + 2 + 3 + ... + n
% n = input('Nhap n = ');
% s = 0;
% for i=1:n
%     s = s + i;
% end
% disp(s)

% i = 1;
% while i<=n
%     s = s + i; i = i + 1;
% end
% disp(s)

% n = input('Nhap so nguyen duong n = ');
% while isempty(n) || n<=0 || mod(n,1)~=0
%     n = input('Nhap lai n = ');
% end
% result = 'S =';
% if n==1 disp('S = 1')
% else
%     tong = 0;
%     for i=1:n
%         tong = tong + i;
%     end
%     if n==2 result = strcat(result, ' 1 + 2 =');
%     elseif n==3 result = strcat(result, ' 1 + 2 + 3 =');
%     else result = strcat(result, [' 1 + 2 + ... + ', num2str(n), ' =']);
%     end
%     result = strcat(result, [' ',num2str(tong)]);
%     disp(result)
% end

%% vd trang 14/31                                          tinh n giai thua
% n = input('Nhap n = ');
% if n == 0 disp(1)
% else
%     g = 1;
%     for i=1:n
%         g = g * i;
%     end
%     disp(g)
% end

% g = 1; i = 1;
% while i<=n
%     g = g * i; i = i + 1;
% end
% disp(g)
% n = input('Nhap so nguyen khong am n = ');
% while isempty(n) || n<0 || mod(n,1)~=0
%     n = input('Nhap lai n = ');
% end
% if n<=1 disp('0! = 1')
% else
%     result = 1;
%     for i=1:n
%         result = result * i;
%     end
%     disp([num2str(n), '! = ', num2str(result)])
% end

%% vd trang 14/31                   tinh tong cac so nguyen chan tu 1 den n
% n = input('Nhap n = ');
% if n<=1 disp(0)
% else
%     s = 0;
%     for i=2:2:n
%         s = s + i;
%     end
%     disp(s)
% end

% s = 0; i = 2;
% while i<=n
%     s = s + i; i = i + 2;
% end
% disp(s)

% n = input('Nhap so nguyen duong n > 1, n = ');
% while isempty(n) || n <= 1 || mod(n,1)~=0
%     n = input('Nhap lai, n = ');
% end
% if n <= 3 disp('S = 2')
% else
%     resultStr = 'S =';
%     result = 0;
%     for i=2:2:n
%         result = result + i;
%         resultStr = strcat(resultStr, [' ', num2str(i), ' +']);
%     end
%     resultStr = resultStr(1 : end - 1);
%     resultStr = strcat(resultStr, [' = ', num2str(result)]);
%     disp(resultStr)
% end

%% vd trang 14/31    Tinh tong S = 1 + 1/2 - 1/3 + 1/4 - ... + (-1)^n * 1/n
% n = input('Nhap n = '); s = 1;
% for i=2:n
%     s = s + ((-1)^i)*(1/i);
% end
% disp(s)

% i = 2;
% while i<=n
%     s = s + ((-1)^i)*(1/i); i = i + 1;
% end
% disp(s)

% n = input('Nhap so nguyen duong n, n = ');
% while isempty(n) || n <= 0 || mod(n,1) ~= 0
%    n = input('Nhap lai, n = '); 
% end
% if n == 1 disp('S = 1')
% else
%     s = 1;
%     sStr = 'S = 1';
%     for i=2:n
%         s = s + ((-1)^i)*(1/i);
%         if mod(i,2) == 0
%             sStr = strcat(sStr, [' + 1/', num2str(i)]);
%         else
%             sStr = strcat(sStr, [' - 1/', num2str(i)]);
%         end
%     end
%     sStr = strcat(sStr, [' = ', num2str(s, '%.15f')]);
%     disp(sStr)
% end

%% vd trang 15/31                                     kiem tra so nguyen to
% tic
% n = input('Nhap n = ');
% dem = 0;
% for i=1:n
%     if rem(n, i) == 0
%         dem = dem + 1;
%     end
% end
% if dem == 2
%     disp('so vua nhap la so nguyen to')
% else
%     disp('so vua nhap khong phai la so nguyen to')
% end
% toc
% 
% tic
% n = input('Nhap n = ');
% c = 0;
% e = ceil(sqrt(n));
% if n == 2 disp('La so nguyen to')
% else
%     for i=2:e
%         if mod(n, i) == 0
%             c = 1;
%             break;
%         end
%     end
%     if c == 0 disp('La so nguyen to')
%     else disp('Khong la so nguyen to')
%     end
% end
% toc

%% bai tap trang 16/31                  Tinh so chu so cura mot so tu nhien
% n = input('Nhap n = ');
% r = 0;
% while n>0
%     n = fix(n/10);       % ceil bi infinity loop vi n>0 Ctrl+C de interupt
%     r = r + 1;
% end
% disp(['Co ', num2str(r), ' chu so'])

%% vd trang 17/31             Tinh tong so duong cho toi khi tong nay > 50,
%%                                          dem xem co bao nhieu so da nhap
% s = 0; countInp = 0; countPos = 0; n = 0;
% while s <= 50
%     n = input('Nhap so n = ');
%     if n>0 %&& mod(n,1) == 0 %                neu xet nguyen duong
%         s = s + n; countPos = countPos + 1;
%     end
%     countInp = countInp + 1;
% end
% disp(['Tong = ', num2str(s)])
% disp(['Co ', num2str(countPos), ' so duong'])
% disp(['Co ', num2str(countInp), ' so da nhap'])

%% vd trang 19/31
% nam = input('Nam = ');
% thang = input('Thang = ');
% ngay = 0;
% switch thang
%     case {1,3,5,7,8,10,12}, ngay = 31
%     case {4,6,9,11}, ngay = 30
%     case 2, if leapyear(nam), ngay = 29, else ngay = 28, end
%     otherwise, disp('Thang khong hop le')
% end

%% vd trang 20/31
% n = input('cho biet diem : ');
% disp('phan loai: ');
% switch n
%     case {0,1,2,3,4}
%         disp('loai yeu')
%     case {5,6}
%         disp('loai trung binh')
%     case {7,8}
%         disp('loai kha')
%     case {9,10}
%         disp('loai gioi')
%     otherwise
%         disp('khong hop le')
% end

% Bai tap buoi 4, 1/9/2020

%% switch case
