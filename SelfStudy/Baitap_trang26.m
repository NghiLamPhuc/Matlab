clc
clearvars
format long

%% bai 3
% x = 10;
% if 0 < x && x < 10
%     y = 4*x
% elseif 10 < x && x < 40
%     y = 10*x
% else
%     y = 500
% end

%% bai 4
% bai4(5)
% bai4(110)

%% bai 5
% x = [1 8 3 9 0 1];
% sum(x)
% S = 0;
% for i=x
%     S = S + i;
% end
% S

% bai5b(x,3);
% cumsum(x);

%% bai 6
% start = tic();
% combination(100,35)
% combination_dynamic(10,5)
% nchoosek(10,5)
% % combination_recursion(100,35) % khong nen dung
% toc(start)

%% bai 7
% ar = rand([4,3])
% ar(ar<0.2) = 0; ar(ar>=0.2) = 1;
% ar

%% bai 8
% ar = rand([1,10^6]);
% start = tic();
% sum(ar)^2

% s = 0;
% for i=ar
%     s = s + i;
% end
% s^2
% toc(start)

%% bai 9
% ar = randi([0,100],1,10^6);
% start = tic();
% count = 0;
% for i=ar
%     if mod(i,3) == 0
%         count = count + 1;
%     end
% end
% count

% size(ar(mod(ar,3) == 0), 2) % ham size tra ve kich thuoc cua array [dong, cot]
                            % ,2 la chi lay so cot.
% toc(start)

%% bai 11
% x = [-4 0 5 -3 0 3 7 -1 6];
% bai11(x)

%% bai 12
% x = rand([1, 10])
% bai12(x)

