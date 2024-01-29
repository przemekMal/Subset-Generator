%This function removes elements greater than a from the subset A.
function A = remove_elements_greater_than(A, a)
    i = 1;
    while i <= length(A)
        if a < A(i)
            A(i) = [];
        else
            i = i + 1;
        end
    end
end
