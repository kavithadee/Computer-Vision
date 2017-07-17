function [reducedColorImage,reducedEnergyImage] = reduce_height(im, energyImage)

I = im;
E = energyImage;
cumMap = cumulative_minimum_energy_map(E, 'HORIZONTAL');
seam = find_optimal_horizontal_seam(cumMap);


rows = size(I,1);
cols = size(I,2);
for i=1:cols
            reducedColorImage(:,i,:) = I([1:(seam(i)-1) (seam(i)+1):end],i,:);
            reducedEnergyImage(:,i) = E([1:(seam(i)-1) (seam(i)+1):end],i);
end

%figure;
%imshow(reducedColorImage);
%figure;
%imshow(reducedEnergyImage);
end