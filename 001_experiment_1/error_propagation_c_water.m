%load MSR Content
pkg load io;
mfile = "msr/msr1.ods";
data = odsread(mfile);

% voltage mean and standard deviation
U = mean(data(:,4));
U_std = std(data(:,4));

% voltage mean and standard deviation
dT_dt = mean(data(:,3));
dT_dt_std = std(data(:,3));

% resistance 
R = data(1,5);

% mass water
m_water = data(1, 7) * 1000;

c_water = ((U^2)/R) / (m_water * dT_dt);

%partial c / U
part_c_over_U = (2 * U) / (R * m_water * dT_dt);

%partial c / dT_dt
part_c_over_dT_dt = - (U^2) / (R * m_water * dT_dt^2);

err_propagated_c_water_std_dev = sqrt(((part_c_over_U^2) * (U_std^2)) + (part_c_over_dT_dt^2) * (dT_dt_std^2));
disp(strcat("[Exp1: c_water]",num2str(c_water), "[J / g * K]"))
disp(strcat("[Exp1: Error Propagation c_water std_deviation]",num2str(err_propagated_c_water_std_dev), "[J / g * K]"))

