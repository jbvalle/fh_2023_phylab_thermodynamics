format short;
% Configure Values Accoridng to experiment
% I[A] ... Current
I = 250e-03;
% R[Ohm]... Resistance of the heating element
R = 2000;
% m[kg] ... Mass of the water
m = 1;
% dT / dt [K/s] ... Change in Temperature per time normalized!!!
dT_dt = 0.03;

% c_water[[J] / [g] * [K]] ... Heat Capacity
c_water = (R * I^2) / (m * dT_dt) ;

disp(strcat("[Exp1: Heat Capacity Water [J/kg°C]] ", num2str(c_water),"[J]/[kg °C]"));
disp(strcat("[Exp1: Heat Capacity Water [J/g°C]] ", num2str(c_water/1000),"[J]/[g °C]"));

