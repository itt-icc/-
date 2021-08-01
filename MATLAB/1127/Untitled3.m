close all  
clear  
clc  
Times=10; [x,y]=meshgrid(-2:0.01:2);  
for i=1:Times  
	z(:,:,i)=-(17*x.^2-16*y.*abs(x)+17*y.^2).*i/5;  
end  
figure  
axis off
colormap(jet)
view([0 90]);  
hold on  
for i=1:Times  
	mesh(x,y,z(:,:,i));  
	drawnow;  
	MakeGif('heart-waves.gif',i)  					%зЂвт
	hold on  
end  

hold off
