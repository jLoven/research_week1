% Jackie Loven, jl2742, 5 February 2016

% 3D Test cases for the function that ensures the final matrix has the right layer formation.

% Create 2 sample matrices: 
simple3DMatrix = zeros(5, 5, 4);
simple3DMatrix(:,:,1) = 1;
simple3DMatrix(:,:,3) = 3;
simple3DMatrix(3,3,:) = 1;
simple3DMatrix(2,:,2) = 1;
simple3DMatrix(:,4,2) = 2;

pillar3DMatrix = zeros(5, 5, 4);
pillar3DMatrix(:,:,1) = 1;
pillar3DMatrix(:,:,3) = 3;
pillar3DMatrix(3,3,:) = 1;

%disp(simple3DMatrix); disp(pillar3DMatrix);

% Replace things that aren't 1 or 0 with 1 if pillar3DMatrix has a 1 or 0 there:
newMatrix = prioritize_materials_3D(simple3DMatrix, pillar3DMatrix, 1, 0);
disp(newMatrix); disp(' ');

% Should produce three layers: all 5's, all 10's, all 6's from the bottom up.
newMatrixEdited = edit_final_matrix_3D(newMatrix, 5, 6, 10);
disp(newMatrixEdited); disp(' ');