simpleMatrix = zeros(4, 5);
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

newMatrix1 = save_material_2D(1, simpleMatrix, pillarMatrix);
disp(newMatrix1); disp(' ');

newMatrix2 = save_material_2D(2, simpleMatrix, pillarMatrix);
disp(newMatrix2); disp(' ');

newMatrix3 = save_material_2D(3, simpleMatrix, pillarMatrix);
disp(newMatrix3); disp(' ');