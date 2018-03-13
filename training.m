function [weights,outs] = training (numOfLayers,neuronsPerLayer,input,weights,target,rate)
%INPUT:
%numOfLayers = number of layers (including input and output layers)
%neuronsPerLayer = vector specifies the number of neurons in each layer
%-note: input layer has 784 neurons
%       so will always be in the form [784 .. .. .. 1] 

D_weights = cell(numOfLayers-1,1);

%Preparation before training
%weights is a collection of weight matrices 

for i = 1:numOfLayers-1
    D_weights{i} = zeros(neuronsPerLayer(i),neuronsPerLayer(i+1));
end

%the target matrix is the identity matrix
%for digit i-1, target(i,i) = 1 while the other columns in row i are 0

%outs contains the OUT values for all layers except the input layer
nets = cell(numOfLayers-1,1);
outs = cell(numOfLayers-1,1);
deltas = cell(numOfLayers-1,1);
for i = 2: numOfLayers-1 %intialize to 0
    deltas{i} = zeros(1,neuronsPerLayer(i+1));
    nets{i} = zeros(1,neuronsPerLayer(i+1));
    outs{i} = zeros(1,neuronsPerLayer(i+1)); %input layer does not have OUT's
end

nets{1} = NET(input,weight{1});
out{1} = F(nets{1});
for i = 2:numOfLayers-1
    nets{i} = NET(out{i-1},weights{i-1});
    out{i} = F(nets{i});
end

result = out{numOfpalyers-1}; 
err =  abs(target - result);

deltas{numOfLayers - 1 } = dF(out{numOfLayers -1})*err; % output layer delta
D_weight{numOfLayers - 1 } = rate* deltas(numOfLayers -1)

for n = 1:numOfLayers-1
    for i = 1:neuronsPerLayer(n)
        for j = 1:neuronsPerLayer(n+1)
            
    
%TO DO IN PART 6: training the network
%A training pair for digit i should be (input, target(i+1))
%weights associated with layer i is weights{i-1}
%outputs associated with layer i is to be stored in outs{i-1}

end

