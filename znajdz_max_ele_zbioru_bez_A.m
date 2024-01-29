function max_element = znajdz_max_ele_zbioru_bez_A(zbior, A)
    max_element = -inf;  % Ustaw początkową wartość na minus nieskończoność
    for i = 1:length(zbior)
        if ~ismember(zbior(i), A) && zbior(i) > max_element
            max_element = zbior(i);
        end
    end
end
