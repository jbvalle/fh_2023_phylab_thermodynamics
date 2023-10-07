format short;
%load MSR Content
pkg load io;

mfile = "msr/msr1.ods";

data = odsread(mfile);

% Configure Values Accoridng to experiment
% I[A] ... Current
I = data(1,4);

% R[Ohm]... Resistance of the heating element
R = data(1,5);

% m[kg] ... Mass of the water
m_water = data(1,7);

% dT / dt [K/s] ... Change in Temperature per time normalized!!!
dT_dt = mean(data(:,3));

% c_water[[J] / [g] * [K]] ... Heat Capacity
c_water = (R * I^2) / (m_water * dT_dt);

disp(strcat("[Exp1: Heat Capacity Water [J/kg°C]] ", num2str(c_water),"[J]/[kg °C]"));
disp(strcat("[Exp1: Heat Capacity Water [J/g°C]] ", num2str(c_water/1000),"[J]/[g °C]"));

