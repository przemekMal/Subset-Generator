% This function creates a subset by adding the maximum element not in A to the existing subset.
function [A, success] = create_subset(zbior, A)
    max_element = find_max_element_not_in_A(zbior, A);
    if max_element ~= -inf
         A = horzcat(A, max_element);
         A = remove_elements_greater_than(A, max_element);
         success = true;
    else
        success = false;
    end
end
