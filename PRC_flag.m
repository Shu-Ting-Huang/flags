clear;

RED=[222,41,16].*(1/255);
GOLD=[255,222,0].*(1/255);

%red background:
xx=[-15,15,15,-15,-15];
yy=[-10,-10,10,10,-10];
h=fill(xx,yy,RED);hold on;
set(h,'EdgeColor','none');

%big star:
R=3;
r=R*(sin(0.1*pi)/sin(0.7*pi));
x0=zeros(1,11);
y0=zeros(1,11);
for m=1:5
    x0(2*m-1)=R*cos((0.5+(2*m-2)*0.2)*pi);
    y0(2*m-1)=R*sin((0.5+(2*m-2)*0.2)*pi);
    x0(2*m)=r*cos((0.5+(2*m-1)*0.2)*pi);
    y0(2*m)=r*sin((0.5+(2*m-1)*0.2)*pi);
end
x0(11)=x0(1);
y0(11)=y0(1);
x0=x0-10;
y0=y0+5;
h=fill(x0,y0,GOLD);
set(h,'EdgeColor','none');

%1st small star:
R=1;
r=R*(sin(0.1*pi)/sin(0.7*pi));
Phi=acos(-3/sqrt(34));
for m=1:5
    x0(2*m-1)=R*cos((0.5+(2*m-2)*0.2)*pi+Phi);
    y0(2*m-1)=R*sin((0.5+(2*m-2)*0.2)*pi+Phi);
    x0(2*m)=r*cos((0.5+(2*m-1)*0.2)*pi+Phi);
    y0(2*m)=r*sin((0.5+(2*m-1)*0.2)*pi+Phi);
end
x0(11)=x0(1);
y0(11)=y0(1);
x0=x0-5;
y0=y0+8;
h=fill(x0,y0,GOLD);
set(h,'EdgeColor','none');

%2nd small star:
R=1;
r=R*(sin(0.1*pi)/sin(0.7*pi));
Phi=acos(-1/sqrt(50));
for m=1:5
    x0(2*m-1)=R*cos((0.5+(2*m-2)*0.2)*pi+Phi);
    y0(2*m-1)=R*sin((0.5+(2*m-2)*0.2)*pi+Phi);
    x0(2*m)=r*cos((0.5+(2*m-1)*0.2)*pi+Phi);
    y0(2*m)=r*sin((0.5+(2*m-1)*0.2)*pi+Phi);
end
x0(11)=x0(1);
y0(11)=y0(1);
x0=x0-3;
y0=y0+6;
h=fill(x0,y0,GOLD);
set(h,'EdgeColor','none');

%3rd small star:
R=1;
r=R*(sin(0.1*pi)/sin(0.7*pi));
Phi=acos(3/sqrt(58));
for m=1:5
    x0(2*m-1)=R*cos((0.5+(2*m-2)*0.2)*pi+Phi);
    y0(2*m-1)=R*sin((0.5+(2*m-2)*0.2)*pi+Phi);
    x0(2*m)=r*cos((0.5+(2*m-1)*0.2)*pi+Phi);
    y0(2*m)=r*sin((0.5+(2*m-1)*0.2)*pi+Phi);
end
x0(11)=x0(1);
y0(11)=y0(1);
x0=x0-3;
y0=y0+3;
h=fill(x0,y0,GOLD);
set(h,'EdgeColor','none');

%4th small star:
R=1;
r=R*(sin(0.1*pi)/sin(0.7*pi));
Phi=acos(4/sqrt(41));
for m=1:5
    x0(2*m-1)=R*cos((0.5+(2*m-2)*0.2)*pi+Phi);
    y0(2*m-1)=R*sin((0.5+(2*m-2)*0.2)*pi+Phi);
    x0(2*m)=r*cos((0.5+(2*m-1)*0.2)*pi+Phi);
    y0(2*m)=r*sin((0.5+(2*m-1)*0.2)*pi+Phi);
end
x0(11)=x0(1);
y0(11)=y0(1);
x0=x0-5;
y0=y0+1;
h=fill(x0,y0,GOLD);
set(h,'EdgeColor','none');

axis equal;
axis off;
hold off;