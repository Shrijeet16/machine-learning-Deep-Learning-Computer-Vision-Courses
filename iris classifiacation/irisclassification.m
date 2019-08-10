
A = readtable('iris.txt' , 'ReadVariableName' , false);

%randomize table A for getting sparse result
A = A(randperm(size(A,1)) , :);

features = table2array(A(: , 1:4));
species = table2array(A(:,5));
species = grp2idx(species);

%spliting dataset into train and test model
trainfeatures = features(1:127 , :);
testfeatures = features(128:150 , :);

trainspecies = species(1:127 , :);
testspecies = species(128:150 , :);


%plotting histogram of test species; %this will work in newer version of
%matlab . it is useful in determining frequency of sample.
%C = categorical(trainspecies,[1 2 3],{'virginica','sentosa','versicolor'});
%h = histogram(C,'BarWidth',0.5);

h = histogram(trainspecies);

figure
plothist(trainfeatures(:,1));

figure
plothist(trainfeatures(:,2));

figure
plothist(trainfeatures(:,3));

figure
plothist(trainfeatures(:,4));










