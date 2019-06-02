function deviation = standard_deviation_function(image, mean)

    meanSquare = mean_local_area_function(image.^2);
    deviation = (meanSquare - mean.^2).^0.5;

end
