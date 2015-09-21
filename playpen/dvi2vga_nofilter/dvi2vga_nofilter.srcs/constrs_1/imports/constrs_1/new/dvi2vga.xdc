set_property PACKAGE_PIN L16 [get_ports clk_in1]
set_property PACKAGE_PIN R18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

create_clock -period 8.334 [get_ports TMDS_Clk_p]
