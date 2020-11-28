clc
clearvars
close all
% format long

%% Cau 1
% % a
% n = input('Nhap n = ');
% fprintf('Gia tri a_n la: %s \n', num2str(dayso(n)));
% 
% % kiem tra -------------------------------------------------------------
% a = 1;
% for i=2:10
%     disp(['5*' num2str(a)  ' - 3 = '  num2str(a*5 - 3)]);
%     a = 5*a - 3;
% end
% ----------------------------------------------------------------------

% % b, goi S la tong can tim
% S = 0;
% for n=2:5
%     a_n = dayso(n);
%     if mod(a_n, 2) == 0
%         fprintf('a_%d = %d \n', n, a_n);
%         S = S + a_n;
%     end
% end
% fprintf('Tong S = %d \n', S);

%% Cau 2
% % C crammer: be Quynh :))
% A = [1 -2 -1 3;
%      2 3 0 1;
%      1 0 -4 -2;
%      0 -1 3 1]; %     ma tr?n các h? s? c?a hpt
% B = [10; 8; 3; -7]; % ma tr?n h? s? t? do c?a hpt
% % det(A)
% for j=1:4
%     Aj = A;
%     Aj(:,j) = B; % ma
%                  %
%     x(j) = det(Aj)/det(A);
% end
% fprintf('He phuong trinh co nghiem (w; x; y; z) = %s\n', mat2str(x));

% % C1
% X = mat2str(A\B);
% % https://matrixcalc.org/vi/#%7B%7B-2,-1,3,1%7D,%7B3,0,1,2%7D,%7B0,-4,-2,1%7D,%7B-1,3,1,0%7D%7D%5E%28-1%29%2a%7B%7B10%7D,%7B8%7D,%7B3%7D,%7B-7%7D%7D
% fprintf('He phuong trinh co nghiem [x;y;z;w] = %s\n', X);
% 
% % C2
% A = [-2 -1 3 1 10; 3 0 1 2 8; 0 -4 -2 1 3; -1 3 1 0 -7];
% A = rref(A);
% X = mat2str(A(:, end));
% fprintf('He phuong trinh co nghiem [x;y;z;w] = %s\n', X);


%% Cau 3
% format long
% A = [(2/3)*pi pi/3; pi/6 (5/6)*pi]
% % A = input('Nhap ma tran A bat ky: \n');
% sA = matsin(A)
% cA = matcos(A)
% sA^2 + cA^2

%% Cau 4
% % a
% syms u(t)
% ode = t*diff(u,t) == t^2 + 3*u %ordinary differential equation
% cond = u(2) == 4; %condition
% uSol(t) = dsolve(ode, cond); %solve system of differential equations
% disp('a--------------------------------------')
% disp('Vay nghiem cua phuong trinh la');
% disp(uSol)
% disp('a--------------------------------------')
% % b) uSolt(t) = t^3 - t^2
% ezplot(uSol);
% grid on
% % c
% disp('c--------------------------------------')
% tSol = solve(uSol == 10, t)
% tSol = single(tSol)
% fprintf('Vay giao diem cua (C) va (d) la: (u; t) = (%d; %.4f)\n', 10, tSol(1));
% disp('c--------------------------------------')
% hold on
% t_ = 0:0.01:4;
% plot(t_, ones(size(t_)) * 10)
% plot(tSol(1), 10, '*r')


%% Cau 5
% format long
% r=0.5;
% i=0;
% sum_new=0;
% sum_old=-1;
% while sum_new > sum_old
%     sum_old = sum_new;
%     sum_new = sum_new + r^i;
%     i = i + 1;
% end
% sum_new




%% Cau 3
% format long g
% A = [(2/3)*pi pi/3; pi/6 (5/6)*pi];
% A = [1 2 3; 4 5 6; 7 8 9];
% matsin(A)
% sinm(A)

% % kiem tra ----------------------------------------------------------
% S = A;
% for k=1:11
%     S = S + (-1) ^ k / factorial(2*k + 1) * A^(2*k + 1);
% end
% S

% %----------------------------cos
% A = [0 1 1; 0 0 1; 0 0 0];
% matcos(A)
% 
% % kiem tra -----------------------------------------------------------
% S = A^0;
% for k=1:10
%     S = S + (-1)^k/factorial(2*k) * A^(2*k)
% end


%% Cau 5
% sum_old_output = fopen('sum_old.txt', 'w');
% sum_new_output = fopen('sum_new.txt', 'w');
% format long
% r=0.5;
% i=0;
% sum_new = 0;
% sum_old = -1;
% while sum_new > sum_old
%     sum_old = sum_new;
%     fprintf(sum_old_output, '%.20f\n', sum_old);
%     sum_new = sum_new + r^i;
%     fprintf(sum_new_output, '%.20f\n', sum_new);
%     i = i + 1;
% end
% sum_new
% fclose(sum_new_output);
% fclose(sum_old_output);
% %kiem tra ---------------------------------------------------------------
% fileID = fopen('r_mu_i.txt','w');
% for j=0:55
%     fprintf(fileID, '%.2f^%d = %.20f\n', r, j, r^j);
% end
% fclose(fileID);
% %------------------------------------------------------------------------
