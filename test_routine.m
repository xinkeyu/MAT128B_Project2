%test routine
accuracy = 0;
for i = 1:size(test0,1)
    output1 = recog(test0,weights);
end

for i = 1:size(test1,1)
    output2 = recog(test1,weights);
end
