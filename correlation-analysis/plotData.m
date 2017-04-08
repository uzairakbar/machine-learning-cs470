clear;
clc;

% load data into workspace
load('CorrelationData.mat');

subplot(2, 2, 1);
scatter(X1, Y1, '*');       % plot X1 and Y1 vectors
xlabel('X_1'); ylabel('Y_1');
box on; grid on;

subplot(2, 2, 2);
scatter(X2, Y2, '*');       % plot X2 and Y2 vectors
xlabel('X_2'); ylabel('Y_2');
box on; grid on;

subplot(2, 2, 3);
scatter(X3, Y3, '*');       % plot X3 and Y3 vectors
xlabel('X_3'); ylabel('Y_3');
box on; grid on;

subplot(2, 2, 4);
scatter(X4, Y4, '*');       % plot X4 and Y4 vectors
xlabel('X_4'); ylabel('Y_4');
box on; grid on;

suptitle('Correlation Data')

saveas(gcf,'scatterPlot.eps','eps2c');
