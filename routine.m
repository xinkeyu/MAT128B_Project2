load mnist_all.mat;
%routine
numOfLayers = 3;
neuronsPerLayer = [784 50 1];
weights = cell(numOfLayers-1,1);
rate = 0.05

for i = 1:numOfLayers-1
    weights{i} = 0.001*randn(neuronsPerLayer(i),neuronsPerLayer(i+1));
end



for num = 1:size(train0,1)
    [weights,outs0]=training(numOfLayers-1,neuronsPerLayer,double(train0(num,:)),weights,0,rate);
end

for num = 1:size(train1,1)
    [weights,outs1]=training(numOfLayers-1,neuronsPerLayer,double(train1(num,:)),weights,0.1,rate);
end

for num = 1:size(train2,1)
    [weights,outs2]=training(numOfLayers-1,neuronsPerLayer,double(train2(num,:)),weights,0.2,rate);
end

for num = 1:size(train3,1)
    [weights,outs3]=training(numOfLayers-1,neuronsPerLayer,double(train3(num,:)),weights,0.3,rate);
end

for num = 1:size(train4,1)
    [weights,outs4]=training(numOfLayers-1,neuronsPerLayer,double(train4(num,:)),weights,0.4,rate);
end

for num = 1:size(train5,1)
    [weights,outs5]=training(numOfLayers-1,neuronsPerLayer,double(train5(num,:)),weights,0.5,rate);
end

for num = 1:size(train6,1)
    [weights,outs6]=training(numOfLayers-1,neuronsPerLayer,double(train6(num,:)),weights,0.6,rate);
end

for num = 1:size(train7,1)
    [weights,outs7]=training(numOfLayers-1,neuronsPerLayer,double(train7(num,:)),weights,0.7,rate);
end

for num = 1:size(train8,1)
    [weights,outs8]=training(numOfLayers-1,neuronsPerLayer,double(train8(num,:)),weights,0.8,rate);
end

for num = 1:size(train9,1)
    [weights,outs8]=training(numOfLayers-1,neuronsPerLayer,double(train9(num,:)),weights,0.9,rate);
end

printf("trainning completed, start testing.")