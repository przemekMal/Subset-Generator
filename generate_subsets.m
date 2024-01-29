%  This function generates subsets of the set zbior based on the provided parameters.
function subsets = generate_subsets(zbior, A, num)
    if nargin < 3
        k = length(zbior);
        num = (2^k - 1);
        subsets = {0};
    else
        subsets = {};
    end
    
    cnt = 2;
    for i = 1:num
        n = find_max_element_not_in_A(zbior, A);
        [A, success] = subset(n, A);
        if success
            subsets{cnt} = A;
            cnt = cnt + 1;
        else
            break
        end
    end
end
