function verticalseam = find_optimal_vertical_seam(cumulativeEnergyMap)

I = cumulativeEnergyMap;
rows = size(I, 1);
cols = size(I, 2);
verticalseam = zeros(rows,1);

[row, col] = min([I(end,:)]);
verticalseam(rows) = col;

for i = rows : -1 : 2
    if (col == 1)
        [row,pos] =  min([I(i - 1, col), I(i - 1, col + 1)]);
        if (pos == 2)
            col = col + 1;
        end
        
    elseif (col == cols)
        [row,pos] =  min([I(i - 1, col - 1), I(i - 1, col)]);
        if (pos == 1)
            col = col - 1;
        end
        
    else
        [row,pos] =  min([I(i - 1, col - 1), I(i - 1, col), I(i - 1, col + 1)]);
        if (pos == 1)
            col = col - 1;
        elseif (pos == 3)
            col = col + 1;
        end
    end
    
    verticalseam(i - 1) = col;
end
end

