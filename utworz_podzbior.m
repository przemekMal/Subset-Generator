function [A, sukces] = utworz_podzbior(zbior, A)
    max_element = znajdz_max_ele_zbioru_bez_A(zbior, A);
    if max_element ~= -inf
         A = horzcat(A, max_element);
         A = usun_elementy_wieksze(A, max_element);
         sukces = true;
    else
        sukces = false;
    end
end
