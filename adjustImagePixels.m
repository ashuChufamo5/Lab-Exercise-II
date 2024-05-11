function adjustImagePixels(imagePath, scale, translation)
    image = imread(imagePath);

    adjustedImage = scale * double(image) + translation;

    adjustedImage = uint8(max(min(adjustedImage, 255), 0));

    figure;
    subplot(1, 2, 1);
    imshow(image);
    title('Original Image');
    subplot(1, 2, 2);
    imshow(adjustedImage);
    title('Adjusted Image');

    differenceImage = imabsdiff(image, adjustedImage);
    figure;
    imshow(differenceImage);
    title('Difference Image');
end

imagePath = 'path/to/image.jpg';

scale = 1.5;
translation = 50;

adjustImagePixels(imagePath, scale, translation);