count = 0
for i = 1:1000
    if(P(i) < 0.1)
        count = count + 1;
    end
end
count