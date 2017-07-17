function horizontalSeam = find_optimal_horizontal_seam(cumulativeEnergyMap)

I = cumulativeEnergyMap;
I2 = I';
horizontalSeam2 = find_optimal_vertical_seam(I2);
horizontalSeam = horizontalSeam2';
end