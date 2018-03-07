function [] = displayDigit(digit)
%Given a vector representing the digit, display the digit
digitImage = reshape(digit,28,28);
image(rot90(flipud(digitImage),-1)),
colormap(gray(256)), axis square tight off;

end

