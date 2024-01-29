% This function finds the maximum element in the set `zbior` that is not present in the subset `A`.
function max_element = find_max_element_not_in_A(zbior, A)
    max_element = -inf;  % Set the initial value to negative infinity
    for i = 1:length(zbior)
        if ~ismember(zbior(i), A) && zbior(i) > max_element
            max_element = zbior(i);
        end
    end
end
