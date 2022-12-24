import computationModule
import approximateAdders

#choose approximate adder

#adder = approximateAdders.zero_truncation_adder
adder = approximateAdders.loa_adder
computationModule.computation_module(adder, 16)



