function [reducedColorImage,reducedEnergyImage] = reduce_width(im,energyImage)

I = im;
E = energyImage;
cumMap = cumulative_minimum_energy_map(E, 'VERTICAL');
seam = find_optimal_vertical_seam(cumMap);


rows = size(I,1);
cols = size(I,2);
for i=1:rows
            reducedColorImage(i,:,:) = I(i,[1:(seam(i)-1) (seam(i)+1):end],:);
            reducedEnergyImage(i,:) = E(i,[1:(seam(i)-1) (seam(i)+1):end]);
end

figure;
imshow(reducedColorImage);
figure;
imshow(reducedEnergyImage);

end