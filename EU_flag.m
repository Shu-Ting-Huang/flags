clear;

BLUE=(1/255).*[0,51,153];
GOLD=(1/255).*[255,204,0];

%blue background:
Rectangle(-1.5,-1,1.5,1,BLUE);hold on;

%stars:
for m=1:12
   Star((2/3)*cos((m/6)*pi),(2/3)*sin((m/6)*pi),1/9,GOLD); 
end

axis equal;
axis off;
hold off;