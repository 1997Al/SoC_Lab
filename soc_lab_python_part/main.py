import topModule
import approximateAdders

#choose approximate adder

#adder = approximateAdders.zero_truncation_adder
adder = approximateAdders.loa_adder
topModule.computation_module(adder, 16)



