clc; clear all; format long;
%% Bai 1. Tinh tong k^2/(k-1) k=5..20
% S = 0;
% for k=5:20
%     S = S + (k^2)/(k-1);
% end
% disp(['Bai 1, S = ', num2str(S)])

%% Bai 2. Dat Sn = sigma(k), k=1..n. Tinh sigma(Sn),n=1..10
% s=0;
% for n=1:10
%     for k=1:n
%         s = s + k;
%     end
% end
% disp(s)


% s1 = 0;
% for n=1:10
%     s2 = 0;
%     for k=1:n
%         s2 = s2 + k;
%     end
%     s1 = s1 + s2;
% end
% disp(['Bai 2, S = ', num2str(s1)])

%% Bai 3. Dung for..end tinh tong cac so chia het cho 3
%                                          va nho hon 50.
% S = 0;
% for i=3:50
%     if mod(i, 3) == 0
%         S = S + i;
%     end
% end
% disp(['Bai 3, S = ', num2str(S)])

%% Tim gia tri lon nhat cua n de sigma(k^2),k=1..n < 100
%% sigma(k^2),k=1..n <=> 1^2 + 2^2 + 3^2 + ... + n^2 < 100
% k = 1; S = 1;
% while S + (k+1)^2 < 100
%     k = k + 1;
%     S = S + k*k;
% end
% k


