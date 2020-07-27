clear;

RED=(1/255).*[213,0,50];
BLUE=(1/255).*[0,61,165];

A=96;B=192;C=24;D=4;E=88;F=72;G=31;H=32;

%white background:
x1=[-A,B,B,-A,-A];
y1=[-F,-F,F,F,-F];
h=fill(x1,y1,[1,1,1]);
set(h,'EdgeColor','none');hold on;

%blue part:
x2=x1;
y2=[(0.5*E+D),(0.5*E+D),F,F,(0.5*E+D)];
h=fill(x2,y2,BLUE);
set(h,'EdgeColor','none');
y2=-y2;
h=fill(x2,y2,BLUE);
set(h,'EdgeColor','none');

%central red:
x3=x1;
y3=[-0.5*E,-0.5*E,0.5*E,0.5*E,-0.5*E];
h=fill(x3,y3,RED);
set(h,'EdgeColor','none');

%white circle:
Circle(0,0,H,[1,1,1]);

%central star:
Star(0,0,G,RED);

axis equal;
axis off;
hold off;