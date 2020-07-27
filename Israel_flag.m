clear;

BLUE=(1/255).*[0,32,91];
A=220;B=30;C=50;D=160;E=69;F=11;

%white background:
x1=[-A,A,A,-A,-A,];
y1=[-(B+C+0.5*D),-(B+C+0.5*D),(B+C+0.5*D),(B+C+0.5*D),-(B+C+0.5*D)];
h=fill(x1,y1,[1,1,1]);hold on;
set(h,'EdgeColor','none');

%blue stripes:
x2=x1;
y2=[0.5*D,0.5*D,0.5*D+C,0.5*D+C,0.5*D];
h=fill(x2,y2,BLUE);
set(h,'EdgeColor','none');
y2=-y2;
h=fill(x2,y2,BLUE);
set(h,'EdgeColor','none');

%hexagram:
x3=[0,-(sqrt(3)/2)*E,(sqrt(3)/2)*E,0,0,-(sqrt(3)/2)*(E-2*F),(sqrt(3)/2)*(E-2*F),0,0];
y3=[E,-0.5*E,-0.5*E,E,(E-2*F),-0.5*(E-2*F),-0.5*(E-2*F),(E-2*F),E];
h=fill(x3,y3,BLUE);
set(h,'EdgeColor','none');
x3=-x3;
y3=-y3;
h=fill(x3,y3,BLUE);
set(h,'EdgeColor','none');

axis equal;
axis off;
hold off;