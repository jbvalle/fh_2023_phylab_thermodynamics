format short;
%load MSR Content
pkg load io;

mfile = "msr/msr1.ods";

data = odsread(mfile);

% Configure Values Accoridng to experiment
% U[V]
U = mean(data(:,4));
U_std_dev = std(data(:,4));

% R[Ohm]... Resistance of the heating element
R = data(1,5);

% m[kg] ... Mass of the water
m_water = data(1,7);

% dT / dt [K/s] ... Change in Temperature per time normalized!!!
dT_dt = mean(data(:,3));

% c_water[[J] / [g] * [K]] ... Heat Capacity
% d(C_water)/dU =>
% U^2          1
% --- * ---------------
%  R    m_water * dT_dt
%
% 2*U          1
% --- * ---------------
%  R    m_water * dT_dt
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% d(C_water)/d(dT_dt) =>
% U^2          1
% --- * ---------------
%  R    m_water * dT_dt
%
% U^2          1
% --- * ---------------
%  R    m_water 
%%%%%%%%%%%%%%%%%%%%%%%%%%%

c_water = ((U^2)/R) / (m_water * dT_dt);


% Mean and uncertainty of U
disp(strcat("[Exp1: Mean of U]", num2str(U),"[V]"));
disp(strcat("[Exp1: Std Dev of U]", num2str(U_std_dev),"[V]"));

% Heat capacity of water
disp(strcat("[Exp1: Heat Capacity Water [J/kg°C]] ", num2str(c_water),"[J]/[kg °C]"));
disp(strcat("[Exp1: Heat Capacity Water [J/g°C]] ", num2str(c_water/1000),"[J]/[g °C]"));

