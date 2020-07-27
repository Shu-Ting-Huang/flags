clear;

A=25;B=2;C=6;D=10;E=3;
RED=(1/255).*[200,16,46];
BLUE=(1/255).*[1,33,105];

%blue background:
x1=[-(0.5*C+B+A),(0.5*C+B+A),(0.5*C+B+A),-(0.5*C+B+A),-(0.5*C+B+A)];
y1=[-(0.5*C+B+D),-(0.5*C+B+D),(0.5*C+B+D),(0.5*C+B+D),-(0.5*C+B+D)];
h=fill(x1,y1,BLUE);hold on;
set(h,'EdgeColor','none');

%white straight region:
x2=[-(0.5*C+B),(0.5*C+B),(0.5*C+B),-(0.5*C+B),-(0.5*C+B)];
y2=[-(0.5*C+B+D),-(0.5*C+B+D),(0.5*C+B+D),(0.5*C+B+D),-(0.5*C+B+D)];
h=fill(x2,y2,[1,1,1]);
set(h,'EdgeColor','none');
x2=[-(0.5*C+B+A),(0.5*C+B+A),(0.5*C+B+A),-(0.5*C+B+A),-(0.5*C+B+A)];
y2=[-(0.5*C+B),-(0.5*C+B),(0.5*C+B),(0.5*C+B),-(0.5*C+B)];
h=fill(x2,y2,[1,1,1]);
set(h,'EdgeColor','none');

%white slanted region:
x3=[-(0.5*C+B+A),-(0.5*C+B+A)+sqrt(5)*E,(0.5*C+B+A),(0.5*C+B+A),(0.5*C+B+A)-sqrt(5)*E,-(0.5*C+B+A),-(0.5*C+B+A)];
y3=[-(0.5*C+B+D),-(0.5*C+B+D),(0.5*C+B+D)-sqrt(1.25)*E,(0.5*C+B+D),(0.5*C+B+D),-(0.5*C+B+D)+sqrt(1.25)*E,-(0.5*C+B+D)];
h=fill(x3,y3,[1,1,1]);
set(h,'EdgeColor','none');
x3=-x3;
h=fill(x3,y3,[1,1,1]);
set(h,'EdgeColor','none');

%red slanted stripe in 1st and 3rd quadrant:
x4=[-(0.5*C+B+A),-(0.5*C+B+A)+sqrt(5)*B,-(0.5*C+B+A)+sqrt(5)*B+2*D,-(0.5*C+B+A)+2*D,-(0.5*C+B+A)];
y4=[-(0.5*C+B+D),-(0.5*C+B+D),-(0.5*C+B+D)+D,-(0.5*C+B+D)+D,-(0.5*C+B+D)];
h=fill(x4,y4,RED);
set(h,'EdgeColor','none');
x4=-x4;
y4=-y4;
h=fill(x4,y4,RED);
set(h,'EdgeColor','none');

%red slanted stripe in 2nd and 4th quadrant:
x5=[(0.5*C+B+A),(0.5*C+B+A),(0.5*C+B+A)+sqrt(5)*B-2*D,(0.5*C+B+A)-2*D,(0.5*C+B+A)];
y5=[-(0.5*C+B+D),-(0.5*C+B+D)+sqrt(1.25)*B,-(0.5*C+B+D)+D,-(0.5*C+B+D)+D,-(0.5*C+B+D)];
h=fill(x5,y5,RED);
set(h,'EdgeColor','none');
x5=-x5;
y5=-y5;
h=fill(x5,y5,RED);
set(h,'EdgeColor','none');

%central cross:
x6=[-(0.5*C+B+A),(0.5*C+B+A),(0.5*C+B+A),-(0.5*C+B+A),-(0.5*C+B+A)];
y6=[-0.5*C,-0.5*C,0.5*C,0.5*C,-0.5*C];
h=fill(x6,y6,RED);
set(h,'EdgeColor','none');
x7=[-0.5*C,0.5*C,0.5*C,-0.5*C,-0.5*C];
y7=[-(0.5*C+B+D),-(0.5*C+B+D),(0.5*C+B+D),(0.5*C+B+D),-(0.5*C+B+D)];
h=fill(x7,y7,RED);
set(h,'EdgeColor','none');

axis equal;
axis off;
hold off;