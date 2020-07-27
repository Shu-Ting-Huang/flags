clear;

RED=(1/255).*[205,46,58];
BLUE=(1/255).*[0,71,160];


%wihte background:
h=fill([-1.5,1.5,1.5,-1.5,-1.5],[-1,-1,1,1,-1],[1,1,1]);hold on;
set(h,'EdgeColor','none');

%taiji contour before rotation:
    %[x1 x2 x3],[y1 y2 y3] for upper half taiji
    %[x1 x2 x4],[y1 y2 y4] for lower half taiji
theta=linspace(0,pi,500);
x1=(1/4)+(1/4)*cos(theta);
y1=(1/4)*sin(theta);
x2=-(1/4)+(1/4)*cos(theta);
y2=-(1/4)*sin(theta);
x3=(1/2)*cos(pi-theta);
y3=(1/2)*sin(pi-theta);
x4=(1/2)*cos(pi-theta);
y4=-(1/2)*sin(pi-theta);

%rotate the contour of taiji and fill it:
Xupper0=[x1 x2 x3];% "0" means BEFORE rotation
Yupper0=[y1 y2 y3];% "0" means BEFORE rotation
Xlower0=[x1 x2 x4];% "0" means BEFORE rotation
Ylower0=[y1 y2 y4];% "0" means BEFORE rotation
Upper=(1/sqrt(13)).*[3,2;-2,3]*[Xupper0;Yupper0];
Lower=(1/sqrt(13)).*[3,2;-2,3]*[Xlower0;Ylower0];
h=fill(Upper(1,:),Upper(2,:),RED);set(h,'EdgeColor','none');
h=fill(Lower(1,:),Lower(2,:),BLUE);set(h,'EdgeColor','none');

%contour of Yang:
Xyang0=[3/4,5/6,5/6,3/4,3/4];% "0" means BEFORE rotation
Yyang0=[-1/4,-1/4,1/4,1/4,-1/4];% "0" means BEFORE rotation
%1st Yang:
P=(1/sqrt(13)).*[3,-2;2,3]*[Xyang0+(1/8);Yyang0];
fill(P(1,:),P(2,:),[0,0,0]);
%2nd Yang:
P=(1/sqrt(13)).*[-3,-2;2,-3]*[Xyang0;Yyang0];
fill(P(1,:),P(2,:),[0,0,0]);
%3rd Yang:
P=(1/sqrt(13)).*[-3,-2;2,-3]*[Xyang0+(1/8);Yyang0];
fill(P(1,:),P(2,:),[0,0,0]);
%4thd Yang:
P=(1/sqrt(13)).*[-3,-2;2,-3]*[Xyang0+2*(1/8);Yyang0];
fill(P(1,:),P(2,:),[0,0,0]);
%5th Yang:
P=(1/sqrt(13)).*[-3,2;-2,-3]*[Xyang0;Yyang0];
fill(P(1,:),P(2,:),[0,0,0]);
%6th Yang:
P=(1/sqrt(13)).*[-3,2;-2,-3]*[Xyang0+2*(1/8);Yyang0];
fill(P(1,:),P(2,:),[0,0,0]);

%contour of Yin:
Xyin0=[3/4,5/6,5/6,3/4,3/4,3/4,5/6,5/6,3/4,3/4];% "0" means BEFORE rotation
Yyin0=[-1/4,-1/4,-1/48,-1/48,-1/4,1/4,1/4,1/48,1/48,1/4];% "0" means BEFORE rotation
%1st Yin:
Q=(1/sqrt(13)).*[3,-2;2,3]*[Xyin0;Yyin0];
h=fill(Q(1,:),Q(2,:),[0,0,0]);set(h,'EdgeColor','none');
%2nd Yin:
Q=(1/sqrt(13)).*[3,-2;2,3]*[Xyin0+2*(1/8);Yyin0];
h=fill(Q(1,:),Q(2,:),[0,0,0]);set(h,'EdgeColor','none');
%3rd Yin:
Q=(1/sqrt(13)).*[-3,2;-2,-3]*[Xyin0+(1/8);Yyin0];
h=fill(Q(1,:),Q(2,:),[0,0,0]);set(h,'EdgeColor','none');
%4th Yin:
Q=(1/sqrt(13)).*[3,2;-2,3]*[Xyin0;Yyin0];
h=fill(Q(1,:),Q(2,:),[0,0,0]);set(h,'EdgeColor','none');
%5th Yin:
Q=(1/sqrt(13)).*[3,2;-2,3]*[Xyin0+(1/8);Yyin0];
h=fill(Q(1,:),Q(2,:),[0,0,0]);set(h,'EdgeColor','none');
%6th Yin:
Q=(1/sqrt(13)).*[3,2;-2,3]*[Xyin0+2*(1/8);Yyin0];
h=fill(Q(1,:),Q(2,:),[0,0,0]);set(h,'EdgeColor','none');


axis equal;
axis off;
hold off;