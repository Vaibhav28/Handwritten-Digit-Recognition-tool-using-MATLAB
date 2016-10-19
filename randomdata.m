
loaddata();
m = size(X, 1);

% randomly select 1 data point
rand_indices = randperm(m);
sel1 = X(rand_indices(1,1), :);

displayData(sel1);

fprintf('data is loaded\n');

%training();
MyStructHere = evalin('base','all_theta');
%DataHere     = MyStructHere.Data;
p = predictOneVsAll(MyStructHere, sel1);
p=nearest(p);
if p==10.0
    p=0;
else 
    p=p;
end
textLabel=sprintf('\n%d\n', p);
set(handles.text6, 'String',textLabel );