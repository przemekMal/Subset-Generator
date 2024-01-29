%This function removes from subset A all elements greater than a, keeping only those that are less than or equal to a. The updated subset is returned as the result.
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
