## Switches
set_property PACKAGE_PIN V17 [get_ports {SW[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]
set_property PACKAGE_PIN V16 [get_ports {SW[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]
set_property PACKAGE_PIN W16 [get_ports {SW[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]
set_property PACKAGE_PIN W17 [get_ports {SW[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]
set_property PACKAGE_PIN W15 [get_ports {SW[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW[4]}]
set_property PACKAGE_PIN V15 [get_ports {SW[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW[5]}]
set_property PACKAGE_PIN W14 [get_ports {SW[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW[6]}]
set_property PACKAGE_PIN W13 [get_ports {SW[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW[7]}]
	
## carry_in
set_property PACKAGE_PIN R2 [get_ports {carry_in}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {carry_in}]
	
## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]                            
    set_property IOSTANDARD LVCMOS33 [get_ports clk]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
    
##Button (control)
set_property PACKAGE_PIN U18 [get_ports control[0]]						
	set_property IOSTANDARD LVCMOS33 [get_ports control[0]]
set_property PACKAGE_PIN T18 [get_ports control[1]]						
	set_property IOSTANDARD LVCMOS33 [get_ports control[1]]
	
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
set_property PACKAGE_PIN W7 [get_ports {segment[6]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[6]}]
set_property PACKAGE_PIN W6 [get_ports {segment[5]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[5]}]
set_property PACKAGE_PIN U8 [get_ports {segment[4]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[4]}]
set_property PACKAGE_PIN V8 [get_ports {segment[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[3]}]
set_property PACKAGE_PIN U5 [get_ports {segment[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[2]}]
set_property PACKAGE_PIN V5 [get_ports {segment[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[1]}]
set_property PACKAGE_PIN U7 [get_ports {segment[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {segment[0]}]