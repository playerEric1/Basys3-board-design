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
set_property webtalk.parent_dir C:/CoCO/Studio/studio5/studio5.cache/wt [current_project]
set_property parent.project_path C:/CoCO/Studio/studio5/studio5.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib C:/CoCO/Studio/studio5/studio5.srcs/sources_1/new/studio5_task1.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/CoCO/Studio/studio5/studio5.srcs/constrs_1/new/contrain.xdc
set_property used_in_implementation false [get_files C:/CoCO/Studio/studio5/studio5.srcs/constrs_1/new/contrain.xdc]


synth_design -top studio5_task1 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef studio5_task1.dcp

catch { report_utilization -file studio5_task1_utilization_synth.rpt -pb studio5_task1_utilization_synth.pb }