function [layer1_weight, layer2_weight, layer1_bias, layer2_bias]=updatewb(tot,dlw1,dlw2,dlb1,dlb2, layer1_weight, layer2_weight, layer1_bias, layer2_bias)
    lr=0.8;
    layer1_weight=layer1_weight-(lr)*dlw1;
    layer1_bias=layer1_bias-(lr)*dlb1;
    layer2_weight=layer2_weight-(lr)*dlw2;
    layer2_bias=layer2_bias-(lr)*dlb2;
end
