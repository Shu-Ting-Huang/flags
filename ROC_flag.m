clear;

Lx=1;Ly=2/3*Lx;
x1=[-Lx,3*Lx,3*Lx,-Lx,-Lx];
y1=[-3*Ly,-3*Ly,Ly,Ly,-3*Ly];
fill(x1,y1,[0.9,0,0]);hold on;
x2=[-Lx,Lx,Lx,-Lx,-Lx];
y2=[-Ly,-Ly,Ly,Ly,-Ly];
fill(x2,y2,[0,0,0.6]);hold on;
r=0.28*Lx;
N=100;
theta=linspace(0,2*pi,N+1);
x3=r*cos(theta);
y3=r*sin(theta);
fill(x3,y3,[1,1,1]);hold on;
Nt=12;
for p=1:Nt
thp=(p-1)*2*pi/Nt;
thp1=thp-pi/Nt;
thp2=thp+pi/Nt;
x=[r*cos(thp1),1.9*r*cos(thp),r*cos(thp2),r*cos(thp1)];
y=[r*sin(thp1),1.9*r*sin(thp),r*sin(thp2),r*sin(thp1)];
fill(x,y,[1,1,1]);hold on;
h0=plot(x,y,'b');hold on;
set(h0,'color',[0,0,0.6]);
end
h=plot(x3,y3,'b');hold on;
set(h,'linewidth',3);
set(h,'color',[0,0,0.6]);

axis equal;
axis off;
hold off;