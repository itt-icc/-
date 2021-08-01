data=xlsread('peach');%��ȡ����

meas=data(2:end,2:size(meas,2)-2);%��������
species=data(2:end,end);%���

sample=meas([16:20,36:40,56:60,76:80,96:100],:);%�趨���б�����
training=meas([1:15,21:35,41:55,61:75,81:95],:);%�趨ѵ������
group1=species([1:15,21:35,41:55,61:75,81:95],:);%�趨ѵ�����������
group2=species([16:20,36:40,56:60,76:80,96:100],:);%�趨���б����������
linclass = classify(sample,training,group1);%�б��㷨
bad = linclass-group2%����鿴���
bad=(bad~=0)
numobs = size(meas,1);
sum(bad) / numobs

