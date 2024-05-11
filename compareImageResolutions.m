function compareImageResolutions(imagePathLow, imagePathHigh)
    imageLow = imread(imagePathLow);

    imageHigh = imread(imagePathHigh);

    figure;
    subplot(1, 2, 1);
    imshow(imageLow);
    title('Low-Resolution Image');

    subplot(1, 2, 2);
    imshow(imageHigh);
    title('High-Resolution Image');

    resolutionLow = size(imageLow);
    resolutionHigh = size(imageHigh);

    fprintf('Low-Resolution Image Resolution: %d x %d\n', resolutionLow(1), resolutionLow(2));
    fprintf('High-Resolution Image Resolution: %d x %d\n', resolutionHigh(1), resolutionHigh(2));

    averageIntensityLow = mean(imageLow(:));
    averageIntensityHigh = mean(imageHigh(:));

    fprintf('Low-Resolution Image Average Intensity: %.2f\n', averageIntensityLow);
    fprintf('High-Resolution Image Average Intensity: %.2f\n', averageIntensityHigh);
end

imagePathLow = 'path/to/low_resolution_image.jpg';
imagePathHigh = 'path/to/high_resolution_image.jpg';

compareImageResolutions(imagePathLow, imagePathHigh);