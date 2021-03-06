% Jackie Loven, jl2742, 5 February 2016

% 3D implementation.
% Takes a defined chunk of the new matrix and replaces the corresponding chunk in the original matrix.

function originalMatrix = splice_matrices_3D(originalMatrix, newMatrix, xSplitStart, xSplitEnd, ySplitStart, ySplitEnd, zSplitStart, zSplitEnd)
    for x = xSplitStart:xSplitEnd
        for y = ySplitStart:ySplitEnd
            for z = zSplitStart:zSplitEnd
                if (originalMatrix(x, y, z) != newMatrix(x, y, z))
                    originalMatrix(x, y, z) = newMatrix(x, y, z);
                end
            end
        end
    end
end
