function croppedImage = cropImage(image, topLeftX, topLeftY, bottomRightX, bottomRightY)
    imageSize = size(image);
    imageHeight = imageSize(1);
    imageWidth = imageSize(2);

    topLeftX = max(1, topLeftX);
    topLeftY = max(1, topLeftY);
    bottomRightX = min(imageWidth, bottomRightX);
    bottomRightY = min(imageHeight, bottomRightY);

    cropWidth = bottomRightX - topLeftX + 1;
    cropHeight = bottomRightY - topLeftY + 1;

    croppedImage = image(topLeftY:bottomRightY, topLeftX:bottomRightX, :);
end

image = imread('path/to/image.jpg');

topLeftX = 100;
topLeftY = 50;
bottomRightX = 300;
bottomRightY = 200;

croppedImage = cropImage(image, topLeftX, topLeftY, bottomRightX, bottomRightY);

imshow(croppedImage);