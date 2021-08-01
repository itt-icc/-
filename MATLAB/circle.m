r=20;%设置半径为20
theta=0:pi/50:2*pi;%以pi/100为圆心角画圆
x=40+r*cos(theta); %圆心横坐标为40
y=40+r*sin(theta); %圆心纵坐标为40
plot(x,y,'*');%画圆
hold on
for k =0:pi/20:2*pi
    x=40+20*cos(k); %新的圆心横坐标
    y=40+20*sin(k); %新的圆心纵坐标
    R=((x-20)^2+(y-40)^2)^0.5;%新的半径
    b=0:pi/100:2*pi;
    X=x+R*cos(b);
    Y=y+R*sin(b);
    plot(X,Y,'r');
end
    
    
