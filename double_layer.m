function [weights,outs,result] = double_layer (neuronsPerLayer,input,weights,target,rate)


D_weights = cell(2,1);

for i = 1:2
    D_weights{i} = zeros(neuronsPerLayer(i),neuronsPerLayer(i+1));
end


nets = cell(2,1);
outs = cell(2,1);
deltas = cell(2,1);

for i = 1: 2 %intialize to 0
    deltas{i} = zeros(1,neuronsPerLayer(i+1));
    nets{i} = zeros(1,neuronsPerLayer(i+1));
    outs{i} = zeros(1,neuronsPerLayer(i+1)); %input layer does not have OUT's
end

%forward passing

nets{1} = input*weights{1};
outs{1} = F(nets{1});

nets{2} = outs{1}*weights{2};
outs{2} = F(nets{2});
result = outs{2}

err =  abs(target - result);


deltas{2} =(outs{2}*(1-outs{2}))*err; % output layer delta
D_weights{2} = rate * outs{1}'*deltas{2}; 
weights{2} = weights{2} + D_weights{2};

%hidden layers

deltas{1} = deltas{2}*weights{2}' .* (outs{1}.*(1-outs{1}));
D_weights{1} = rate * input'*deltas{1}; 
weights{1} = weights{1} + D_weights{1};

end

