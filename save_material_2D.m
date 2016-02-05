% Jackie Loven, jl2742, 5 February 2016

% 2D implementation.
% This function takes a material number, an original matrix, and a new matrix. It replaces non-priority materials in the original matrix with the priority material from the new matrix.

function originalMatrix = save_material_2D(materialNumber, originalMatrix, newMatrix)
	assert(size(originalMatrix) == size(newMatrix), 'Matrix sizes are different.');
	rowCount = size(originalMatrix, 1);
	columnCount = size(originalMatrix, 2);
	for m = 1:rowCount
	    for n = 1:columnCount
	        if (newMatrix(m, n) == materialNumber) && (originalMatrix(m, n) != materialNumber)  
	            %  Doesn't actually mutate original matrix:
	        	originalMatrix(m, n) = materialNumber;
	        end
	    end
	end
end


