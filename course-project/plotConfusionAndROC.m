clear;
clc;

trainingAndEvaluation;

R = data(:, length(data));
P = trainedClassifier.predictFcn(data(:, 1:length(data)-1));

response = zeros(5, 129);
predict = zeros(5, 129);

for i = 1:129
    response(R(i), i) = 1;
    predict(P(i), i) = 1;
end

plotconfusion(response,predict)

plotroc(response,predict)