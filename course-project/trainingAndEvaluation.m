clear;
clc;

load('PreprocessedData.mat')

data = cell2mat(fin);

vaccuracy = 0;
taccuracy = 0;
confmat = zeros(5, 5);
ber = 0;

for i = 1:10
    [trainedClassifier, validationAccuracy, trainingAccuracy, conf, BER] = trainClassifierQuadratic(data);
    vaccuracy = vaccuracy + validationAccuracy;
    taccuracy = taccuracy + trainingAccuracy;
    confmat = confmat + conf;
    ber = ber + BER;
end

vaccuracy = vaccuracy/10;
taccuracy = taccuracy/10;
confmat = confmat./10;
ber = ber/10;

