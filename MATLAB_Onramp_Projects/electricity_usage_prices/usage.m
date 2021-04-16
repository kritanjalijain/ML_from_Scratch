% Course: https://matlabacademy.mathworks.com/R2018b/portal.html?course=gettingstarted

% Electricy usage and prices in US for 23 years from 1991 to 2013 of residential, commercial, and industrial

% Variables loaded from 'electricy.mat'
% Name   : Size   : Description
% usage  : 23 * 3 : usage of all three types in different columns
% prices : 23 * 3 : prices of all three types in different columns

% Clear variables
clc;
clear;

% Load data
load('electricity.mat', '-mat');

% Replace 'NaN' values with mean of total data
usage(isnan(usage)) = mean(mean(usage));

% Extract usage data for residential, commercial, and industrial
residential_usage = usage(:, 1);
commercial_usage = usage(:, 2);
industrial_usage = usage(:, 3);

% Data is of 23 years from 1991 to 2013
years = (1991:2013)';

% Plot usage of all three types on one graph
% Use different color and line style for each usage
% to differentiate the data

% Plot residential usage with blue dashed line
plot(years, residential_usage, 'b--');

% Hold the graph to plot the data on same graph
% otherwise it creates new graph
hold on;

% Plot commercial usage with black dotted line
plot(years, commercial_usage, 'k:');

% Plot industrial usage with magenta dash-dot line
plot(years, industrial_usage, 'm-.');

% Give title to graph
title("Electricity Usage(10^9 kWh/day)");

% Add legend to graph
legend('residential', 'commercial', 'industrial');
