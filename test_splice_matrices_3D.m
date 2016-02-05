simple3DMatrix = zeros(5, 5, 3);
simple3DMatrix(:,:,1) = 1;
simple3DMatrix(:,:,3) = 3;
simple3DMatrix(3,3,:) = 1;
simple3DMatrix(2,:,2) = 1;
simple3DMatrix(:,4,2) = 2;

pillar3DMatrix = zeros(5, 5, 3);
pillar3DMatrix(:,:,1) = 1;
pillar3DMatrix(:,:,3) = 3;
pillar3DMatrix(3,3,:) = 1;

%disp(simple3DMatrix); disp(pillar3DMatrix);

% Replace things that aren't 1 or 0 with 1 if pillar3DMatrix has a 1 or 0 there:
newMatrix1 = splice_matrices_3D(simple3DMatrix, pillar3DMatrix, 1, 2, 1, 2, 1, 2);
disp(newMatrix1); disp(' ');