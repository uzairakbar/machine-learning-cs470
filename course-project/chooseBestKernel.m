clear;
clc;

load('PreprocessedData.mat')

data = cell2mat(fin);

vaccuracy = zeros(1, 3);
taccuracy = zeros(1, 3);
ber = zeros(1, 3);

for i = 1:10
    [trainedClassifier, validationAccuracy, trainingAccuracy, conf, BER] = trainClassifierLinear(data);
    vaccuracy(1) = vaccuracy(1) + validationAccuracy;
    taccuracy(1) = taccuracy(1) + trainingAccuracy;
    %confmat = confmat + conf;
    ber(1) = ber(1) + BER;
    
    [trainedClassifier, validationAccuracy, trainingAccuracy, conf, BER] = trainClassifierQuadratic(data);
    vaccuracy(2) = vaccuracy(2) + validationAccuracy;
    taccuracy(2) = taccuracy(2) + trainingAccuracy;
    %confmat = confmat + conf;
    ber(1) = ber(2) + BER;
    
    [trainedClassifier, validationAccuracy, trainingAccuracy, conf, BER] = trainClassifierCubic(data);
    vaccuracy(3) = vaccuracy(3) + validationAccuracy;
    taccuracy(3) = taccuracy(3) + trainingAccuracy;
    %confmat = confmat + conf;
    ber(3) = ber(3) + BER;
end

vaccuracy = vaccuracy./10;
taccuracy = taccuracy./10;
%confmat = confmat./10;
ber = ber./10;

plot(1-vaccuracy, '-or');
hold on
plot(1-taccuracy, '--^b');
plot(ber, '-.*g');
legend('Validation Error', 'Training Error', 'BER');
xlabel('Order of polynomial kernel');
ylabel('Error');
grid on

print -depsc figure1.eps

