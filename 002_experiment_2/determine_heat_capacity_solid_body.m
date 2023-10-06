format short;

% mass_solid_body [g] solid body
mass_solid_body = 200;

% mass_water [g]
mass_water = 1000;

% c_water ... heat capacity water J / (g °C)  ... according to official sources
c_water = 4.186;


% init_temp_water 
init_temp_water = 35;
% init_temp_mass
init_temp_solid_body = 3;
% temp_equilibrium
temp_eq = 16;

c_solid_body = (mass_water * c_water * (temp_eq - init_temp_water)) / (mass_solid_body * (init_temp_solid_body - temp_eq));

disp(strcat("[Exp2: Heat Capacity Water [J/g°C]] ", num2str(c_solid_body),"[J]/[g °C]"));
disp(strcat("[Exp2: Heat Capacity Water [J/g°C]] ", num2str(c_solid_body * 1000),"[J]/[kg °C]"));

