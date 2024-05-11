function extractImageMetadata(imagePath)
    info = imfinfo(imagePath);

    fprintf('Image: %s\n', imagePath);
    fprintf('Creation Date: %s\n', info.DateTime);
    fprintf('Resolution: %d x %d pixels\n', info.Width, info.Height);
    fprintf('Color Space: %s\n', info.ColorType);
end

imagePath = 'path/to/image.jpg';

extractImageMetadata(imagePath);