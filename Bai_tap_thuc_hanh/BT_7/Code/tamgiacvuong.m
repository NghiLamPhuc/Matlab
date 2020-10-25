function [X] = tamgiacvuong(X0, a, b)
A = X0;
B = [A(1), A(2) + a];
C = [A(1) + b, A(2)];
pointCellArray = {{A, 'A'}, {B, 'B'}, {C, 'C'}};

hold on;
grid on;

numPoints = numel(pointCellArray);
for curr = 1:numPoints
    x1 = pointCellArray{1, curr}{1}(1);
    y1 = pointCellArray{1, curr}{1}(2);
    pointName = pointCellArray{1, curr}{2};
    
    text(x1, y1, pointName, 'HorizontalAlignment', 'right',...
        'VerticalAlignment', 'top');
    
    next = curr + 1;
    if next > numPoints
        next = next - numPoints;
    end
    x2 = pointCellArray{1, next}{1}(1);
    y2 = pointCellArray{1, next}{1}(2);
    
    plot([x1, x2], [y1, y2], 'r');
    
end
% % hoac ve don gian.
% plot([A(1) B(1)], [A(2) B(2)], 'r'); % tham so vector, plot ve y theo x
% plot([B(1) C(1)], [B(2) C(2)], 'r');
% plot([C(1) A(1)], [C(2) A(2)], 'r');
% text(A(1) - 1, A(2), 'A');
% text(B(1), B(2) + 1, 'B');
% text(C(1) + 1, C(2), 'C');
axis([-5 5 -5 5]);
end
