function captureImageFromCamera()
    cam = webcam();

    figure;
    h = imshow(zeros(480, 640, 3, 'uint8'));
    title('Camera Preview');

    brightnessSlider = uicontrol('Style', 'slider', 'Min', -0.5, 'Max', 0.5, ...
        'Value', 0, 'Position', [20 20 120 20], 'Callback', @updateImage);
    contrastSlider = uicontrol('Style', 'slider', 'Min', 0.5, 'Max', 1.5, ...
        'Value', 1, 'Position', [160 20 120 20], 'Callback', @updateImage);

    while ishandle(h)
        frame = snapshot(cam);

        adjustedFrame = imadjust(frame, [brightnessSlider.Value brightnessSlider.Value+1], ...
            [], contrastSlider.Value);

        set(h, 'CData', adjustedFrame);

        drawnow;
    end

    clear cam;
end

function updateImage(src, ~
    captureImageFromCamera();
end