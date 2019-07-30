
A = readtable('iris.txt' , 'ReadVariableName' , false);

%randomize table A for getting sparse result
A = A(randperm(size(A,1)) , :);

features = table2array(A(: , 1:4));
species = table2array(A(:,5));
species = grp2idx(species);



