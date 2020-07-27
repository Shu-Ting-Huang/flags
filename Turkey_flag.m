clear;

A=360;B=240;C=120;D=15;E=80;F=60;G=48;H=30;
RED=(1/255).*[200,16,46];

%red background:
Rectangle(0,-C,A,C,RED);hold on;

%moon:
Circle(C,0,F,[1,1,1]);
Circle(C+D,0,G,RED);

%star:
Star(C+D-G+E+H,0,H,[1,1,1],pi/2);

axis equal;
axis off;
hold off;