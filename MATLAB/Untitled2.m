i=0;
j=0;
a=0;
while a<=99
    b=a*2*pi/100;
    i=2+2*cos(b);
    j=0+2*sin(b);
    r0=(i^2+j^2)^0.5;
    circle([i,j],r0);
    hold on;
    a=a+1;
end