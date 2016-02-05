simpleMatrix = zeros(4, 5);
%global rowCount = size(simpleMatrix,1);
%global columnCount = size(simpleMatrix,2);

simpleMatrix(3:4,:) = 1;
simpleMatrix(1,:) = 3;
simpleMatrix(2,:) = 2;
%disp(simpleMatrix); disp(' ');

pillarMatrix = zeros(4, 5);
pillarMatrix(4,:) = 1;
pillarMatrix(1,:) = 3;
pillarMatrix(2:3,:) = 2;
pillarMatrix(1:3,2) = 1;
pillarMatrix(1:3,4) = 1;
%disp(pillarMatrix); disp(' ');

function combinedMatrix = save_material(materialNumber, originalMatrix, newMatrix)
	assert(size(originalMatrix) == size(newMatrix), 'Matrix sizes are different.');
	rowCount = size(originalMatrix,1);
	columnCount = size(originalMatrix, 2);
	for m = 1:rowCount
	    for n = 1:columnCount
	        if (newMatrix(m, n) != materialNumber) && (originalMatrix(m, n) == materialNumber) 
	        	%  The following changes the original matrix to be more like the new one.
	            originalMatrix(m, n) = materialNumber;
	        end
	    end
	end
end

save_material(1, simpleMatrix, pillarMatrix);
disp(simpleMatrix); disp(' ');

