load mnist_all.mat;
%routine
numOfLayers = 3;
neuronsPerLayer = [784 50 1];
weights1 = cell(numOfLayers-1,1);



rate = 0.1;

for i = 1:numOfLayers-1
    weights0{i} = randn(neuronsPerLayer(i),neuronsPerLayer(i+1));
    weights1{i} = randn(neuronsPerLayer(i),neuronsPerLayer(i+1));
    weights2{i} = randn(neuronsPerLayer(i),neuronsPerLayer(i+1));


end



for num = 1:size(train0,1)
    [weights0,outs0]=training(numOfLayers-1,neuronsPerLayer,double(train0(num,:)),weights0,0.5,rate);
end

for num = 1:size(train1,1)
    [weights1,outs1]=training(numOfLayers-1,neuronsPerLayer,double(train1(num,:)),weights1,0.5,rate);
end

for num = 1:size(train2,1)
    [weights2,outs2]=training(numOfLayers-1,neuronsPerLayer,double(train2(num,:)),weights2,0.5,rate);
end



fprintf("trainning completed, start testing.")

P = F(NET(F(NET(double(train0(1:1000,:)),weights0{1})),weights0{2}))
count = 0
for i = 1:1000
    if(abs(P(i)-0.5) < 0.1)
        count = count + 1;
    end
end
count
    