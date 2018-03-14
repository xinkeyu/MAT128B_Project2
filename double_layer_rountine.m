%routine
neuronsPerLayer = [784 500 1];
weights = cell(2,1);

%Preparation before training
%weights is a collection of weight matrices 

for i = 1:2
    weights{i} = ones(neuronsPerLayer(i),neuronsPerLayer(i+1))/neuronsPerLayer(i);
end

for i = 1:1000
    input = double(train3(i,:));
    [weights, o,res] = double_layer (neuronsPerLayer,input,weights,3,0.01); 
end