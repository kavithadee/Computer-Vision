function energyImage = energy_image(im)

G = rgb2gray(im);
[x,y] = imgradientxy(im2double(G), 'prewitt');
energyImage = sqrt((x.^2)+(y.^2));

%figure;
%imshow(energyImage);
%title('prewitt');
end
