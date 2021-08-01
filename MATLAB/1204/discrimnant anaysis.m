%����𰣨yuan��β����
load fisheriris
gscatter(meas(:,1), meas(:,2), species,'rgb','osd'); 
%gscatter(x,y,group) creates a scatter plot of x and y, grouped by group. x and y are vectors of the same size. group is a grouping variable in the form of a categorical variable, 
xlabel('Sepal length'); %Sepal:����
ylabel('Sepal width');
%���������б�
sample=meas([31:50,81:100,131:150],:);%�趨���б�����
training=meas([1:30,51:80,101:130],:);%�趨ѵ������
group1=species([1:30,51:80,101:130],:);%�趨ѵ�����������
group2=species([31:50,81:100,131:150],:);%�趨���б����������
linclass = classify(sample,training,group1);
%linclass = classify(meas(:,1:4),meas(:,1:4),species); %class = classify(sample,training,group) classifies each row of the data in sample into one of the groups in training. sample and training must be matrices with the same number of columns. group is a grouping variable for training.
bad = ~strcmp(linclass,group2);   %strcmp('str1', 'str2') compares the strings str1 and str2 and returns logical 1 (true) if they are identical, and returns logical 0 (false) otherwise. 
numobs = size(meas,1);
sum(bad) / numobs

hold on;
plot(meas(bad,1), meas(bad,2), 'kx');  %k�Ǻ�ɫ���ɲ���ColorSpec
hold off;

%���Ʒ�������������Ի���ͼ
[x,y] = meshgrid(4:.1:8,2:.1:4.5);
x = x(:);
y = y(:);
j = classify([x y],meas(:,1:2),species);
gscatter(x,y,j,'grb','sod')
