% Jackie Loven, jl2742, 5 February 2016

% 3D Test cases for the function that replaces non-priority materials in the original matrix with the priority material from the new matrix.

simple3DMatrix = zeros(5, 5, 3);
simple3DMatrix(:,:,1) = 1;
simple3DMatrix(:,:,3) = 3;
simple3DMatrix(3,3,:) = 1;
simple3DMatrix(2,:,2) = 1;
%disp(simple3DMatrix);

pillar3DMatrix = zeros(5, 5, 3);
pillar3DMatrix(:,:,1) = 1;
pillar3DMatrix(:,:,3) = 3;
pillar3DMatrix(3,3,:) = 1;
%disp(pillar3DMatrix);

newMatrix1_3D = save_material_3D(1, simple3DMatrix, pillar3DMatrix);
disp(newMatrix1_3D); disp(' ');

newMatrix2_3D = save_material_3D(3, pillar3DMatrix, simple3DMatrix);
disp(newMatrix2_3D); disp(' ');