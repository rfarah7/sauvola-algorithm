function mean_image = mean_local_area_function(img)

mean_filter = fspecial('average', [21 21]);
mean_image = imfilter(img, mean_filter);

end

