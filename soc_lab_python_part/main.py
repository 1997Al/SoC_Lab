import computationModule
import approximateAdders

#adder = approximateAdders.zero_truncation_adder
adder = approximateAdders.loa_adder
computationModule.computation_module(adder, 16)



