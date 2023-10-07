%load MSR Content
pkg load io;
mfile = "msr/msr1.ods";
data = odsread(mfile);




% mass_solid_body [g] solid body
mass_solid_body = data(1,1);

% mass_water [g]
mass_water = data(1,2);

% c_water ... heat capacity water [J/g°C]  ... according to official sources
c_water = data(1,3);

% init_temp_water 
init_temp_water = data(1,4);
% init_temp_mass
init_temp_solid_body = data(1,5);
% temp_equilibrium
temp_eq = data(1,6);

% [J / g K] : Source Exp1
err_propagated_c_water = 1.9196;

% [J / g K] Source Exp 2 determine_heat_capacity_solid_body.m
c_solid_body = 0.24754;

% Error Propagation c_solid_body over c_water
part_c_solid_body_over_c_w = (mass_water  * (temp_eq - init_temp_water)) / (mass_solid_body * (init_temp_solid_body - temp_eq));
err_propagated_c_solid_body = sqrt((part_c_solid_body_over_c_w^2)*(err_propagated_c_water^2));

disp(strcat("[Exp2: Error Propagation c_solid_body]",num2str(c_solid_body), "[J / g * K]"))
disp(strcat("[Exp2: Error Propagation c_solid_body std_deviation]",num2str(err_propagated_c_solid_body), "[J / g * K]"))
