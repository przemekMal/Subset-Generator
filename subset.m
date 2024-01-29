%The function creates a new subset by adding element n (if it is not -inf), removes elements greater than n, and returns the new subset along with the success status of the operation.
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
