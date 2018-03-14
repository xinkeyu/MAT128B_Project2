function[result] = testing(numOfLayers,neuronsPerLayer,input,weights)
nets = cell(numOfLayers,1);
outs = cell(numOfLayers,1);
deltas = cell(numOfLayers,1);

for i = 1: numOfLayers %intialize to 0
    deltas{i} = zeros(1,neuronsPerLayer(i+1));
    nets{i} = zeros(1,neuronsPerLayer(i+1));
    outs{i} = zeros(1,neuronsPerLayer(i+1)); %input layer does not have OUT's
end


nets{1} = NET(input,weights{1});

outs{1} = F(nets{1});

for i = 2:numOfLayers
    nets{i} = NET(outs{i-1},weights{i});
    outs{i} = F(nets{i});
   
end

result = outs{numOfLayers}; %final result

end

function o = F(Net)
 
o = 1 ./ ( 1 + exp(-1*Net));
end

function n = NET(Input,Weight)
n  = Input*Weight;
end 