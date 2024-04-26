function [oplayer,actva] = nn_fp(actv,layer1_weight,layer2_weight,layer1_bias,layer2_bias)
    actva=nextlayer(actv,layer1_weight,layer1_bias);
    %actv1=actv1';
    oplayer=nextlayer(actva,layer2_weight,layer2_bias);
end
