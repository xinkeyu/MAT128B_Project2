function [readDigit] = readDigit(digit,num)
%digit(0-9): determines which digit to read
%num(0-~5000): determines which row of the specified digit to read
%readDigit = a vector corresponding to the requested digit

load mnist_all.mat; %load the data
switch digit
    case 0
        readDigit = train0(num,:);
    case 1
        readDigit = train1(num,:);
    case 2
        readDigit = train2(num,:);
    case 3
        readDigit = train3(num,:);
    case 4
        readDigit = train4(num,:);
    case 5
        readDigit = train5(num,:);
    case 6
        readDigit = train6(num,:);
    case 7
        readDigit = train7(num,:);
    case 8
        readDigit = train8(num,:);
    case 9
        readDigit = train9(num,:);    
    
end

%display the digit
displayDigit(readDigit);
end

