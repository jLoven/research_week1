% Jackie Loven, jl2742, 5 February 2016

% 3D implementation.
% This function takes a material number, an original matrix, and a new matrix. It replaces non-priority materials in the original matrix with the priority material from the new matrix.

function originalMatrix = save_material_3D(materialNumber, originalMatrix, newMatrix)
	assert(size(originalMatrix) == size(newMatrix), 'Matrix sizes are different.');
	xCount = size(originalMatrix, 1);
	yCount = size(originalMatrix, 2);
	zCount = size(originalMatrix, 3);
	for x = 1:xCount
        for y = 1:yCount
            for z = 1:zCount
                if (newMatrix(x, y, z) == materialNumber) && (originalMatrix(x, y, z) != materialNumber)
                    originalMatrix(x, y, z) = materialNumber;
                end
            end
        end
    end
end