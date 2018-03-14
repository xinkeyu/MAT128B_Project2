load mnist_all.mat;
%routine
numOfLayers = 3;
neuronsPerLayer = [784 50 1];
weights = cell(numOfLayers-1,1);


for i = 1:numOfLayers-1
    weights{i} = 0.001*randn(neuronsPerLayer(i),neuronsPerLayer(i+1));
end



for num = 1:400
    
    [weights1,outs0]=training(numOfLayers-1,neuronsPerLayer,double(train1(num,:)),weights,0.15,0.05);
    weights = weights1;
    display(outs0{2});
end

