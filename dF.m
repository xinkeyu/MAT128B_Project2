function o = diffF(Net)
    o = F(Net);
    o = o.*(1-o);
end