clear;
clc;

load('PreprocessedData.mat')

data = cell2mat(fin);

accuracy = 0;
confmat = zeros(5, 5);
ber = 0;

for i = 1:10
    [trainedClassifier, validationAccuracy, conf, BER] = trainClassifier(data);
    accuracy = accuracy + validationAccuracy;
    confmat = confmat + conf;
    ber = ber + BER;
end

accuracy = accuracy/10;
confmat = confmat./10;
ber = ber/10;