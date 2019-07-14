create_clock -add -name board_clk -period 10 -waveform {0 5} [get_ports board_clk]
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { board_clk }];

set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { a }]; #IO_0_15 Sch=ja[1]
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { b }]; #IO_L4P_T0_15 Sch=ja[2]
set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { c }]; #IO_L4N_T0_15 Sch=ja[3]
set_property -dict { PACKAGE_PIN D12 	IOSTANDARD LVCMOS33 } [get_ports { d }]; #IO_L6P_T0_15 Sch=ja[4]

set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { e }]; #IO_L11P_T1_SRCC_15 Sch=jb_p[1]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { f }]; #IO_L11N_T1_SRCC_15 Sch=jb_n[1]
set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { g }]; #IO_L12P_T1_MRCC_15 Sch=jb_p[2]
set_property -dict { PACKAGE_PIN C15 IOSTANDARD LVCMOS33 } [get_ports { cat }]; #IO_L12N_T1_MRCC_15 Sch=jb_n[2]


#set_property -dict { PACKAGE_PIN A8 IOSTANDARD LVCMOS33 } [get_ports { cnt_source }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
#set_property -dict { PACKAGE_PIN C11 IOSTANDARD LVCMOS33 } [get_ports { cnt_source2 }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]

#set_property -dict { PACKAGE_PIN D9 IOSTANDARD LVCMOS33 } [get_ports { async_data }]; #IO_L6N_T0_VREF_16 Sch=btn[0]
#set_property -dict { PACKAGE_PIN F3 IOSTANDARD LVCMOS33 } [get_ports { async_data2 }]; #IO_L13N_T2_MRCC_35 Sch=jd[4]

#set_property -dict { PACKAGE_PIN H5 IOSTANDARD LVCMOS33 } [get_ports { led0 }]; #IO_L24N_T3_35 Sch=led[4]
#set_property -dict { PACKAGE_PIN J5 IOSTANDARD LVCMOS33 } [get_ports { led1 }]; #IO_25_35 Sch=led[5]
