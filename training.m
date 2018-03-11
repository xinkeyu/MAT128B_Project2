function [weights,outs] = training (numOfLayers,neuronsPerLayer)
%INPUT:
%numOfLayers = number of layers (including input and output layers)
%neuronsPerLayer = vector specifies the number of neurons in each layer
%-note: input layer has 784 neurons, output layer has 10 neurons
%       so will always be in the form [784 .. .. .. 10] 


%Preparation before training
%weights is a collection of weight matrices 
weights = cell(numOfLayers-1,1);

%TODO IN PART 5: assign a random number to each weight 
for i = 1:numOfLayers-1
    weights{i} = zeros(neuronsPerLayer(i),neuronsPerLayer(i+1));
end


%the target matrix is the identity matrix
%for digit i-1, target(i,i) = 1 while the other columns in row i are 0
target = eye(10);

%outs contains the OUT values for all layers except the input layer
outs = cell(numOfLayers-1,1);
for i = 1: numOfLayers-1 %intialize to 0
    outs{i} = zeros(1,neuronsPerLayer(i+1)); %input layer does not have OUT's
end

%TO DO IN PART 6: training the network
%A training pair for digit i should be (input, target(i+1))
%weights associated with layer i is weights{i-1}
%outputs associated with layer i is to be stored in outs{i-1}

end