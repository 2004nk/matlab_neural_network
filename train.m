op=zeros(10,60000);
actv1=zeros(32,60000);
actv2=zeros(32,60000);
for a=1:60000
    [op(:,a),actv1(:,a)]=nn_fp(img(:,a),layer1_weight,layer2_weight);
    [layer1_weight,layer2_weight]=backprop(a,layer1_weight,layer2_weight,op,responses,actv1,img);
end