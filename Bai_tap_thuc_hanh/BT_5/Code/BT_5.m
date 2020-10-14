%Lam Phuc Nghi
%51403239
%Ngay thuc hanh: 25/09/2020
clc
clear all
close all
format long

% % ########################################## BT 5
%% Bai tap 1
% a = input('a = ');
% b = input('b = ');
% c = input('c = ');
% disp(DT_TamGiac_Vuong(a,b,c));

%% Bai tap 2
% x = input('x = ');
% disp(HamSo_f(x));
% disp(HamSo_g(x));
% disp(HamSo_h(x));

%% Bai tap 3
% a = input('a = ');
% b = input('b = ');
% [x,n] = Giai_PT_Bac_1(a,b);
% if n == 0
%     disp('Phuong trinh vo nghiem');
% else
%     fprintf('Phuong trinh co %d nghiem, x = %f\n', n, x);
% end

%% Bai tap 4
% a = input('a = ');
% b = input('b = ');
% c = input('c = ');
% [x1,x2] = (Giai_PT_Bac_2(a,b,c));
% if x1 == x2
%     fprintf('Phuong trinh co nghiem x = %f\n', x1);
% else
%     fprintf('Phuong trinh co 2 nghiem:\nx1 = %s\nx2 = %s\n', num2str(x1), num2str(x2));
% end
%% bai tap 5
% n = input('n = ');
% P = Giai_thua(n);
% if P == -1
%     disp('Khong hop le');
% else
%     fprintf('%d! = %d\n', n, P);
% end
%% bai tap 6
% n = input('n = ');
% k = input('k = ');
% if n<k
%     disp('Khong hop le');
% else
%     C = To_hop(n, k);
%     fprintf('To hop chap %d cua %d phan tu la: %d\n', k, n, C);
% end
%% bai tap 7
% v = input('Vector: ');
% n = input('Chuan (1,2,0): ');
% fprintf('Chuan %d = %f\n', n, TinhChuan_Vector(v, n));

%% bai tap 8
% a = input('a = ');
% ep = input('epsilon = ');
% S = Can_bac_hai(a, ep);
% if S==-1
%     disp('Khong hop le')
% else
%     fprintf('Can bac hai cua %d = %f\n', a, Can_bac_hai(a, ep));
% end

%% bai tap 9
% f_a = @(x) x^2;
% f_b = @(x) sin(x);
% xapXiTichPhan(0, 1, 10, f_a)
% xapXiTichPhan(0, pi, 10, f_b)

% tinhXapXiTichPhan(0, 1, 10, 1)
% tinhXapXiTichPhan(0, pi, 10, 2)

