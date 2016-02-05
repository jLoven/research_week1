% Jackie Loven, jl2742, 5 February 2016

% 4D implementation.
% Takes a defined chunk of the new matrix and replaces the corresponding chunk in the original matrix.

function originalMatrix = splice_matrices_3D(originalMatrix, newMatrix, xSplitStart, xSplitEnd, ySplitStart, ySplitEnd, zSplitStart, zSplitEnd)
    for x = xSplitStart:xSplitEnd
        for y = ySplitStart:ySplitEnd
            for z = zSplitStart:zSplitEnd
                if (originalMatrix(x, y, z, 1) != newMatrix(x, y, z, 1))
                    originalMatrix(x, y, z, 1) = newMatrix(x, y, z, 1);
                end
            end
        end
    end
end
