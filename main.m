clc

zbior = [1,2,3,4,5,6,7];
A = [1,2,3,5];
n = 10; %Jeli chcemy wszystkie kolejne pozdbiory nie przekazuje do funkcji "n"
podzbiory = generate_subsets(zbior, A, n);

for i = 1:length(podzbiory)
    disp(podzbiory{i});
end
