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
%% vd trang 6/31 giai phuong trinh bac nhat
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

%% vd trang 7/31 giai phuong trinh bac hai
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

%% vd trang 9/31
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
%% vd trang 11/31 chuong trinh doan tuoi
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

%% vd trang 12/31 tinh tong S = 1 + 2 + 3 + ... + n
n = NaN;
while isnan(n)
    n = str2num(input('Nhap so nguyen duong n = ','s'));
end
result = 'S =';
if mod(n,1)==0 & n>0
    if n==1 disp('S = 1')
    else
        tong = 0;
        for i=1:n
            tong = tong + i;
        end
        if n==2 result = strcat(result, ' 1 + 2 =');
        elseif n==3 result = strcat(result, ' 1 + 2 + 3 =');
        else result = strcat(result, [' 1 + 2 + ... + ', num2str(n), ' =']);
        end
        result = strcat(result, [' ', num2str(tong)]);
        disp(result)
    end
else
    disp('n phai la so nguyen duong')
end
