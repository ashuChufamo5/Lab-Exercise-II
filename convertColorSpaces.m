function convertColorSpaces(imagePath)
    image = imread(imagePath);

    grayImage = rgb2gray(image);

    hsvImage = rgb2hsv(image);

    edgesOriginal = edge(image, 'Canny');

    edgesGrayscale = edge(grayImage, 'Canny');

    edgesHSV = edge(hsvImage(:,:,3), 'Canny');

    figure;
    subplot(2, 2, 1);
    imshow(image);
    title('Original Image');
    subplot(2, 2, 2);
    imshow(edgesOriginal);
    title('Edges (Original)');

    subplot(2, 2, 3);
    imshow(grayImage);
    title('Grayscale Image');
    subplot(2, 2, 4);
    imshow(edgesGrayscale);
    title('Edges (Grayscale)');

    figure;
    subplot(2, 2, 1);
    imshow(hsvImage);
    title('HSV Image');
    subplot(2, 2, 2);
    imshow(edgesHSV);
    title('Edges (HSV)');
end

imagePath = 'path/to/image.jpg';

convertColorSpaces(imagePath);