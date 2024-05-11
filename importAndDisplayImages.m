function importAndDisplayImages(directory)
    imageFiles = dir(fullfile(directory, '*.png'));
    imageFiles = [imageFiles; dir(fullfile(directory, '*.jpg'))];
    imageFiles = [imageFiles; dir(fullfile(directory, '*.bmp'))];

    for i = 1:length(imageFiles)
        imagePath = fullfile(directory, imageFiles(i).name);
        image = imread(imagePath);

        figure;
        colormap(gray);
        subplot(1, 3, 1);
        imagesc(image);
        title('Grayscale');

        colormap(hot);
        subplot(1, 3, 2);
        imagesc(image);
        title('Hot');

        colormap(jet);
        subplot(1, 3, 3);
        imagesc(image);
        title('Jet');
    end
end