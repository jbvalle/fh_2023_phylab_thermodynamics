%col1 ... t
%col2 ... current Temperature
%col3 ... Temperature change over Xs
%col4 ... Temperature change over 1 second [normalized]

%x ... delta t ... time
%y ... delta T ... current Temperature

pkg load io;

% Get a list of all .ods files in the current directory
files = glob('msr/*.ods');

% Initialize empty arrays for x and y values
x = [];
y = [];

% Read data from each file and concatenate x and y values
for i = 1:length(files)
    data = odsread(files{i});
    x = [x; data(:, 1)];
    y = [y; data(:, 2)];
end

% [Optional] Post Data point operations

% Calculate linear regression coefficients (degree 1 polynomial)
coefficients = polyfit(x, y, 1);

% Extract slope (k) and y-intercept (d) from the coefficients
k = coefficients(1);
d = coefficients(2);

% Generate the regression line
xFit = linspace(min(x), max(x), 100); % Generate x values for the line
yFit = polyval(coefficients, xFit);   % Calculate y values using the coefficients


% Plot the data points
plot(x, y, 'o', 'MarkerSize', 10, 'LineWidth', 2);
hold on;

% Plot the regression line
plot(xFit, yFit, 'r-', 'LineWidth', 2);

% Add labels and title
xlabel('X ... Time');
ylabel('Y ... Current Temperature');
title('Linear Regression');
legend('Data Points', 'Linear Regression Line');
grid on;
%
%% Display the plot
hold off;
%
%% Output the linear equation
fprintf('Linear Equation: y = %.2fx + %.2f\n', k, d);

