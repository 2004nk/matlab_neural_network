load("mnist.mat");
X=training.images;
tot=60000;
%batch_size=1000;
epochs=1000;
test_tot=10000;
Y=test.images;
img=zeros(784,tot);
img_test=zeros(784,test_tot);
for i=1:tot
    for j=1:27
        for k=1:28
            img((28*j+k),i)=X(j,k,i);
        end
    end
end
img1=cast(img,'single');
for i=1:test_tot
    for j=1:27
        for k=1:28
            img_test((28*j+k),i)=Y(j,k,i);
        end
    end
end
label=(training.labels)';
responses=zeros(10,tot);
for i=1:tot
    x=label(1,i);
    if x>0
        responses(x,i)=1;
    else
        responses(10,i)=1;
    end
end
res=cast(responses,'single');
label_test=(test.labels)';
res_test=zeros(10,test_tot);
for i=1:test_tot
    x=label_test(1,i);
    if x>0
        res_test(x,i)=1;
    else
        res_test(10,i)=1;
    end
end

%image(X(:,:,1));
layer1_weight=rand(100,784);
layer2_weight=rand(10,100);
layer1_bias=rand(100,1);
layer2_bias=rand(10,1);
clear X
clear x
clear Y
clear i
clear j
clear k
