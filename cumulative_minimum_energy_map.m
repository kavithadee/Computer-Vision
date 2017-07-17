function cumulativeEnergyMap = cumulative_minimum_energy_map(energyImage,seamDirection)

if strcmp(seamDirection,'HORIZONTAL')
    energyImage = transpose(energyImage);
end

I = energyImage;
rows = size(I, 1);
cols = size(I, 2);
E = zeros(rows, cols);
E = I(1,:);

for i = 2 : rows
    for j = 1 : cols
        if (j == 1)
            minArray = [E(i - 1, 1), E(i - 1, 2)];
            
        elseif (j == cols)
            minArray = [E(i - 1,j - 1), E(i - 1,j)];
            
        else
            minArray = [E(i - 1,j - 1), E(i - 1,j), E(i - 1, j + 1)];
            
        end
        
        E(i, j) = I(i, j) + min(minArray);
        
    end
end

if strcmp(seamDirection,'HORIZONTAL')
    E = transpose(E);
end

cumulativeEnergyMap = E;

%figure;
%imagesc(cumulativeEnergyMap);
%title('cumEnergy');
end
            
    