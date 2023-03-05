# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Master\SoC_Lab\Xilinx\Vitis\button_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Master\SoC_Lab\Xilinx\Vitis\button_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {button_wrapper}\
-hw {D:\Master\SoC_Lab\Xilinx\SoC_Lab\button_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {D:/Master/SoC_Lab/Xilinx/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {button_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
