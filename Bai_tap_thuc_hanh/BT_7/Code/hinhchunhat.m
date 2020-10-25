function [X] = hinhchunhat(X0, d, r)
A = X0;
B = [A(1), A(2) + d];
C = [B(1) - r, B(2)];
D = [C(1), A(2)];

pointCellArray = {{A, 'A'}, {B, 'B'}, {C, 'C'}, {D, 'D'}};
numPoints = numel(pointCellArray);
hold on;
grid on;
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

% plot([A(1), B(1)], [A(2), B(2)], 'r');
% plot([B(1), C(1)], [B(2), C(2)], 'r');
% plot([C(1), D(1)], [C(2), D(2)], 'r');
% plot([D(1), A(1)], [D(2), A(2)], 'r');

axis([-10 0 -5 5]);
end