function [oplayer,actv1] = nn_fp(actv,layer1_weight,layer2_weight)
    actv1=nextlayer(actv,layer1_weight);
    actv1=actv1';
    oplayer=nextlayer(actv1,layer2_weight);
end