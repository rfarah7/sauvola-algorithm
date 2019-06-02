function sauvola_image = sauvola_function(image)

% k is the constant at 0.5
k = 0.5;

% make image grey scale
image = imread(image);
image = rgb2gray(image);

% Convert into double
double_img = double(image);

% Normalize image into the [0,1] range
double_img = double_img/ max(double_img(:));

% Average value
mean = mean_local_area_function(double_img);

% Standard deviation
standard_deviation = standard_deviation_function(double_img, mean);

% Sauvola formula
R = max(standard_deviation(:));
threshold_value = mean.*(1 + k .* ((standard_deviation / R)-1));
sauvola_image = threshold(double_img, threshold_value);
end

