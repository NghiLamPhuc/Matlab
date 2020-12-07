function [x] = He_PT(A, b)
dong = size(A);
cot = size(A, 2);
if dong ~= cot
    x = 'empty';
    disp('Ma tran khong vuong!');
else
    for i=1:dong
       Ai = A;
       Ai(:, i) = b;
       x(i) = det(Ai)/det(A);
    end
end
