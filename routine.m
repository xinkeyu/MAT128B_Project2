load mnist_all.mat;
%routine
numOfLayers = 3;
neuronsPerLayer = [784 50 10];
weights = cell(numOfLayers-1,1);


for i = 1:numOfLayers-1
    weights{i} = randn(neuronsPerLayer(i),neuronsPerLayer(i+1));
end

outs{10} = cell(1,10);

target = eye(10);
k = 0;
while k < 50
for num = 1:2000

    
    [weights1,outs{1}]=training(numOfLayers-1,neuronsPerLayer,double(train0(num,:)),weights,target(1,:),0.05);
    [weights2,outs{2}]=training(numOfLayers-1,neuronsPerLayer,double(train1(num,:)),weights1,target(2,:),0.05);
    [weights3,outs{3}]=training(numOfLayers-1,neuronsPerLayer,double(train2(num,:)),weights2,target(3,:),0.05);
    [weights4,outs{4}]=training(numOfLayers-1,neuronsPerLayer,double(train3(num,:)),weights3,target(4,:),0.05);
    [weights5,outs{5}]=training(numOfLayers-1,neuronsPerLayer,double(train4(num,:)),weights4,target(5,:),0.05);
    [weights6,outs{6}]=training(numOfLayers-1,neuronsPerLayer,double(train5(num,:)),weights5,target(6,:),0.05);
    [weights7,outs{7}]=training(numOfLayers-1,neuronsPerLayer,double(train6(num,:)),weights6,target(7,:),0.05);
    [weights8,outs{8}]=training(numOfLayers-1,neuronsPerLayer,double(train7(num,:)),weights7,target(8,:),0.05);
    [weights9,outs{9}]=training(numOfLayers-1,neuronsPerLayer,double(train8(num,:)),weights8,target(9,:),0.05);
    [weights10,outs{10}]=training(numOfLayers-1,neuronsPerLayer,double(train9(num,:)),weights9,target(10,:),0.05);
 
    weights = weights10;
    
end
    k = k+ 1;
    %display(k);
    %display(outs{1}{2});
end
