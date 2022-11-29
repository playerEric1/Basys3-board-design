## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
	
## Switches
##Enable
set_property PACKAGE_PIN R2 [get_ports {enable}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {enable}]
##load_n
set_property PACKAGE_PIN T1 [get_ports {load_n}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {load_n}]
##clear_n
set_property PACKAGE_PIN U1 [get_ports {clear_n}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {clear_n}]
##initial value
set_property PACKAGE_PIN V17 [get_ports {initial_value[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {initial_value[0]}]
set_property PACKAGE_PIN V16 [get_ports {initial_value[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {initial_value[1]}]
set_property PACKAGE_PIN W16 [get_ports {initial_value[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {initial_value[2]}]
set_property PACKAGE_PIN W17 [get_ports {initial_value[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {initial_value[3]}]
	
##AN0-3
set_property PACKAGE_PIN U2 [get_ports {anode[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {anode[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {anode[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {anode[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {anode[3]}]  
    
##7 segment display
set_property PACKAGE_PIN W7 [get_ports {segment[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[0]}]
set_property PACKAGE_PIN W6 [get_ports {segment[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[1]}]
set_property PACKAGE_PIN U8 [get_ports {segment[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[2]}]
set_property PACKAGE_PIN V8 [get_ports {segment[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[3]}]
set_property PACKAGE_PIN U5 [get_ports {segment[4]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[4]}]
set_property PACKAGE_PIN V5 [get_ports {segment[5]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[5]}]
set_property PACKAGE_PIN U7 [get_ports {segment[6]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[6]}]


