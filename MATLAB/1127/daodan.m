function daodan
Q=[1 0];%������
P=[0 0];%��������
PQ=Q-P;%������������
step=0.005;%����
count=(5/24)/step;
PQ=PQ/norm(PQ)*step;%��һ����λ����
trackP=P;
trackQ=Q;
%%%��ֵ��
x=0:0.01:1
y=5/8*abs((1-x)).^(4/5)-5/12*abs((1-x)).^(6/5)-5/24;
plot(x,-y,'r');
MakeGif('����׷��.gif',1)
hold on;
for k=1:count
    P=P+5*PQ;%5���ٶ�
    Q=Q+step*[0 1];%������ĵ�λ��������
    PQ=Q-P;
    trackP(1+k,:)=P;
    trackQ(1+k,:)=Q;
    PQ=PQ/norm(PQ)*step;%��һ������λ����
    dis=sqrt(sum((P-Q).^2));%�����ʹ�֮��ľ���
    plot(trackP(:,1),trackP(:,2),'*',Q(1),Q(2),'bp',1,5/24,'rp');
    title('����׷��ս�� 3170100125 ���ѳ�');
    legend('����������','������ֵ��','����·��','���е�');
    MakeGif('����׷��.gif',k)
end
