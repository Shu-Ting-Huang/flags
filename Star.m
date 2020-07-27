function Star(x0,y0,R,color,Phi)
%draw pentagram centered at (x0,y0) with R the radius of the circumscribed circle, Phi the angle of rotation
    if nargin==4    
    r=R*(sin(0.1*pi)/sin(0.7*pi));
        x=zeros(1,11);
        y=zeros(1,11);
        for m=1:5
            x(2*m-1)=R*cos((0.5+(2*m-2)*0.2)*pi);
            y(2*m-1)=R*sin((0.5+(2*m-2)*0.2)*pi);
            x(2*m)=r*cos((0.5+(2*m-1)*0.2)*pi);
            y(2*m)=r*sin((0.5+(2*m-1)*0.2)*pi);
        end
        x(11)=x(1);
        y(11)=y(1);
        x=x+x0;
        y=y+y0;
        h=fill(x,y,color);
        set(h,'EdgeColor','none');
    end
    if nargin==5
        r=R*(sin(0.1*pi)/sin(0.7*pi));
        x=zeros(1,11);
        y=zeros(1,11);
        for m=1:5
            x(2*m-1)=R*cos((0.5+(2*m-2)*0.2)*pi+Phi);
            y(2*m-1)=R*sin((0.5+(2*m-2)*0.2)*pi+Phi);
            x(2*m)=r*cos((0.5+(2*m-1)*0.2)*pi+Phi);
            y(2*m)=r*sin((0.5+(2*m-1)*0.2)*pi+Phi);
        end
        x(11)=x(1);
        y(11)=y(1);
        x=x+x0;
        y=y+y0;
        h=fill(x,y,color);
        set(h,'EdgeColor','none');
    end
end

