function Circle(x1,y1,x2,y2,color)
    x=[min(x1,x2),max(x1,x2),max(x1,x2),min(x1,x2),min(x1,x2)];
    y=[min(y1,y2),min(y1,y2),max(y1,y2),max(y1,y2),min(y1,y2)];
    h=fill(x,y,color);
    set(h,'EdgeColor','none');
end

