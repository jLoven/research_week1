% Editing the final matrix for the initial conditions:
% The first layer is conductor 1.
% The last layer is air, 0.
% The layer before this is conductor 2.

function originalMatrix = edit_final_matrix_3D(originalMatrix, bottomLayer, topLayer, underTopLayer)
    [xDim, yDim, zDim] = size(originalMatrix);
    originalMatrix(:,:,1) = bottomLayer;
    originalMatrix(:,:,zDim) = topLayer;
    originalMatrix(:,:,zDim - 1) = underTopLayer;
end
