clear;

BLUE=(1/255).*[0,50,160];
RED=(1/255).*[191,13,62];
YELLOW=(1/255).*[254,209,65];

A=180;B=45;C=9;D=10;F=19;G=17;H=9;I=90;

%white background:
x1=[-1/(2*sqrt(3))*I,-1/(2*sqrt(3))*I+A,-1/(2*sqrt(3))*I+A,-1/(2*sqrt(3))*I,-1/(2*sqrt(3))*I];
y1=[-B,-B,B,B,-B];
h=fill(x1,y1,[1,1,1]);hold on;
set(h,'EdgeColor','none');

%blue and red regions:
x2=[1/(sqrt(3))*I,-1/(2*sqrt(3))*I+A,-1/(2*sqrt(3))*I+A,-1/(2*sqrt(3))*I,1/(sqrt(3))*I];
y2=[0,0,B,B,0];
h=fill(x2,y2,BLUE);
set(h,'EdgeColor','none');
y2=-y2;
h=fill(x2,y2,RED);
set(h,'EdgeColor','none');

%three stars:
R=0.5*D;
r=R*(sin(0.1*pi)/sin(0.7*pi));
x3=zeros(1,11);
y3=zeros(1,11);
for m=1:5
    x3(2*m-1)=R*cos((0.+(2*m-2)*0.2)*pi);
    y3(2*m-1)=R*sin((0+(2*m-2)*0.2)*pi);
    x3(2*m)=r*cos((0+(2*m-1)*0.2)*pi);
    y3(2*m)=r*sin((0+(2*m-1)*0.2)*pi);
end
x3(11)=x3(1);
y3(11)=y3(1);
x3=x3+1/(sqrt(3))*I-C-0.5*D;
h=fill(x3,y3,YELLOW);
set(h,'EdgeColor','none');
P=[-1/2,-sqrt(3)/2;sqrt(3)/2,-1/2]*[x3;y3];
h=fill(P(1,:),P(2,:),YELLOW);
set(h,'EdgeColor','none');
P=[-1/2,-sqrt(3)/2;sqrt(3)/2,-1/2]*P;
h=fill(P(1,:),P(2,:),YELLOW);
set(h,'EdgeColor','none');

%rays:
x4=[0,G*cos((45-7.5)*pi/180),G*cos((45-7.5)*pi/180),0,F/sqrt(2),F/sqrt(2),0];
y4=[0,G*cos((45-7.5)*pi/180)*tan((45-11.25)*pi/180),G*sin((45-7.5)*pi/180),0,(F/sqrt(2))*tan((45-3.75)*pi/180),F/sqrt(2),0];
Q=[[x4;y4],[y4;x4]];
DD=(-1/(2*sqrt(3))*I+C+F);%rightward displacement of the sun
for m=1:8
    Q=(1/sqrt(2)).*[1,-1;1,1]*Q;
    Q(1,:)=Q(1,:)+DD;
    h=fill(Q(1,:),Q(2,:),YELLOW);
    set(h,'EdgeColor','none');    
    Q(1,:)=Q(1,:)-DD;
end

%disk:
theta=linspace(0,2*pi,500);
x5=H.*cos(theta)+DD;%DD for the rightward displacement of the sun
y5=H.*sin(theta);
h=fill(x5,y5,YELLOW);
set(h,'EdgeColor','none');

axis equal;
axis off;
hold off;