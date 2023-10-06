%col1 ... t
%col2 ... current Temperature
%col3 ... Temperature change over Xs
%col4 ... Temperature change over 1 second [normalized]

pkg load io;

mfile = "msr/msr1.ods";

data = odsread(mfile);

dT_dt = data(:, 4);
dT_dt_mean = mean(dT_dt);
dT_dt_std_dev = std(dT_dt);


disp(strcat("[Exp1: dT_dt: Mean]  ", num2str(dT_dt_mean), "K/s"));
disp(strcat("[Exp1: dT_dt: Std_Dev]  ", num2str(dT_dt_std_dev), "K/s"));

