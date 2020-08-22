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
% if (diem>10)|(diem<0) disp('diem khong hop le')
% elseif diem<=4 disp('Yeu');
% elseif diem<=6 disp('Trung binh');
% elseif diem<=8 disp('Kha');
% else disp('Gioi')
% end

% ketqua = '';
% if (diem>10)|(diem<0) ketqua = 'diem khong hop le'
% elseif diem<=4 ketqua = 'Yeu'
% elseif diem<=6 ketqua = 'Trung binh'
% elseif diem<=8 ketqua = 'Kha'
% else ketqua = 'Gioi'
% end
% fprintf('%s',ketqua)

%% vd trang 11/31 chuong trinh doan tuoi
% r1 = rand(10,1);
% r2 = randi(10,3);
% r3 = randn(10,1);
% r4 = randperm(40,5);
% randi(40);
% a = 35;
% b = 45;
% r = (b-a).*rand(1) + a;
% r
