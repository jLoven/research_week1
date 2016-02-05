simpleMatrix = zeros(4, 5);
rowCount = size(simpleMatrix,1);
columnCount = size(simpleMatrix,2);

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

for m = 1:rowCount
    for n = 1:columnCount
        if (pillarMatrix(m, n) == 1) && (simpleMatrix(m, n) != 1)
            simpleMatrix(m, n) = 1;
        end
    end
end

%disp(simpleMatrix); disp(' ');

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

xCount = size(simple3DMatrix,1);
yCount = size(simple3DMatrix,2);
zCount = size(simple3DMatrix,3);

for x = 1:xCount
    for y = 1:yCount
        for z = 1:zCount
            if (pillar3DMatrix(x, y, z) == 1) && (simple3DMatrix(x, y, z) != 1)
                simple3DMatrix(x, y, z) = 1;
            end
        end
    end
end

disp(simple3DMatrix);

