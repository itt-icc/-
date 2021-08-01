function daodan
Q=[1 0];%船坐标
P=[0 0];%导弹坐标
PQ=Q-P;%导弹方向向量
step=0.005;%步长
count=(5/24)/step;
PQ=PQ/norm(PQ)*step;%归一化单位向量
trackP=P;
trackQ=Q;
%%%数值解
x=0:0.01:1
y=5/8*abs((1-x)).^(4/5)-5/12*abs((1-x)).^(6/5)-5/24;
plot(x,-y,'r');
MakeGif('导弹追击.gif',1)
hold on;
for k=1:count
    P=P+5*PQ;%5倍速度
    Q=Q+step*[0 1];%船方向的单位方向向量
    PQ=Q-P;
    trackP(1+k,:)=P;
    trackQ(1+k,:)=Q;
    PQ=PQ/norm(PQ)*step;%归一化，单位向量
    dis=sqrt(sum((P-Q).^2));%导弹和船之间的距离
    plot(trackP(:,1),trackP(:,2),'*',Q(1),Q(2),'bp',1,5/24,'rp');
    title('导弹追击战舰 3170100125 张友超');
    legend('导弹解析法','导弹数值法','逃跑路径','击中点');
    MakeGif('导弹追击.gif',k)
end
