function A = usun_elementy_wieksze(A, a)
    i = 1;
    while i <= length(A)
        if a < A(i)
            A(i) = [];
        else
            i = i + 1;
        end
    end
end