all:

	@make -s -C 001_experiment_1/ mean
	@make -s -C 001_experiment_1/ hcapacity
	@make -s -C 002_experiment_2/ hcapacity
	@make -s -C 001_experiment_1/ lin

