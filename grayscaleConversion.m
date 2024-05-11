function grayscaleConversion(imagePath)
    colorImage = imread(imagePath);

    grayAverage = rgb2gray_average(colorImage);
    grayLuminosity = rgb2gray_luminosity(colorImage);
    grayDesaturation = rgb2gray_desaturation(colorImage);

    figure;
    colormap(gray);

    subplot(2, 2, 1);
    imshow(colorImage);
    title('Original Image');

    subplot(2, 2, 2);
    imagesc(grayAverage);
    title('Grayscale (Average)');

    subplot(2, 2, 3);
    imagesc(grayLuminosity);
    title('Grayscale (Luminosity)');

    subplot(2, 2, 4);
    imagesc(grayDesaturation);
    title('Grayscale (Desaturation)');
end

function grayImage = rgb2gray_average(colorImage)
    grayImage = mean(colorImage, 3);
end

function grayImage = rgb2gray_luminosity(colorImage)
    redChannel = colorImage(:, :, 1);
    greenChannel = colorImage(:, :, 2);
    blueChannel = colorImage(:, :, 3);

    grayImage = 0.2989 * redChannel + 0.5870 * greenChannel + 0.1140 * blueChannel;
end

function grayImage = rgb2gray_desaturation(colorImage)
    maxChannel = max(colorImage, [], 3);
    minChannel = min(colorImage, [], 3);

    grayImage = (maxChannel + minChannel) / 2;
end