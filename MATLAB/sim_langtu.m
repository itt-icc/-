function sim_langtu
Q=[1 0];%兔子坐标
P=[0 0];%狼坐标
PQ=Q-P;%狼追兔子的方向向量
step=0.001;%步长
count=(5/24)/step;
PQ=PQ/norm(PQ)*step;%归一化单位向量
trackP=P;
trackQ=Q;
for k=1:count
    P=P+5*PQ;%5倍速度
    Q=Q+step*[0 1];%以兔子奔跑方向的单位方向向量
    PQ=Q-P;
    trackP(1+k,:)=P;
    trackQ(1+k,:)=Q;
    PQ=PQ/norm(PQ)*step;%归一化，单位向量
    dis=sqrt(sum((P-Q).^2));%狼和兔子之间的距离
    plot(trackP(:,1),trackP(:,2),'*',Q(1),Q(2),'rp',0,5/24,'r+');
    pause(0.0001)
end
hold on;
x=0:0.01:1
y=5/8*abs((1-x)).^(4/5)-5/12*abs((1-x)).^(6/5)-5/24;
plot(x,-y,'g');
% function sim_langtu
% Q=[0 0];%兔子坐标
% P=[100 0];%狼坐标
% PQ=Q-P;%狼追兔子的方向向量
% step=2;%步长
% count=60/step;
% PQ=PQ/norm(PQ)*step;%归一化单位向量
% trackP=P;
% trackQ=Q;
% for k=1:count
%     P=P+2*PQ;%两倍速度
%     Q=Q+step*[0 1];%以兔子奔跑方向的单位方向向量
%     PQ=Q-P;
%     trackP(1+k,:)=P;
%     trackQ(1+k,:)=Q;
%     PQ=PQ/norm(PQ)*step;%归一化，单位向量
%     dis=sqrt(sum((P-Q).^2));%狼和兔子之间的距离
%     plot(trackP(:,1),trackP(:,2),'*',Q(1),Q(2),'rp',0,60,'r+');
%     pause(0.01)
% end
% hold on;
% x=2:0.1:100;
% y=1/30*x.^(3/2)-10*x.^(1/2)+200/3;
% plot(x,y,'g');
% 

    

    
