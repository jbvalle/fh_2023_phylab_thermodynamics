format short;

%load MSR Content
pkg load io;

mfile = "msr/msr1.ods";

data = odsread(mfile);

% mass_solid_body [g] solid body
mass_solid_body = data(1,1);

% mass_water [g]
mass_water = data(1,2);

% c_water ... heat capacity water J / (g °C)  ... according to official sources
c_water = data(1,3);


% init_temp_water 
init_temp_water = data(1,4);
% init_temp_mass
init_temp_solid_body = data(1,5);
% temp_equilibrium
temp_eq = data(1,6);

c_solid_body = (mass_water * c_water * (temp_eq - init_temp_water)) / (mass_solid_body * (init_temp_solid_body - temp_eq));

disp(strcat("[Exp2: Heat Capacity Water [J/g°C]] ", num2str(c_solid_body),"[J]/[g °C]"));
disp(strcat("[Exp2: Heat Capacity Water [J/g°C]] ", num2str(c_solid_body * 1000),"[J]/[kg °C]"));

