% Course: https://matlabacademy.mathworks.com/R2018b/portal.html?course=gettingstarted

% Clear variables
clc;
clear;

% Initial variables
fs = 10;
time_frame = (0:1/fs:20);

% Generate signals -- the sum of two sine waves
y_signals = sin(1.8 * 2 * pi * time_frame) + sin(2.1 * 2 * pi * time_frame);

% plot(time_frame, y);

% Fourier Transform
yfft = fft(y_signals);

no_of_signales = length(y_signals);
frequencies = (0:fs/no_of_signales:fs*(no_of_signales-1)/no_of_signales);

plot(frequencies, abs(yfft));

% TODO: Add more details and explanation of theory used
