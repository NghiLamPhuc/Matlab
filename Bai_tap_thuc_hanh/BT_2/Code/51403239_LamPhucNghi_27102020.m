% Ho ten: Lam Phuc Nghi
% MSSV: 51403239
% Ngay thuc hanh: 27/10/2020

clear all
close all
clc
format long

%% bai tap 1
n = input('n = ');
nGiaiThua = 1;
if n == 0
    nGiaiThua = 1;
elseif n>=1
    for i=2:n
        nGiaiThua = nGiaiThua * i;
    end
else
    nGiaiThua = -1;
end
if nGiaiThua == -1
    disp('Khong hop le');
else
    fprintf('n! = %d\n', nGiaiThua);
end

