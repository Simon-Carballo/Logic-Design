# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.cache/wt [current_project]
set_property parent.project_path C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Comparator.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Compare.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/CSE100/Lab6/sfcCSE100Lab6/sfcCSE100Lab6.srcs/sources_1/imports/new/Control_Logic.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Divider_ControlLogic.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Divider_StateMachine.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Divisor.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/CSE100/Lab4/sfcCSE100Lab4/sfcCSE100Lab4.srcs/sources_1/new/Edge_Detector.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Full_Subtractor.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/LED_Input_Control.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/LED_Prime_Control.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Led_Selector.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/new/MUX2_1x8.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/CSE100/Lab3/sfcCSE100Lab3/sfcCSE100Lab3.srcs/sources_1/new/MUX8_1.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Out_Selector.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/CSE100/Lab4/sfcCSE100Lab4/sfcCSE100Lab4.srcs/sources_1/new/Ring_Counter.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/CSE100/Lab3/sfcCSE100Lab3/sfcCSE100Lab3.srcs/sources_1/new/Segment_Display.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/CSE100/Lab4/sfcCSE100Lab4/sfcCSE100Lab4.srcs/sources_1/new/Selector.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Shift_Register.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/CSE100/Lab6/sfcCSE100Lab6/sfcCSE100Lab6.srcs/sources_1/imports/new/State_Machine.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Subtractor16bit.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/new/countUD4L.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/new/counterUD16L.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/imports/Lab7/lab6_clks.v
  C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/sources_1/new/Top_Level.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/constrs_1/imports/Lab5/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/Simon/OneDrive/Desktop/CSE100/Lab7/sfcCSE100Lab7/sfcCSE100Lab7.srcs/constrs_1/imports/Lab5/Basys3_Master.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Top_Level -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Top_Level.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Top_Level_utilization_synth.rpt -pb Top_Level_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]