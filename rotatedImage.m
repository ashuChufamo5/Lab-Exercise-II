function rotatedImage = rotateImage(image, angle)
    angleRad = deg2rad(angle);

    originalHeight = size(image, 1);
    originalWidth = size(image, 2);

    rotatedHeight = ceil(abs(originalHeight * cos(angleRad)) + abs(originalWidth * sin(angleRad)));
    rotatedWidth = ceil(abs(originalWidth * cos(angleRad)) + abs(originalHeight * sin(angleRad)));

    originalCenterX = ceil(originalWidth / 2);
    originalCenterY = ceil(originalHeight / 2);
    rotatedCenterX = ceil(rotatedWidth / 2);
    rotatedCenterY = ceil(rotatedHeight / 2);

    rotatedImage = uint8(zeros(rotatedHeight, rotatedWidth, size(image, 3)));

    for y = 1:rotatedHeight
        for x = 1:rotatedWidth
            xOffset = x - rotatedCenterX;
            yOffset = y - rotatedCenterY;
            originalX = round((cos(angleRad) * xOffset) + (sin(angleRad) * yOffset) + originalCenterX);
            originalY = round((-sin(angleRad) * xOffset) + (cos(angleRad) * yOffset) + originalCenterY);

            if originalX >= 1 && originalX <= originalWidth && originalY >= 1 && originalY <= originalHeight
                rotatedImage(y, x, :) = image(originalY, originalX, :);
            end
        end
    end

    figure;
    subplot(1, 2, 1);
    imshow(image);
    title('Original Image');

    subplot(1, 2, 2);
    imshow(rotatedImage);
    title('Rotated Image');
end

image = imread('path/to/image.jpg');

angle = 30;

rotatedImage = rotateImage(image, angle);