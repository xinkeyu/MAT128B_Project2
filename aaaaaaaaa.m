tests = cell (1,10);
tests{1} = test0;
tests{2} = test1;
tests{3} = test2;
tests{4} = test3;
tests{5} = test4;
tests{6} = test5;
tests{7} = test6;
tests{8} = test7;
tests{9} = test8;
tests{10} = test9;

count = 0;
for i = 1:10
    for num = 1:100
    [M,I] =  max(testing(numOfLayers-1,neuronsPerLayer,double(tests{i}(num,:)),weights));
    if (i == I)
        count = count + 1;
    end  
    end
end