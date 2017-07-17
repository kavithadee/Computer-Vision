I = imread('inputSeamCarvingPrague.jpg');
I2 = imread('inputSeamCarvingMall.jpg');

E = energy_image(I);
E2 = energy_image(I2);

[rI, rE] = reduce_width(I, E);
[rI2, rE2] = reduce_width(I2, E2);

for i = 1 : 99
    [rI, rE] = reduce_width(rI, rE);
    [rI2, rE2] = reduce_width(rI2, rE2);
end


imwrite(rI, 'outputReduceWidthPrague.png');
imwrite(rI2, 'outputReduceWidthMall.png');