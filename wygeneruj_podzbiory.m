function podzbiory = wygeneruj_podzbiory(zbior, A, num)
    if nargin < 3
        k = length(zbior);
        num = (2^k - 1);
        podzbiory = {0};
    else
        podzbiory = {};
    end
    
    cnt = 2;
    for i = 1 : num
         n = znajdz_max_ele_zbioru_bez_A(zbior, A);
         [A, sukcess] = podzbior(n, A);
         if sukcess
            podzbiory{cnt} = A;
            cnt = cnt + 1;
         else
             break
        end
    end
end