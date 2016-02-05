A = zeros(5,5);
for m = 1:5
    for n = 1:5
        A(m, n) = 1/(m + n - 1);
    end
end

disp(A)
