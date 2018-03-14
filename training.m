function [weights,outs] = training (numOfLayers,neuronsPerLayer,input,weights,target,rate)
%INPUT:
%numOfLayers = number of layers (including output layers)
%neuronsPerLayer = vector specifies the number of neurons in each layer
%-note: input layer has 784 neurons
%       so will always be in the form [784 .. .. .. 1] 

D_weights = cell(numOfLayers,1);

%Preparation before training
%weights is a collection of weight matrices 

for i = 1:numOfLayers
    D_weights{i} = zeros(neuronsPerLayer(i),neuronsPerLayer(i+1));
end

%the target matrix is the identity matrix
%for digit i-1, target(i,i) = 1 while the other columns in row i are 0

%outs contains the OUT values for all layers except the input layer
nets = cell(numOfLayers,1);
outs = cell(numOfLayers,1);
deltas = cell(numOfLayers,1);

for i = 1: numOfLayers %intialize to 0
    deltas{i} = zeros(1,neuronsPerLayer(i+1));
    nets{i} = zeros(1,neuronsPerLayer(i+1));
    outs{i} = zeros(1,neuronsPerLayer(i+1)); %input layer does not have OUT's
end

%forward passing
nets{1} = NET(input,weights{1});
outs{1} = F(nets{1});
for i = 2:numOfLayers
    nets{i} = NET(outs{i-1},weights{i});
    outs{i} = F(nets{i});
end

result = outs{numOfLayers} %final result
err =  abs(target - result);
output_layer = numOfLayers;

%reverse passing: backward propagation
%output layer
deltas{output_layer} = dF(outs{output_layer})*err; % output layer delta
D_weights{output_layer} = rate* outs{output_layer -1}'*deltas{output_layer}; 
weights{output_layer} = weights{output_layer} + D_weights{output_layer};

%hidden layers
for j = numOfLayers-1:2
    deltas{j} = deltas{j+1}*weights{j+1}' .* dF(outs{j});
    D_weights{j} = rate* outs{j-1}'*deltas{j}; 
    weights{j} = weights{j} + D_weights{j};
end

%first hidden layer need to use input
deltas{1} = deltas{2}*weights{2}' .* dF(outs{1});
D_weights{1} = rate* input'*deltas{1}; 
weights{1} = weights{1} + D_weights{1};

            

end

