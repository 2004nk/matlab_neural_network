load("mnist.mat");
X=training.images;
Y=training.labels;
for i=1:60000
    for j=1:27
        for k=1:28
            img((28*j+k),i)=X(j,k,i);
        end
    end
end
id=img(:,1);
label=(training.labels)';
responses=zeros(10,60000);
for i=1:60000
    x=label(1,i);
    if x>0
        responses(x,i)=1;
    else
        responses(10,i)=1;
    end
end
layer1_weight=rand(32,784);
layer2_weight=rand(10,32);
clear X
clear x
clear Y
clear i
clear j
clear k