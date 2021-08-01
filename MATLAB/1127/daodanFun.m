function dy = daodanFun(x,y)
dy=zeros(2,1);
dy(1)=y(2);
dy(2)=(0.2*(1+y(2)^2)^0.5)/(1-x);
end