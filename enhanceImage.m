function enhanceImage(imagePath)
    image = imread(imagePath);

    grayImage = rgb2gray(image);

    equalizedImage = histeq(grayImage);

    stretchedImage = imadjust(grayImage);

    figure;
    subplot(2, 3, 1);
    imshow(image);
    title('Original Image');
    subplot(2, 3, 4);
    imhist(grayImage);
    title('Histogram (Original)');

    subplot(2, 3, 2);
    imshow(equalizedImage);
    title('Equalized Image');
    subplot(2, 3, 5);
    imhist(equalizedImage);
    title('Histogram (Equalized)');

    subplot(2, 3, 3);
    imshow(stretchedImage);
    title('Stretched Image');
    subplot(2, 3, 6);
    imhist(stretchedImage);
    title('Histogram (Stretched)');
end

imagePath = 'path/to/image.jpg';

enhanceImage(imagePath);