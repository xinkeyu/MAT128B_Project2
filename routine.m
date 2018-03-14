%routine
numOFLayers = 3;
neuronsPerLayer = [784 50 20 1]
weights = cell(3,1);

%Preparation before training
%weights is a collection of weight matrices 

for i = 1:3
    weights{i} = rand(neuronsPerLayer(i),neuronsPerLayer(i+1));
end

for i = 1:size(train5,1)
    input = double(train5(i,:));
    training (3,neuronsPerLayer,input,weights,5,0.05); 
end