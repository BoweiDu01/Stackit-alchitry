set projDir "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/vivado"
set projName "blockit"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/au_top_0.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/multi_seven_seg_1.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/blockit_beta_2.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/reset_conditioner_3.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/button_conditioner_4.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/edge_detector_5.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/multi_dec_ctr_6.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/counter_7.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/seven_seg_8.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/decoder_9.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/alu_10.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/blockit_controlunit_11.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/blockit_regfile_12.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/counter_13.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/counter_14.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/pipeline_15.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/decimal_counter_16.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/adder_17.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/boolean_18.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/shifter_19.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/compare_20.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/multiplier_21.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/mux_4_22.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_left_shifter_23.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_left_shifter_24.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_left_shifter_25.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_left_shifter_26.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_right_shifter_27.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_right_shifter_28.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_right_shifter_29.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_right_shifter_30.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_arithmetic_right_shifter_31.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_arithmetic_right_shifter_32.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_arithmetic_right_shifter_33.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/x_bit_arithmetic_right_shifter_34.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/fa_35.v" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/verilog/mux_2_36.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/constraint/io.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" "C:/Users/Du\ Bowei/Documents/alchitry/blockit/work/constraint/alchitry.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
