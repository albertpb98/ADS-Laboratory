-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_8 -sv \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab3.gen/sources_1/bd/lab3/ip/lab3_processing_system7_0_0/sim/lab3_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_24 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab3.gen/sources_1/bd/lab3/ip/lab3_axi_gpio_0_0/sim/lab3_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_22 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_21 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_23 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab3.gen/sources_1/bd/lab3/ip/lab3_xbar_0/sim/lab3_xbar_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab3.gen/sources_1/bd/lab3/ip/lab3_rst_ps7_0_111M_0/sim/lab3_rst_ps7_0_111M_0.vhd" \
  "../../../../lab3.gen/sources_1/bd/lab3/VGA_controller_v2.vhd" \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/c5a7/hdl/VGA_controller_v2_v1_0_S00_AXI.vhd" \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/c5a7/hdl/VGA_controller_v2_v1_0.vhd" \
  "../../../../lab3.gen/sources_1/bd/lab3/ip/lab3_VGA_controller_v2_0_0/sim/lab3_VGA_controller_v2_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_22 \
  "../../../../lab3.gen/sources_1/bd/lab3/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab3.gen/sources_1/bd/lab3/ip/lab3_auto_pc_0/sim/lab3_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab3.gen/sources_1/bd/lab3/sim/lab3.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

