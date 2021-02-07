Pi = 3.14;
DeuxPi = 2*Pi;

Jour = 24*3600; 

TPendule = 3600; 

latitude = input("Latitude en degres:");
latitude = latitude*DeuxPi/360; 

lat= input(" autre latitude en degré (optionnel):")

Omega0 = DeuxPi/TPendule;
OmegaT = DeuxPi/Jour; 
OMEGA = OmegaT*sin(latitude);
OMEGA2 = OmegaT*sin(lat);
if latitude > 0
 TPlanOsc = DeuxPi/OMEGA; 
else
 TPlanOsc = 0.0; 
end;


if lat > 0
    TPlanOsc2 = DeuxPi/OMEGA2 ;
else 
    TPlanOsc2 = 0.0 ; 
    
end;

t0 = 0;
x0 = 1.0;
y0 = 0;

PasTemp = Jour/1000;
t = t0:PasTemp:Jour;

x = x0*cos(Omega0*t).*cos(OMEGA*t);
y = -x0*cos(Omega0*t).*sin(OMEGA*t);
x1= x0*cos(Omega0*t).*cos(OMEGA2*t);
y1 = -x0*cos(Omega0*t).*sin(OMEGA2*t);
n = length(t);
plot2d(x1(1:n),y1(1:n),style = 5);
plot2d(x1(1:n),y1tyle = 5);

plot2d(x(1:n),y(1:n),style = 2);
plot2d(x(1:n),y1tyle = 2);



xtitle("rotation du plan d oscillation");
lib1 = cat(2,'Latitude = ', string(latitude*360/DeuxPi), 'degrés');
xstring(-0.95,0.90,lib1);
lib2 = cat(2,'Période = ', string(TPlanOsc/3600), 'heures');
xstring(0.35, 0.90,lib2);


lib3 = cat(2,'Lat2(rouge) = ', string(lat*360/DeuxPi), 'degrés');
xstring(-0.95,0.85,lib3);
lib4 = cat(2,'T2 =', string(TPlanOsc2/3600), 'heures');
xstring(0.35, 0.85,lib4);
