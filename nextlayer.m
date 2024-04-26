function actv = nextlayer(actva,weight,bias)
    actv=sigmoid((weight*actva)+bias);
end
