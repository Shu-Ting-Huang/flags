clear;
A=1;
B=A*1.9;C=A*(7/13);D=A*(0.76);F=C*(1/10);H=D*(1/12);L=A*(1/13);K=L*(4/5);

RED=[0.698,0.132,0.203];
BLUE=[0.234,0.233,0.430];


%red stripes:
x1=[-D,B-D,B-D,-D,-D];
y1=[-6*L,-6*L,-5*L,-5*L,-6*L];
y1=y1-2*L;
for m=1:7
    y1=y1+2*L;
    h=fill(x1,y1,RED);hold on;
    set(h,'EdgeColor','none')
end
%white stripes:
x2=[-D,B-D,B-D,-D,-D];
y2=[-5*L,-5*L,-4*L,-4*L,-5*L];
y2=y2-2*L;
for m=1:6
    y2=y2+2*L;
    h=fill(x2,y2,[1,1,1]);
    set(h,'EdgeColor','none')
end

%blue region:
x3=[-D,0,0,-D,-D];
y3=[0,0,C,C,0];
h=fill(x3,y3,BLUE);
set(h,'EdgeColor','none')

%star at the origin:
R=0.5*K;r=R*(sin(0.1*pi)/sin(0.7*pi));
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
%stars(outer 30):
for i=1:6
    for j=1:5
        x=x0-(2*i-1)*H;
        y=y0+(2*j-1)*F;
        h=fill(x,y,[1,1,1]);
        set(h,'EdgeColor','none')
    end
end
%stars (inner 20):
for i=1:5
    for j=1:4
        x=x0-(2*i)*H;
        y=y0+(2*j)*F;
        h=fill(x,y,[1,1,1]);
        set(h,'EdgeColor','none')
    end
end


axis equal;
axis off;
hold off;