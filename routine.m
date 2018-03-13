%routine
numOFLayers = 4;
neuronsPerLayer = [784 50 20 1]
weights = cell(numOfLayers-1,1);

%Preparation before training
%weights is a collection of weight matrices 

for i = 1:numOfLayers-1
    weights{i} = randn(neuronsPerLayer(i),neuronsPerLayer(i+1));
end