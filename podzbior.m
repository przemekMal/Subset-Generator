function [A, sukces] = subset(n, X)
    A = X;
    if n ~= -inf
         X = horzcat(X, n);
         X = remove_elements_greater_than(X, n);
         A = X;
         sukces = true;
    else
        sukces = false;
    end
end
