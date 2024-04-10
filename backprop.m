function [layer1_weight,layer2_weight] = backprop(i,layer1_weight,layer2_weight,op,responses,actv1,img)
    cost=0;
    learn_rate=0.15;
    for j= 1:10
        cost=cost+(responses(j,i)-op(j,i)^2);
    end
    cost=cost/2;
    del_weight2=zeros(10,32);
    del_weight1=zeros(32,784);
    for l=1:32
        x=0;
        for k=1:10
            x=x+((op(k,i)-responses(k,i))*(op(k,i)*(1-op(k,i))));
            del_weight2(k,l)=learn_rate*(x*(actv1(l,i)));
        end
        del_weight1(l,:)=x;
    end
    layer2_weight=layer2_weight-del_weight2;
    for m=1:32
        for n=1:784
            del_weight1(m,n)=learn_rate*(del_weight1(m,n))*(actv1(m,n)*(1-actv1(m,n)))*(img(n,i));
        end
    end
    layer1_weight=layer1_weight-del_weight1;
end
