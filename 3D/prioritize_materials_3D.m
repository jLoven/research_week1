% Jackie Loven, jl2742, 5 February 2016

% 3D implementation.
% This function accepts an original matrix, a matrix with a different material configuration, and a list of materials to prioritize.
% If an element in the new matrix has one of the priority materials, and the corresponding element in the original matrix does not, then the original matrix's element is replaced with the element from the new matrix.

function originalMatrix = prioritize_materials_3D(originalMatrix, newMatrix, varargin)
	assert(size(originalMatrix) == size(newMatrix), 'Matrix sizes are different.');
	xCount = size(originalMatrix, 1);
	yCount = size(originalMatrix, 2);
	zCount = size(originalMatrix, 3);
	nVarargs = length(varargin);
	for x = 1:xCount
        for y = 1:yCount
            for z = 1:zCount
                % Find a way to use find() with isEmpty() instead?
                isFound = false;
                for k = 1:nVarargs
                    if (newMatrix(x, y, z) == varargin{k})
                        isFound = true;
                    end
                end
                if (isFound == true && (originalMatrix(x, y, z) != newMatrix(x, y, z)))
                    originalMatrix(x, y, z) = newMatrix(x, y, z);
                end
            end
        end
    end
end