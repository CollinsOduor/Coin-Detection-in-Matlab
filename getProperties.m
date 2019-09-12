function [center, radius] = getProperties(coins)
    stats = regionprops('table',coins,'Centroid','MajorAxisLength','MinorAxisLength');
    center = stats.Centroid;
    diameter = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
    radius = diameter / 2;
end