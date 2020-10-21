function [B,rankMatrix] = get_echelon_matrix(A)
% Bien doi ma tran thanh ma tran bac thang
B = A;
[nRow, nCol] = size(B); % so dong, so cot
rankMatrix = nRow; % hang ma tran, khoi tao ban dau, de sau tinh

head = 1; % Cot dau tien khac 0

for row = 1 : nRow
    leftMostNonZeroRow = row;
    % Tim dong it so 0 ben trai nhat
    while B(leftMostNonZeroRow, head) == 0
        leftMostNonZeroRow = leftMostNonZeroRow + 1;
        if leftMostNonZeroRow > nRow
            leftMostNonZeroRow = row;
            head = head + 1;
            if head > nCol
                for i = 1 : nRow
                    if all(B(i, :) == 0)
                        rankMatrix = rankMatrix - 1;
                    end
                end
                return
            end
        end
    end
    % Doi cho dong it so 0 ben trai len tren
    B([row, leftMostNonZeroRow], :) = B([leftMostNonZeroRow, row], :);
    % Dua so dau tien cua dong it so 0 ve 1
    B(row, :) = B(row, :) / B(row, head);
    % Bien doi so cap tren cac dong con lai
    for restRow = (row + 1) : nRow
        B(restRow, :) = B(restRow, :) - (B(restRow, head) / B(row, head)) * B(row, :);
    end
    
    head = head + 1;
    if head > nCol
        for i = 1 : nRow
            if all(B(i, :) == 0)
                rankMatrix = rankMatrix - 1;
            end
        end
        return
    end
end
./
end