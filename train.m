op = zeros(10, tot);
op_test = zeros(10, test_tot);
actv1 = zeros(100, tot);
actv_test=zeros(100,test_tot);clc
cost_test = zeros(epochs, 1);
cost_train=zeros(epochs,1);
temparray=zeros(784,1);
for i = 1:epochs
    for a = 1:tot
        temparray=img(:,a);
        [op(:, a), actv1(:, a)] = nn_fp(temparray, layer1_weight, layer2_weight, layer1_bias, layer2_bias);
        [layer1_weight, layer2_weight, layer1_bias, layer2_bias] = backprop(a, layer1_weight, layer2_weight, op, responses, actv1, img, layer1_bias, layer2_bias);    
    end
    cost_train(i)=cost_calc(op,responses,tot);
    for b = 1:test_tot
        
        temparray=img_test(:,b);
        [op_test(:, b),actv_test(:, b)] = nn_fp(temparray, layer1_weight, layer2_weight, layer1_bias, layer2_bias);
    end
    cost_test(i) = cost_calc(op_test, res_test, test_tot);
end
hold on
plot(cost_train)
plot(cost_test);
hold off
xlabel('Epochs');
ylabel('Cost');
title('Cost Function vs. Epochs');
