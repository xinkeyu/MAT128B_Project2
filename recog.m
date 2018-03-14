function output = recog(test, weights)
output = F(NET(F(NET(double(test1(1,:)),weights{1})),weights{2}));