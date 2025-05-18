clc; clear; close all;

% Load Soil Image
img = imread('soil_sample.jpg'); % palitan nalang name file
img = imresize(img, [256 256]);  
figure, imshow(img); title('Input Soil Image');

% Convert Image to Grayscale
grayImg = rgb2gray(img);

% Extract Moisture Features Using HSV Color Space
hsvImg = rgb2hsv(img);
soilSaturation = hsvImg(:,:,2);  % Extract Saturation Channel
soilBrightness = hsvImg(:,:,3);  % Extract Value/Brightness Channel

% Define Moisture Analysis Thresholds
dryThreshold = 0.25;   % Low saturation & brightness indicate dry soil
wetThreshold = 0.6;    % High saturation & brightness indicate wet soil

% Compute Average Saturation and Brightness
avgSaturation = mean(soilSaturation(:));
avgBrightness = mean(soilBrightness(:));

% Determine Soil Condition
if avgSaturation < dryThreshold && avgBrightness < dryThreshold
    condition = 'Dry Soil';
    action = 'Watering is required!';
elseif avgSaturation > wetThreshold && avgBrightness > wetThreshold
    condition = 'Wet Soil';
    action = 'No watering needed.';
else
    condition = 'Moderate Moisture';
    action = 'Soil moisture is sufficient.';
end

% Display Results
fprintf('\nSoil Condition: %s\n', condition);
fprintf('Suggested Action: %s\n', action);
