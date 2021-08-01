% syms y x;
% X=dsolve('D2y*(1-x)-0.2*(1+Dy^2)^0.5=0','y(0)=0,Dy(0)=0','x')

[x,y]=ode23('daodanFun',[0,1],[0,0]);
y1=y(:,1); % ԭ���̵Ľ�
plot(x,y1,'b') % y1(t),y2(t) ����ͼ

hold on;
x=0:0.001:1
y=5/8*abs((1-x)).^(4/5)-5/12*abs((1-x)).^(6/5)-5/24;
plot(x,-y,'r');
legend('������ֵ��','����������');

function dy = daodanFun(x,y)
dy=zeros(2,1);
dy(1)=y(2);
dy(2)=(0.2*(1+y(2)^2)^0.5)/(1-x);
end