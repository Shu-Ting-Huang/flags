clear;

A=4320;B=1440;C=720;D=910;E=290;F=128;G=530;H=304;I=580;
RED=(1/255).*[239,51,64];

%lower white:
Rectangle(0,0,A,-B,[1,1,1]);hold on;

%upper red:
Rectangle(0,0,A,B,RED);

%moon:
Circle(D,B-C,G,[1,1,1]);
Circle(D+E,B-C,I,RED);

%stars:
for m=1:5
    Star(D+E+H*cos((m-1)*(2*pi/5)+0.5*pi),B-C+H*sin((m-1)*(2*pi/5)+0.5*pi),F,[1,1,1]);
end

axis equal;
axis off;
hold off;