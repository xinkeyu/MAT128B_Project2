function [output] = activate(inputs,weights)
%simulates the behavior of a neuron given vector of inputs and weights
%returns the output of the neuron
net = dot(inputs, weights);
output = 1/(1+exp(-1*net));
end

