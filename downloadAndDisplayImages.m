function downloadAndDisplayImages(urls)
    outputDir = 'downloaded_images';
    if ~exist(outputDir, 'dir')
        mkdir(outputDir);
    end

    for i = 1:numel(urls)
        url = urls{i};

        try
            [~, filename, ext] = fileparts(url);
            outputFilename = fullfile(outputDir, strcat(filename, ext));

            urlwrite(url, outputFilename);

            image = imread(outputFilename);

            figure;
            imshow(image);
            title(sprintf('Image %d', i));
        catch exception
            fprintf('Error downloading image %d from URL: %s\n', i, url);
            fprintf('%s\n', exception.message);
        end
    end
end

urls = {
    'https://example.com/image1.jpg',
    'https://example.com/image2.png',
    'https://example.com/image3.gif'
};

downloadAndDisplayImages(urls);