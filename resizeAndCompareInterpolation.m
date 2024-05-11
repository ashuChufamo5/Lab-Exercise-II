function resizeAndCompareInterpolation(imagePath, targetWidth, targetHeight)
    originalImage = imread(imagePath);

    figure;
    subplot(2, 2, 1);
    imshow(originalImage);
    title('Original Image');

    tic;
    resizedNN = imresize(originalImage, [targetHeight, targetWidth], 'nearest');
    nnTime = toc;

    subplot(2, 2, 2);
    imshow(resizedNN);
    title('Nearest Neighbor Interpolation');
    xlabel(sprintf('Time: %.4f s', nnTime));

    tic;
    resizedBilinear = imresize(originalImage, [targetHeight, targetWidth], 'bilinear');
    bilinearTime = toc;

    subplot(2, 2, 3);
    imshow(resizedBilinear);
    title('Bilinear Interpolation');
    xlabel(sprintf('Time: %.4f s', bilinearTime));

    tic;
    resizedBicubic = imresize(originalImage, [targetHeight, targetWidth], 'bicubic');
    bicubicTime = toc;

    subplot(2, 2, 4);
    imshow(resizedBicubic);
    title('Bicubic Interpolation');
    xlabel(sprintf('Time: %.4f s', bicubicTime));
end