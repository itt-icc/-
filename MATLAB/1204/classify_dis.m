meas=xlsread('data');
meas=meas';
meas=meas(2:end,1:size(meas,2)-1);
species=cat(2,ones(1,30),2*ones(1,30),3*ones(1,30),4*ones(1,30),5*ones(1,30),6*ones(1,30),7*ones(1,30),8*ones(1,30)) ;
species=species';


sample=meas([21:30,51:60,81:90,111:120,141:150,171:180,201:210,231:240],:);%设定待判别样本
training=meas([1:20,31:50,61:80,91:110,121:140,151:170,181:200,211:230],:);%设定训练样本
group1=species([1:20,31:50,61:80,91:110,121:140,151:170,181:200,211:230],:);%设定训练样本的类别
group2=species([21:30,51:60,81:90,111:120,141:150,171:180,201:210,231:240],:);%设定待判别样本的类别
linclass = classify(sample,training,group1);
bad = linclass-group2
numobs = size(meas,1);
sum(bad) / numobs

