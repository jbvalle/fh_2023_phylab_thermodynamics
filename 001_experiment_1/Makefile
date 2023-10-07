all: mean hcapacity err_prop lin

mean: FORCE
	@echo ""
	@echo "mean and std_dev calculation ongoing..."
	@echo "###################################"
	@echo "# EXP1: MEAN & STANDARD DEVIATION #"
	@echo "###################################"
	@octave determine_mean_std_dev.m

hcapacity: FORCE
	@echo ""
	@echo "heat capacity calculation ongoing..."
	@echo "##############################"
	@echo "# EXP1: Heat Capacity Water  #"
	@echo "##############################"
	@octave determine_heat_capacity_water.m


err_prop: FORCE
	@echo ""
	@echo ""
	@echo "Calculating Error Propagation Water Heat Capacity ..."
	@echo "###############################################"
	@echo "# EXP1: Error Propagation Water Heat Capacity #"
	@echo "###############################################"
	@octave error_propagation_c_water.m

lin: FORCE
	@echo ""
	@echo ""
	@echo "Processing Linear Regression ..."
	@echo "###########################"
	@echo "# EXP1: Linear Regression #"
	@echo "###########################"
	@octave --persist linear_regression.m


FORCE:

.PHONY = FORCE

