function [] =  display_seam(im,seam,seamDirection)
%function [] =  display_seam(im,hseam,vseam)

if strcmp(seamDirection,'HORIZONTAL')
    imagesc(im);
    hold on;
    plot(seam);

elseif strcmp(seamDirection, 'VERTICAL')
    imagesc(im);
    hold on;
    plot(seam,1:numel(seam));
    

end
end
