function resizeAndCompareImage(imagePath, targetWidth, targetHeight)
    originalImage = imread(imagePath);

    originalWidth = size(originalImage, 2);
    originalHeight = size(originalImage, 1);

    aspectRatio = originalWidth / originalHeight;

    targetAspectRatio = targetWidth / targetHeight;
    if aspectRatio > targetAspectRatio
        resizedWidth = targetWidth;
        resizedHeight = round(resizedWidth / aspectRatio);
    else
        resizedHeight = targetHeight;
        resizedWidth = round(resizedHeight * aspectRatio);
    end

    resizedImage = imresize(originalImage, [resizedHeight, resizedWidth]);

    figure;
    subplot(1, 2, 1);
    imshow(originalImage);
    title('Original Image');

    subplot(1, 2, 2);
    imshow(resizedImage);
    title('Resized Image');
end