clc
clear all
format long

%% trang 16,17.18
% mat = [1,2,3; 4 5 6; 7:2:11]
% zeros(3,3)
% zeros(3)
% ones(3,4)
% eye(4) %ma tran don vi
% diag([1 2 3 4]) %ma tran voi duong cheo chinh
% rand(3,3)  % | ma tran so thuc trong khoang [0,1]
% rand(3)    % |

% mat = randi(10,3,4) %ma tran 3 dong 4 cot, so nguyen tu 0-10
% mat(1,3) % phan tu tai vi tri dong 1, cot 3
% diag(mat)
% mat(:,1) % cot 1
% mat(1,:) % dong 1
% mat = [1 2 3; 4 5 6; 7 8 9]
% rows = size(mat,1)
% cols = size(mat,2)
% pages = size(mat,3)
% mat([2],[1 3]) % hien thi dong 2, cot 1, cot 3
% mat([1],end)

%%Bai tap
x = [1 4 8]; y = [2 1 5]; A = [2 7 9 7 ; 3 1 5 6 ; 8 1 2 5];
%a y' la chuyen vi cua y, tao ma tran 2 dong, dong 1 x, dong 2 y'
% se bi loi, vi khac kich thuoc
% [x;y']

%b Tao ma tran 2 dong, dong 1 la x, dong 2 la y
% [x;y]

%c Trich phan tu cua A: lay het do`ng. Moi dong lay cot 1, 4
% A(:,[1 4])

%d Trich phan tu cua A: lay dong 2, 3. Moi dong la cot 3, 1
% A([2 3], [3 1])

%e Lay het A, hien thi tren 1 cot, thu tu tren-duoi trai-phai
% A(:)
% reshape(A',[],1) % hien thi A tren 1 cot, thu tu trai-phai tren-duoi
% A' % chuyen vi cua A

%f Tao ma tran 2 dong, dong 1 la A, dong 2 trich phan tu cua A: lay dong
%cuoi. Tat ca cot
% [A;A(end,:)]

%g Trich phan tu cua A: lay dong 1,2,3. Tat ca cot.
% A(1:3,:)

%h Tao ma tran 2 dong, dong 1 la A, dong 2 trich phan tu cua A: lay dong
%1,2. Tat ca cot.
% [A;A(1 : 2,:)]





