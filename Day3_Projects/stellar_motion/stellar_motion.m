% Course: https://matlabacademy.mathworks.com/R2018b/portal.html?course=gettingstarted

% To calculate the velocity how much the star is away from earth
% A faint start HD 94028 in the constellation of Leo
% Variables loaded from 'electricy.mat'
% Name     : Size     : Description
% spectra  : 357 * 10 : evenly-spaced wavelengths data of different stars

% Clear variables
clc;
clear;

% Load data from .mat file
load('spectrum_data.mat', '-mat');

% Given observation data
star_no_to_evaluate = 6;
% No of observation
no_observations = size(spectra, 1);
% Starting wavelength
lambdas_start = 630.02;
% Spacing between wavelength
lambdad_delta = 0.14;
lambda_Ha_laboratory_val = 656.28;
speed_of_light = 299792.458; % km/s

% Calculate other required data from given data
lambda_end = lambdas_start + (no_observations - 1) * lambdad_delta;
% lambda (λ) containing the wavelengths in the spectrum, from λstart to λend, in steps of λdelta
lambda = [lambdas_start : lambdad_delta : lambda_end]';
% sixth column is the wavelength spectrum of star HD 94028
spectrum_data = spectra(:, star_no_to_evaluate);

% Plot wavelength spectrum to visualize the spike in spectrum
plot(lambda, spectrum_data, 'b.-');
grid on;
xlabel('Wavelength')
ylabel('Intensity')

% To get the value where spike occured, get the maximum variance from mean value
% of spectrum data which also return index
[min_val, min_index] = max(abs(spectrum_data - mean(spectrum_data)));
min_spectrum = spectrum_data(min_index);

% Get value of wavelength of hydrogen alpha line of star HD94028
lambda_for_Ha = lambda(min_index);

% Laboratory value is 656.28 nm and calucalted value is 656.62 nm
% Determine the distance and speed of moving star from earth
% using the difference between wavelength value

hold on;
% Plot the minimum value/spike in spectrum with red color and red shape
% with marker size 20
plot(lambda_for_Ha, min_spectrum, 'rr', 'MarkerSize', 20)

% Calculate the speed of star
speed_of_star = ((lambda_for_Ha / lambda_Ha_laboratory_val) - 1) * speed_of_light;
disp(["The speed of star is: ", num2str(speed_of_star), " km/s"]);
