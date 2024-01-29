% This function generates all subsets of the set, starting from subset A, and returns them as a cell array.
function [A, sukces] = generate_subsets(zbior, A)
    max_element = find_max_element_not_in_A(zbior, A);
    if max_element ~= -inf
         A = horzcat(A, max_element);
         A = remove_elements_greater_than(A, max_element);
         sukces = true;
    else
        sukces = false;
    end
end
