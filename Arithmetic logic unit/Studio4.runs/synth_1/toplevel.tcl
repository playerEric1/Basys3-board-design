# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/CoCO/Studio/Studio4/Studio4.cache/wt [current_project]
set_property parent.project_path C:/CoCO/Studio/Studio4/Studio4.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  C:/CoCO/Studio/studio_3/studio_3.srcs/sources_1/new/bit_full_adder.vhd
  C:/CoCO/Studio/Studio4/Studio4.srcs/sources_1/new/XORer.vhd
  C:/CoCO/Studio/Studio4/Studio4.srcs/sources_1/new/ORer.vhd
  C:/CoCO/Studio/Studio4/LEDdisplay.vhd
  C:/CoCO/Studio/Studio4/Function_select.vhd
  C:/CoCO/Display_driver.vhd
  C:/CoCO/Studio/Studio4/Studio4.srcs/sources_1/new/ANDer.vhd
  C:/CoCO/Studio/Studio4/Studio4.srcs/sources_1/new/adder.vhd
  C:/CoCO/Studio/Studio4/Studio4.srcs/sources_1/new/toplevel.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/CoCO/Studio/Studio4/Studio4.srcs/constrs_1/new/toplevel_contrain.xdc
set_property used_in_implementation false [get_files C:/CoCO/Studio/Studio4/Studio4.srcs/constrs_1/new/toplevel_contrain.xdc]


synth_design -top toplevel -part xc7a35tcpg236-1


write_checkpoint -force -noxdef toplevel.dcp

catch { report_utilization -file toplevel_utilization_synth.rpt -pb toplevel_utilization_synth.pb }