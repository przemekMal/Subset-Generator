function [A, sukces] = podzbior(n, X)
    A = X;
    if n ~= -inf
         X = horzcat(X, n);
         X = usun_elementy_wieksze(X, n);
         A = X;
         sukces = true;
    else
        sukces = false;
    end
end
