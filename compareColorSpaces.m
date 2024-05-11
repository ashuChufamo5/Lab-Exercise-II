function compareColorSpaces(imagePath
    rgbImage = imread(imagePath);

    figure;
    subplot(2, 2, 1);
    imshow(rgbImage);
    title('RGB Image');

    cmykImage = rgb2cmyk(rgbImage);

    subplot(2, 2, 2);
    imshow(cmykImage);
    title('CMYK Image');

    rgbImage2 = cmyk2rgb(cmykImage);

    subplot(2, 2, 3);
    imshow(rgbImage2);
    title('Converted RGB Image');

    diffImage = imabsdiff(rgbImage, rgbImage2);

    subplot(2, 2, 4);
    imshow(diffImage);
    title('Difference Image');
end

imagePath = 'path/to/image.jpg';

compareColorSpaces(imagePath);