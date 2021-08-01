clear;
x1(1)=0;y1(1)=1;y2(1)=1;h=0.01;
for k=1:100
    x1(k+1)=x1(k)+h;
    y1(k+1)=(1-h)*y1(k)+h*x1(k)+h;
    y2(k+1)=(y2(k)+h*x1(k+1)+h)/(1+h); 
end
x=0:0.1:1;
y=x+exp(-x)%（解析解）
plot(x,y,x1,y1,'k:',x1,y2,'r--')

%%%循环取值
Y1=zeros(11,1);Y2=zeros(11,1);Y=y'
for k=0:10
    Y1(k+1,1)=y1(1,k*10+1)
    Y2(k+1,1)=y2(1,k*10+1)
end
errory1=norm(y-Y1',2);
errory2=norm(y-Y2',2);

