% Jackie Loven, jl2742, 5 February 2016

% 4D Test cases for the function that replaces non-priority materials in the original matrix with priority materials from the new matrix.

% Create 2 sample matrices:
simple4DMatrix = zeros(5, 5, 3, 5);
simple4DMatrix(:,:,1,1) = 1;
simple4DMatrix(:,:,3,1) = 3;
simple4DMatrix(3,3,:,1) = 1;
simple4DMatrix(2,:,2,1) = 1;
simple4DMatrix(:,4,2,1) = 2;

pillar4DMatrix = zeros(5, 5, 3, 5);
pillar4DMatrix(:,:,1,1) = 1;
pillar4DMatrix(:,:,3,1) = 3;
pillar4DMatrix(3,3,:,1) = 1;

%disp(simple3DMatrix); disp(pillar3DMatrix);

% Replace things that aren't 1 or 0 with 1 if pillar3DMatrix has a 1 or 0 there:
newMatrix4D = prioritize_materials_4D(simple4DMatrix, pillar4DMatrix, 1, 0);
disp(newMatrix4D); disp(' ');

newMatrix4D = prioritize_materials_4D(pillar4DMatrix, simple4DMatrix, 1, 0);
%disp(newMatrix4D); disp(' ');

newMatrix4D = prioritize_materials_4D(pillar4DMatrix, simple4DMatrix, 2, 1);
%disp(newMatrix4D); disp(' ');