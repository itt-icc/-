data=xlsread('peach');%读取数据

meas=data(2:end,2:size(meas,2)-2);%光谱数据
species=data(2:end,end);%类别

sample=meas([16:20,36:40,56:60,76:80,96:100],:);%设定待判别样本
training=meas([1:15,21:35,41:55,61:75,81:95],:);%设定训练样本
group1=species([1:15,21:35,41:55,61:75,81:95],:);%设定训练样本的类别
group2=species([16:20,36:40,56:60,76:80,96:100],:);%设定待判别样本的类别
linclass = classify(sample,training,group1);%判别算法
bad = linclass-group2%做差查看结果
bad=(bad~=0)
numobs = size(meas,1);
sum(bad) / numobs

