I = imread('inputSeamCarvingPrague.jpg');
I2 = imread('inputSeamCarvingMall.jpg');

E = energy_image(I);
E2 = energy_image(I2);

[rI, rE] = reduce_height(I, E);
[rI2, rE2] = reduce_height(I2, E2);

for i = 1 : 49
    [rI, rE] = reduce_height(rI, rE);
    [rI2, rE2] = reduce_height(rI2, rE2);
end

imwrite(rI, 'outputReduceHeightPrague.png');
imwrite(rI2, 'outputReduceHeightMall.png');