%% Hien thi da~y n so fibonacci
% n = input('Nhap n: ');
% s = [];
% if n<=0
%     disp('Khong hop le');
% elseif n==1
%     s = 1;
% elseif n==2
%     s = [1 1];
% else
%     s=[1 1];
%     for i=3:n
%         s(i)=s(i-1) + s(i-2);
%     end
% end
% disp(s)

%% So fibonacci thu n
% n = input('Nhap n: ');
% s = [];
% result = 0;
% if n<=0
%     disp('Khong hop le')
% elseif n==1 || n==2
%     result = 1;
% else
%     s = [1 1];
%     for i=3:n
%         s(i) = s(i-2) + s(i-1);
%     end
%     result = s(end);
% end
% disp(['So fibo thu ', num2str(n), ' la ', num2str(result)]);
