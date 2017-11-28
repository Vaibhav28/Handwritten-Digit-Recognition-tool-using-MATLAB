%% =  Predict for 1vs all
%       training();
%pred = predictOneVsAll(all_theta, X);

%

%function []= predict_onevsall();

loaddata();
%training();
MyStructHere = evalin('base','all_theta');
pred = predictOneVsAll(MyStructHere, X);

fprintf('\n Accuracy: %f\n', mean(double(pred == y)) * 100);

%textLabel = sprintf('Variable C = %f', C);
textLabel=sprintf('\n%f\n', mean(double(pred == y)) * 100);
set(handles.text7, 'String',num2str(textLabel) );
