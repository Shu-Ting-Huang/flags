function Circle(x0,y0,R,color)
    theta=linspace(0,2*pi,500);
    x=x0+R.*cos(theta);
    y=y0+R.*sin(theta);
    h=fill(x,y,color);
    set(h,'EdgeColor','none');
end

