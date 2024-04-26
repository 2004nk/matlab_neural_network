function [layer1_weight, layer2_weight, layer1_bias, layer2_bias] = backprop(i, layer1_weight, layer2_weight, op, responses, actv1, img, layer1_bias, layer2_bias)
    learn_rate = 1;
    d_layer2weight = zeros(10, 100);
    d_layer1weight = zeros(100, 784);
    d_layer2bias = zeros(10, 1);
    d_layer1bias = zeros(100, 1);

    d=(op(:,i)-responses(:,i)).*(sigmoidprime(op(:,i)));

    d_layer2weight=d*actv1(:,i)';
    d_layer2bias=d;

    d1=layer2_weight'*d.*sigmoidprime(actv1(:,i));
    d_layer1weight=d1*sigmoid(img(:,i))';
    d_layer1bias=d1;

    layer1_weight=layer1_weight-(learn_rate/i)*d_layer1weight;
    layer1_bias=layer1_bias-(learn_rate/i)*d_layer1bias;
    layer2_weight=layer2_weight-(learn_rate/i)*d_layer2weight;
    layer2_bias=layer2_bias-(learn_rate/i)*d_layer2bias;

end
