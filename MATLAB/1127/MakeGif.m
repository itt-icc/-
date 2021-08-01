function MakeGif(filename,i)  
    f = getframe(gcf);  
    imind = frame2im(f);  
    [imind,cm] = rgb2ind(imind,256);  
    if i==1  
        imwrite(imind,cm,filename,'gif',...
                'Loopcount',inf,'DelayTime',0.0001);
    else  
        imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',0.0001);
    end  
end  
