r=20;%���ð뾶Ϊ20
theta=0:pi/50:2*pi;%��pi/100ΪԲ�Ľǻ�Բ
x=40+r*cos(theta); %Բ�ĺ�����Ϊ40
y=40+r*sin(theta); %Բ��������Ϊ40
plot(x,y,'*');%��Բ
hold on
for k =0:pi/20:2*pi
    x=40+20*cos(k); %�µ�Բ�ĺ�����
    y=40+20*sin(k); %�µ�Բ��������
    R=((x-20)^2+(y-40)^2)^0.5;%�µİ뾶
    b=0:pi/100:2*pi;
    X=x+R*cos(b);
    Y=y+R*sin(b);
    plot(X,Y,'r');
end
    
    
