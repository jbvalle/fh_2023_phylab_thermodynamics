all: hcapacity err_prop

err_prop: FORCE
	@echo ""
	@echo ""
	@echo "Calculating Error Propagation Solid Body Heat Capacity ..."
	@echo "####################################################"
	@echo "# EXP2: Error Propagation Solid Body Heat Capacity #"
	@echo "####################################################"
	@octave error_propagation_c_solid_body.m

hcapacity: FORCE
	@echo ""
	@echo "###################################"
	@echo "# EXP2: Heat Capacity Solid Body  #"
	@echo "###################################"
	@octave determine_heat_capacity_solid_body.m

FORCE:

.PHONY : FORCE
