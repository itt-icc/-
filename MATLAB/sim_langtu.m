function sim_langtu
Q=[1 0];%��������
P=[0 0];%������
PQ=Q-P;%��׷���ӵķ�������
step=0.001;%����
count=(5/24)/step;
PQ=PQ/norm(PQ)*step;%��һ����λ����
trackP=P;
trackQ=Q;
for k=1:count
    P=P+5*PQ;%5���ٶ�
    Q=Q+step*[0 1];%�����ӱ��ܷ���ĵ�λ��������
    PQ=Q-P;
    trackP(1+k,:)=P;
    trackQ(1+k,:)=Q;
    PQ=PQ/norm(PQ)*step;%��һ������λ����
    dis=sqrt(sum((P-Q).^2));%�Ǻ�����֮��ľ���
    plot(trackP(:,1),trackP(:,2),'*',Q(1),Q(2),'rp',0,5/24,'r+');
    pause(0.0001)
end
hold on;
x=0:0.01:1
y=5/8*abs((1-x)).^(4/5)-5/12*abs((1-x)).^(6/5)-5/24;
plot(x,-y,'g');
% function sim_langtu
% Q=[0 0];%��������
% P=[100 0];%������
% PQ=Q-P;%��׷���ӵķ�������
% step=2;%����
% count=60/step;
% PQ=PQ/norm(PQ)*step;%��һ����λ����
% trackP=P;
% trackQ=Q;
% for k=1:count
%     P=P+2*PQ;%�����ٶ�
%     Q=Q+step*[0 1];%�����ӱ��ܷ���ĵ�λ��������
%     PQ=Q-P;
%     trackP(1+k,:)=P;
%     trackQ(1+k,:)=Q;
%     PQ=PQ/norm(PQ)*step;%��һ������λ����
%     dis=sqrt(sum((P-Q).^2));%�Ǻ�����֮��ľ���
%     plot(trackP(:,1),trackP(:,2),'*',Q(1),Q(2),'rp',0,60,'r+');
%     pause(0.01)
% end
% hold on;
% x=2:0.1:100;
% y=1/30*x.^(3/2)-10*x.^(1/2)+200/3;
% plot(x,y,'g');
% 

    

    
