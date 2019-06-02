function output_img = threshold(img, tnumber)
    img(img < tnumber) = 0;
    img(img > tnumber) = 1;
    
    output_img = img;
end

