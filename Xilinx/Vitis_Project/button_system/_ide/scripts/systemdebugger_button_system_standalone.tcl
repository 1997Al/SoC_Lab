# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Master\SoC_Lab\Xilinx\Vitis\button_system\_ide\scripts\systemdebugger_button_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Master\SoC_Lab\Xilinx\Vitis\button_system\_ide\scripts\systemdebugger_button_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248685862" && level==0 && jtag_device_ctx=="jsn-Zed-210248685862-23727093-0"}
fpga -file D:/Master/SoC_Lab/Xilinx/Vitis/button/_ide/bitstream/button_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/Master/SoC_Lab/Xilinx/Vitis/button_wrapper/export/button_wrapper/hw/button_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/Master/SoC_Lab/Xilinx/Vitis/button/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/Master/SoC_Lab/Xilinx/Vitis/button/Debug/button.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
