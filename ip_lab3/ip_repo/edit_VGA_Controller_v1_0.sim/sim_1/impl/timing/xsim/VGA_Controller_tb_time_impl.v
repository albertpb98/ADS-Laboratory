// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov  9 17:15:03 2021
// Host        : c5b5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/albert.poblador/ip_lab3/ip_repo/edit_VGA_Controller_v1_0.sim/sim_1/impl/timing/xsim/VGA_Controller_tb_time_impl.v
// Design      : VGA_Controller_v1_0
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module VGA_Controller
   (vsync,
    Q,
    \green_reg[3]_0 ,
    \blue_reg[3]_0 ,
    CLK,
    s00_axi_aresetn_IBUF,
    mode_IBUF);
  output vsync;
  output [3:0]Q;
  output [3:0]\green_reg[3]_0 ;
  output [3:0]\blue_reg[3]_0 ;
  input CLK;
  input s00_axi_aresetn_IBUF;
  input mode_IBUF;

  wire CLK;
  wire [3:0]Q;
  wire \blue[0]_i_1_n_0 ;
  wire \blue[0]_i_2_n_0 ;
  wire \blue[1]_i_1_n_0 ;
  wire \blue[1]_i_2_n_0 ;
  wire \blue[2]_i_1_n_0 ;
  wire \blue[2]_i_2_n_0 ;
  wire \blue[3]_i_1_n_0 ;
  wire \blue[3]_i_2_n_0 ;
  wire \blue[3]_i_3_n_0 ;
  wire [3:0]\blue_reg[3]_0 ;
  wire geqOp;
  wire \green[0]_i_1_n_0 ;
  wire \green[1]_i_1_n_0 ;
  wire \green[2]_i_1_n_0 ;
  wire \green[3]_i_1_n_0 ;
  wire \green[3]_i_2_n_0 ;
  wire \green[3]_i_3_n_0 ;
  wire \green[3]_i_4_n_0 ;
  wire \green[3]_i_5_n_0 ;
  wire \green[3]_i_6_n_0 ;
  wire \green[3]_i_7_n_0 ;
  wire \green[3]_i_8_n_0 ;
  wire [3:0]\green_reg[3]_0 ;
  wire gtOp;
  wire \line_count[10]_i_1_n_0 ;
  wire \line_count[10]_i_4_n_0 ;
  wire \line_count[3]_i_1_n_0 ;
  wire \line_count[4]_i_1_n_0 ;
  wire \line_count[5]_i_1_n_0 ;
  wire \line_count[7]_i_1_n_0 ;
  wire \line_count[7]_i_2_n_0 ;
  wire \line_count[8]_i_1_n_0 ;
  wire [10:1]line_count_reg;
  wire \line_count_reg_n_0_[0] ;
  wire ltOp_carry__0_i_1_n_0;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_i_8_n_0;
  wire ltOp_carry_n_0;
  wire mode_IBUF;
  wire [3:0]p_1_in;
  wire \pixel_count[0]_i_1_n_0 ;
  wire \pixel_count[10]_i_1_n_0 ;
  wire \pixel_count[10]_i_3_n_0 ;
  wire \pixel_count[10]_i_4_n_0 ;
  wire \pixel_count[2]_i_1_n_0 ;
  wire \pixel_count[3]_i_1_n_0 ;
  wire \pixel_count[7]_i_1_n_0 ;
  wire \pixel_count[8]_i_1_n_0 ;
  wire \pixel_count[9]_i_1_n_0 ;
  wire \pixel_count[9]_i_2_n_0 ;
  wire [10:0]pixel_count_reg;
  wire [10:1]plusOp;
  wire [10:0]plusOp__0;
  wire \red[3]_i_1_n_0 ;
  wire \red[3]_i_3_n_0 ;
  wire \red[3]_i_4_n_0 ;
  wire \red[3]_i_5_n_0 ;
  wire \red[3]_i_6_n_0 ;
  wire \red[3]_i_7_n_0 ;
  wire s00_axi_aresetn_IBUF;
  wire sel;
  wire vsync;
  wire vsync_i_1_n_0;
  wire vsync_i_3_n_0;
  wire [2:0]NLW_ltOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:1]NLW_ltOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000001FF8)) 
    \blue[0]_i_1 
       (.I0(pixel_count_reg[8]),
        .I1(\red[3]_i_3_n_0 ),
        .I2(pixel_count_reg[9]),
        .I3(pixel_count_reg[10]),
        .I4(\red[3]_i_4_n_0 ),
        .I5(\blue[0]_i_2_n_0 ),
        .O(\blue[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \blue[0]_i_2 
       (.I0(pixel_count_reg[0]),
        .I1(mode_IBUF),
        .O(\blue[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FF8)) 
    \blue[1]_i_1 
       (.I0(pixel_count_reg[8]),
        .I1(\red[3]_i_3_n_0 ),
        .I2(pixel_count_reg[9]),
        .I3(pixel_count_reg[10]),
        .I4(\red[3]_i_4_n_0 ),
        .I5(\blue[1]_i_2_n_0 ),
        .O(\blue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \blue[1]_i_2 
       (.I0(pixel_count_reg[1]),
        .I1(mode_IBUF),
        .O(\blue[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FF8)) 
    \blue[2]_i_1 
       (.I0(pixel_count_reg[8]),
        .I1(\red[3]_i_3_n_0 ),
        .I2(pixel_count_reg[9]),
        .I3(pixel_count_reg[10]),
        .I4(\red[3]_i_4_n_0 ),
        .I5(\blue[2]_i_2_n_0 ),
        .O(\blue[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \blue[2]_i_2 
       (.I0(pixel_count_reg[2]),
        .I1(mode_IBUF),
        .O(\blue[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00008008FFFFFFFF)) 
    \blue[3]_i_1 
       (.I0(\green[3]_i_6_n_0 ),
        .I1(\green[3]_i_3_n_0 ),
        .I2(line_count_reg[10]),
        .I3(\green[3]_i_4_n_0 ),
        .I4(\green[3]_i_5_n_0 ),
        .I5(s00_axi_aresetn_IBUF),
        .O(\blue[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FF8)) 
    \blue[3]_i_2 
       (.I0(pixel_count_reg[8]),
        .I1(\red[3]_i_3_n_0 ),
        .I2(pixel_count_reg[9]),
        .I3(pixel_count_reg[10]),
        .I4(\red[3]_i_4_n_0 ),
        .I5(\blue[3]_i_3_n_0 ),
        .O(\blue[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \blue[3]_i_3 
       (.I0(pixel_count_reg[3]),
        .I1(mode_IBUF),
        .O(\blue[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \blue_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\blue[0]_i_1_n_0 ),
        .Q(\blue_reg[3]_0 [0]),
        .R(\blue[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \blue_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\blue[1]_i_1_n_0 ),
        .Q(\blue_reg[3]_0 [1]),
        .R(\blue[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \blue_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\blue[2]_i_1_n_0 ),
        .Q(\blue_reg[3]_0 [2]),
        .R(\blue[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \blue_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\blue[3]_i_2_n_0 ),
        .Q(\blue_reg[3]_0 [3]),
        .R(\blue[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \green[0]_i_1 
       (.I0(\green[3]_i_6_n_0 ),
        .I1(mode_IBUF),
        .I2(pixel_count_reg[4]),
        .O(\green[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \green[1]_i_1 
       (.I0(\green[3]_i_6_n_0 ),
        .I1(mode_IBUF),
        .I2(pixel_count_reg[5]),
        .O(\green[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \green[2]_i_1 
       (.I0(\green[3]_i_6_n_0 ),
        .I1(mode_IBUF),
        .I2(pixel_count_reg[6]),
        .O(\green[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFBFFFFFFFF)) 
    \green[3]_i_1 
       (.I0(p_1_in[3]),
        .I1(\green[3]_i_3_n_0 ),
        .I2(line_count_reg[10]),
        .I3(\green[3]_i_4_n_0 ),
        .I4(\green[3]_i_5_n_0 ),
        .I5(s00_axi_aresetn_IBUF),
        .O(\green[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \green[3]_i_2 
       (.I0(\green[3]_i_6_n_0 ),
        .I1(mode_IBUF),
        .I2(pixel_count_reg[7]),
        .O(\green[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8A88)) 
    \green[3]_i_3 
       (.I0(pixel_count_reg[8]),
        .I1(pixel_count_reg[7]),
        .I2(\red[3]_i_6_n_0 ),
        .I3(\green[3]_i_7_n_0 ),
        .I4(pixel_count_reg[10]),
        .I5(pixel_count_reg[9]),
        .O(\green[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000005700FF00FF)) 
    \green[3]_i_4 
       (.I0(line_count_reg[3]),
        .I1(line_count_reg[2]),
        .I2(line_count_reg[1]),
        .I3(vsync_i_3_n_0),
        .I4(line_count_reg[4]),
        .I5(line_count_reg[5]),
        .O(\green[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888080)) 
    \green[3]_i_5 
       (.I0(pixel_count_reg[10]),
        .I1(pixel_count_reg[9]),
        .I2(pixel_count_reg[7]),
        .I3(\red[3]_i_6_n_0 ),
        .I4(\green[3]_i_7_n_0 ),
        .I5(pixel_count_reg[8]),
        .O(\green[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000F00)) 
    \green[3]_i_6 
       (.I0(line_count_reg[8]),
        .I1(\green[3]_i_8_n_0 ),
        .I2(line_count_reg[10]),
        .I3(mode_IBUF),
        .I4(line_count_reg[9]),
        .O(\green[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \green[3]_i_7 
       (.I0(pixel_count_reg[5]),
        .I1(pixel_count_reg[6]),
        .O(\green[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h001FFFFFFFFFFFFF)) 
    \green[3]_i_8 
       (.I0(line_count_reg[2]),
        .I1(line_count_reg[3]),
        .I2(line_count_reg[4]),
        .I3(line_count_reg[5]),
        .I4(line_count_reg[6]),
        .I5(line_count_reg[7]),
        .O(\green[3]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \green_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\green[0]_i_1_n_0 ),
        .Q(\green_reg[3]_0 [0]),
        .R(\green[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \green_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\green[1]_i_1_n_0 ),
        .Q(\green_reg[3]_0 [1]),
        .R(\green[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \green_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\green[2]_i_1_n_0 ),
        .Q(\green_reg[3]_0 [2]),
        .R(\green[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \green_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\green[3]_i_2_n_0 ),
        .Q(\green_reg[3]_0 [3]),
        .R(\green[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \line_count[0]_i_1 
       (.I0(\line_count_reg_n_0_[0] ),
        .O(plusOp__0[0]));
  LUT6 #(
    .INIT(64'h00080000FFFFFFFF)) 
    \line_count[10]_i_1 
       (.I0(pixel_count_reg[10]),
        .I1(pixel_count_reg[9]),
        .I2(\pixel_count[10]_i_3_n_0 ),
        .I3(\green[3]_i_4_n_0 ),
        .I4(line_count_reg[10]),
        .I5(s00_axi_aresetn_IBUF),
        .O(\line_count[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \line_count[10]_i_2 
       (.I0(pixel_count_reg[10]),
        .I1(pixel_count_reg[9]),
        .I2(\pixel_count[10]_i_3_n_0 ),
        .O(geqOp));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \line_count[10]_i_3 
       (.I0(line_count_reg[10]),
        .I1(line_count_reg[8]),
        .I2(line_count_reg[7]),
        .I3(\line_count[10]_i_4_n_0 ),
        .I4(line_count_reg[9]),
        .O(plusOp__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \line_count[10]_i_4 
       (.I0(line_count_reg[5]),
        .I1(line_count_reg[3]),
        .I2(\line_count[7]_i_2_n_0 ),
        .I3(line_count_reg[4]),
        .I4(line_count_reg[6]),
        .O(\line_count[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \line_count[1]_i_1 
       (.I0(\line_count_reg_n_0_[0] ),
        .I1(line_count_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \line_count[2]_i_1 
       (.I0(line_count_reg[2]),
        .I1(\line_count_reg_n_0_[0] ),
        .I2(line_count_reg[1]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \line_count[3]_i_1 
       (.I0(line_count_reg[3]),
        .I1(line_count_reg[2]),
        .I2(\line_count_reg_n_0_[0] ),
        .I3(line_count_reg[1]),
        .O(\line_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \line_count[4]_i_1 
       (.I0(line_count_reg[4]),
        .I1(line_count_reg[3]),
        .I2(line_count_reg[1]),
        .I3(\line_count_reg_n_0_[0] ),
        .I4(line_count_reg[2]),
        .O(\line_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \line_count[5]_i_1 
       (.I0(line_count_reg[5]),
        .I1(line_count_reg[4]),
        .I2(line_count_reg[2]),
        .I3(\line_count_reg_n_0_[0] ),
        .I4(line_count_reg[1]),
        .I5(line_count_reg[3]),
        .O(\line_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \line_count[6]_i_1 
       (.I0(line_count_reg[6]),
        .I1(line_count_reg[4]),
        .I2(\line_count[7]_i_2_n_0 ),
        .I3(line_count_reg[3]),
        .I4(line_count_reg[5]),
        .O(plusOp__0[6]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \line_count[7]_i_1 
       (.I0(line_count_reg[7]),
        .I1(line_count_reg[6]),
        .I2(line_count_reg[4]),
        .I3(\line_count[7]_i_2_n_0 ),
        .I4(line_count_reg[3]),
        .I5(line_count_reg[5]),
        .O(\line_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \line_count[7]_i_2 
       (.I0(line_count_reg[1]),
        .I1(\line_count_reg_n_0_[0] ),
        .I2(line_count_reg[2]),
        .O(\line_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \line_count[8]_i_1 
       (.I0(line_count_reg[8]),
        .I1(line_count_reg[7]),
        .I2(\line_count[10]_i_4_n_0 ),
        .O(\line_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \line_count[9]_i_1 
       (.I0(line_count_reg[9]),
        .I1(\line_count[10]_i_4_n_0 ),
        .I2(line_count_reg[7]),
        .I3(line_count_reg[8]),
        .O(plusOp__0[9]));
  FDSE #(
    .INIT(1'b1)) 
    \line_count_reg[0] 
       (.C(CLK),
        .CE(geqOp),
        .D(plusOp__0[0]),
        .Q(\line_count_reg_n_0_[0] ),
        .S(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[10] 
       (.C(CLK),
        .CE(geqOp),
        .D(plusOp__0[10]),
        .Q(line_count_reg[10]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[1] 
       (.C(CLK),
        .CE(geqOp),
        .D(plusOp__0[1]),
        .Q(line_count_reg[1]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[2] 
       (.C(CLK),
        .CE(geqOp),
        .D(plusOp__0[2]),
        .Q(line_count_reg[2]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[3] 
       (.C(CLK),
        .CE(geqOp),
        .D(\line_count[3]_i_1_n_0 ),
        .Q(line_count_reg[3]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[4] 
       (.C(CLK),
        .CE(geqOp),
        .D(\line_count[4]_i_1_n_0 ),
        .Q(line_count_reg[4]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[5] 
       (.C(CLK),
        .CE(geqOp),
        .D(\line_count[5]_i_1_n_0 ),
        .Q(line_count_reg[5]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[6] 
       (.C(CLK),
        .CE(geqOp),
        .D(plusOp__0[6]),
        .Q(line_count_reg[6]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[7] 
       (.C(CLK),
        .CE(geqOp),
        .D(\line_count[7]_i_1_n_0 ),
        .Q(line_count_reg[7]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[8] 
       (.C(CLK),
        .CE(geqOp),
        .D(\line_count[8]_i_1_n_0 ),
        .Q(line_count_reg[8]),
        .R(\line_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_count_reg[9] 
       (.C(CLK),
        .CE(geqOp),
        .D(plusOp__0[9]),
        .Q(line_count_reg[9]),
        .R(\line_count[10]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp_carry_n_0,NLW_ltOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0,ltOp_carry_i_4_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0,ltOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({NLW_ltOp_carry__0_CO_UNCONNECTED[3:1],sel}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ltOp_carry__0_i_1_n_0}),
        .O(NLW_ltOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,pixel_count_reg[10]}));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp_carry__0_i_1
       (.I0(pixel_count_reg[10]),
        .O(ltOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp_carry_i_1
       (.I0(pixel_count_reg[9]),
        .O(ltOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp_carry_i_2
       (.I0(pixel_count_reg[7]),
        .O(ltOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_3
       (.I0(pixel_count_reg[4]),
        .I1(pixel_count_reg[5]),
        .O(ltOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp_carry_i_4
       (.I0(pixel_count_reg[3]),
        .O(ltOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_5
       (.I0(pixel_count_reg[9]),
        .I1(pixel_count_reg[8]),
        .O(ltOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_6
       (.I0(pixel_count_reg[7]),
        .I1(pixel_count_reg[6]),
        .O(ltOp_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_7
       (.I0(pixel_count_reg[4]),
        .I1(pixel_count_reg[5]),
        .O(ltOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_8
       (.I0(pixel_count_reg[3]),
        .I1(pixel_count_reg[2]),
        .O(ltOp_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_count[0]_i_1 
       (.I0(pixel_count_reg[0]),
        .O(\pixel_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08FF)) 
    \pixel_count[10]_i_1 
       (.I0(pixel_count_reg[10]),
        .I1(pixel_count_reg[9]),
        .I2(\pixel_count[10]_i_3_n_0 ),
        .I3(s00_axi_aresetn_IBUF),
        .O(\pixel_count[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \pixel_count[10]_i_2 
       (.I0(pixel_count_reg[10]),
        .I1(\pixel_count[10]_i_4_n_0 ),
        .I2(pixel_count_reg[9]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h0000001555555555)) 
    \pixel_count[10]_i_3 
       (.I0(pixel_count_reg[8]),
        .I1(pixel_count_reg[4]),
        .I2(pixel_count_reg[3]),
        .I3(pixel_count_reg[6]),
        .I4(pixel_count_reg[5]),
        .I5(pixel_count_reg[7]),
        .O(\pixel_count[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \pixel_count[10]_i_4 
       (.I0(pixel_count_reg[7]),
        .I1(\pixel_count[9]_i_2_n_0 ),
        .I2(pixel_count_reg[6]),
        .I3(pixel_count_reg[5]),
        .I4(pixel_count_reg[8]),
        .O(\pixel_count[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_count[1]_i_1 
       (.I0(pixel_count_reg[1]),
        .I1(pixel_count_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pixel_count[2]_i_1 
       (.I0(pixel_count_reg[2]),
        .I1(pixel_count_reg[0]),
        .I2(pixel_count_reg[1]),
        .O(\pixel_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pixel_count[3]_i_1 
       (.I0(pixel_count_reg[3]),
        .I1(pixel_count_reg[2]),
        .I2(pixel_count_reg[1]),
        .I3(pixel_count_reg[0]),
        .O(\pixel_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pixel_count[4]_i_1 
       (.I0(pixel_count_reg[4]),
        .I1(pixel_count_reg[0]),
        .I2(pixel_count_reg[1]),
        .I3(pixel_count_reg[2]),
        .I4(pixel_count_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pixel_count[5]_i_1 
       (.I0(pixel_count_reg[4]),
        .I1(pixel_count_reg[3]),
        .I2(pixel_count_reg[2]),
        .I3(pixel_count_reg[1]),
        .I4(pixel_count_reg[0]),
        .I5(pixel_count_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \pixel_count[6]_i_1 
       (.I0(pixel_count_reg[6]),
        .I1(\pixel_count[9]_i_2_n_0 ),
        .I2(pixel_count_reg[5]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \pixel_count[7]_i_1 
       (.I0(pixel_count_reg[7]),
        .I1(pixel_count_reg[5]),
        .I2(pixel_count_reg[6]),
        .I3(\pixel_count[9]_i_2_n_0 ),
        .O(\pixel_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \pixel_count[8]_i_1 
       (.I0(pixel_count_reg[8]),
        .I1(pixel_count_reg[7]),
        .I2(\pixel_count[9]_i_2_n_0 ),
        .I3(pixel_count_reg[6]),
        .I4(pixel_count_reg[5]),
        .O(\pixel_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \pixel_count[9]_i_1 
       (.I0(pixel_count_reg[9]),
        .I1(pixel_count_reg[8]),
        .I2(pixel_count_reg[5]),
        .I3(pixel_count_reg[6]),
        .I4(\pixel_count[9]_i_2_n_0 ),
        .I5(pixel_count_reg[7]),
        .O(\pixel_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pixel_count[9]_i_2 
       (.I0(pixel_count_reg[4]),
        .I1(pixel_count_reg[3]),
        .I2(pixel_count_reg[2]),
        .I3(pixel_count_reg[1]),
        .I4(pixel_count_reg[0]),
        .O(\pixel_count[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \pixel_count_reg[0] 
       (.C(CLK),
        .CE(sel),
        .D(\pixel_count[0]_i_1_n_0 ),
        .Q(pixel_count_reg[0]),
        .S(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[10] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp[10]),
        .Q(pixel_count_reg[10]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[1] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp[1]),
        .Q(pixel_count_reg[1]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[2] 
       (.C(CLK),
        .CE(sel),
        .D(\pixel_count[2]_i_1_n_0 ),
        .Q(pixel_count_reg[2]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[3] 
       (.C(CLK),
        .CE(sel),
        .D(\pixel_count[3]_i_1_n_0 ),
        .Q(pixel_count_reg[3]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[4] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp[4]),
        .Q(pixel_count_reg[4]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[5] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp[5]),
        .Q(pixel_count_reg[5]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[6] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp[6]),
        .Q(pixel_count_reg[6]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[7] 
       (.C(CLK),
        .CE(sel),
        .D(\pixel_count[7]_i_1_n_0 ),
        .Q(pixel_count_reg[7]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[8] 
       (.C(CLK),
        .CE(sel),
        .D(\pixel_count[8]_i_1_n_0 ),
        .Q(pixel_count_reg[8]),
        .R(\pixel_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_count_reg[9] 
       (.C(CLK),
        .CE(sel),
        .D(\pixel_count[9]_i_1_n_0 ),
        .Q(pixel_count_reg[9]),
        .R(\pixel_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \red[0]_i_1 
       (.I0(p_1_in[3]),
        .I1(mode_IBUF),
        .I2(pixel_count_reg[8]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \red[1]_i_1 
       (.I0(p_1_in[3]),
        .I1(mode_IBUF),
        .I2(pixel_count_reg[9]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \red[2]_i_1 
       (.I0(p_1_in[3]),
        .I1(mode_IBUF),
        .I2(pixel_count_reg[10]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD55557F)) 
    \red[3]_i_1 
       (.I0(s00_axi_aresetn_IBUF),
        .I1(pixel_count_reg[8]),
        .I2(\red[3]_i_3_n_0 ),
        .I3(pixel_count_reg[9]),
        .I4(pixel_count_reg[10]),
        .I5(\red[3]_i_4_n_0 ),
        .O(\red[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \red[3]_i_2 
       (.I0(line_count_reg[8]),
        .I1(line_count_reg[7]),
        .I2(\red[3]_i_5_n_0 ),
        .I3(line_count_reg[10]),
        .I4(mode_IBUF),
        .I5(line_count_reg[9]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \red[3]_i_3 
       (.I0(pixel_count_reg[7]),
        .I1(\red[3]_i_6_n_0 ),
        .I2(pixel_count_reg[5]),
        .I3(pixel_count_reg[6]),
        .O(\red[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A99999999999)) 
    \red[3]_i_4 
       (.I0(line_count_reg[10]),
        .I1(\red[3]_i_7_n_0 ),
        .I2(line_count_reg[5]),
        .I3(line_count_reg[1]),
        .I4(line_count_reg[2]),
        .I5(line_count_reg[3]),
        .O(\red[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \red[3]_i_5 
       (.I0(line_count_reg[3]),
        .I1(line_count_reg[1]),
        .I2(line_count_reg[2]),
        .I3(line_count_reg[6]),
        .I4(line_count_reg[4]),
        .I5(line_count_reg[5]),
        .O(\red[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00005557)) 
    \red[3]_i_6 
       (.I0(pixel_count_reg[3]),
        .I1(pixel_count_reg[2]),
        .I2(pixel_count_reg[0]),
        .I3(pixel_count_reg[1]),
        .I4(pixel_count_reg[4]),
        .O(\red[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \red[3]_i_7 
       (.I0(line_count_reg[5]),
        .I1(line_count_reg[4]),
        .I2(line_count_reg[8]),
        .I3(line_count_reg[9]),
        .I4(line_count_reg[6]),
        .I5(line_count_reg[7]),
        .O(\red[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \red_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(\red[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \red_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(\red[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \red_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(\red[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \red_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(\red[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    vsync_i_1
       (.I0(s00_axi_aresetn_IBUF),
        .I1(gtOp),
        .O(vsync_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    vsync_i_2
       (.I0(vsync_i_3_n_0),
        .I1(line_count_reg[4]),
        .I2(line_count_reg[5]),
        .I3(line_count_reg[10]),
        .I4(line_count_reg[3]),
        .I5(line_count_reg[2]),
        .O(gtOp));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    vsync_i_3
       (.I0(line_count_reg[7]),
        .I1(line_count_reg[6]),
        .I2(line_count_reg[9]),
        .I3(line_count_reg[8]),
        .O(vsync_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_reg
       (.C(CLK),
        .CE(gtOp),
        .D(gtOp),
        .Q(vsync),
        .R(vsync_i_1_n_0));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* ECO_CHECKSUM = "30657626" *) 
(* NotValidForBitStream *)
module VGA_Controller_v1_0
   (mode,
    vsync,
    hsync,
    red,
    green,
    blue,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input mode;
  output vsync;
  output hsync;
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;

  wire [3:0]blue;
  wire [3:0]blue_OBUF;
  wire [3:0]green;
  wire [3:0]green_OBUF;
  wire hsync;
  wire mode;
  wire mode_IBUF;
  wire [3:0]red;
  wire [3:0]red_OBUF;
  wire s00_axi_aclk;
  wire s00_axi_aclk_IBUF;
  wire s00_axi_aclk_IBUF_BUFG;
  wire [3:0]s00_axi_araddr;
  wire [3:2]s00_axi_araddr_IBUF;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_IBUF;
  wire s00_axi_arready;
  wire s00_axi_arready_OBUF;
  wire s00_axi_arvalid;
  wire s00_axi_arvalid_IBUF;
  wire [3:0]s00_axi_awaddr;
  wire [3:2]s00_axi_awaddr_IBUF;
  wire s00_axi_awready;
  wire s00_axi_awready_OBUF;
  wire s00_axi_awvalid;
  wire s00_axi_awvalid_IBUF;
  wire s00_axi_bready;
  wire s00_axi_bready_IBUF;
  wire [1:0]s00_axi_bresp;
  wire s00_axi_bvalid;
  wire s00_axi_bvalid_OBUF;
  wire [31:0]s00_axi_rdata;
  wire [31:0]s00_axi_rdata_OBUF;
  wire s00_axi_rready;
  wire s00_axi_rready_IBUF;
  wire [1:0]s00_axi_rresp;
  wire s00_axi_rvalid;
  wire s00_axi_rvalid_OBUF;
  wire [31:0]s00_axi_wdata;
  wire [31:0]s00_axi_wdata_IBUF;
  wire s00_axi_wready;
  wire s00_axi_wready_OBUF;
  wire [3:0]s00_axi_wstrb;
  wire [3:0]s00_axi_wstrb_IBUF;
  wire s00_axi_wvalid;
  wire s00_axi_wvalid_IBUF;
  wire vsync;
  wire vsync_OBUF;

initial begin
 $sdf_annotate("VGA_Controller_tb_time_impl.sdf",,,,"tool_control");
end
  VGA_Controller_v1_0_S00_AXI VGA_Controller_v1_0_S00_AXI_inst
       (.CLK(s00_axi_aclk_IBUF_BUFG),
        .D(s00_axi_araddr_IBUF),
        .Q(red_OBUF),
        .S_AXI_ARREADY(s00_axi_arready_OBUF),
        .S_AXI_AWREADY(s00_axi_awready_OBUF),
        .S_AXI_WREADY(s00_axi_wready_OBUF),
        .\axi_awaddr_reg[3]_0 (s00_axi_awaddr_IBUF),
        .\axi_rdata_reg[31]_0 (s00_axi_rdata_OBUF),
        .\blue_reg[3] (blue_OBUF),
        .\green_reg[3] (green_OBUF),
        .mode_IBUF(mode_IBUF),
        .s00_axi_aresetn_IBUF(s00_axi_aresetn_IBUF),
        .s00_axi_arvalid_IBUF(s00_axi_arvalid_IBUF),
        .s00_axi_awvalid_IBUF(s00_axi_awvalid_IBUF),
        .s00_axi_bready_IBUF(s00_axi_bready_IBUF),
        .s00_axi_bvalid_OBUF(s00_axi_bvalid_OBUF),
        .s00_axi_rready_IBUF(s00_axi_rready_IBUF),
        .s00_axi_rvalid_OBUF(s00_axi_rvalid_OBUF),
        .s00_axi_wstrb_IBUF(s00_axi_wstrb_IBUF),
        .s00_axi_wvalid_IBUF(s00_axi_wvalid_IBUF),
        .\slv_reg0_reg[31]_0 (s00_axi_wdata_IBUF),
        .vsync(vsync_OBUF));
  OBUF \blue_OBUF[0]_inst 
       (.I(blue_OBUF[0]),
        .O(blue[0]));
  OBUF \blue_OBUF[1]_inst 
       (.I(blue_OBUF[1]),
        .O(blue[1]));
  OBUF \blue_OBUF[2]_inst 
       (.I(blue_OBUF[2]),
        .O(blue[2]));
  OBUF \blue_OBUF[3]_inst 
       (.I(blue_OBUF[3]),
        .O(blue[3]));
  OBUF \green_OBUF[0]_inst 
       (.I(green_OBUF[0]),
        .O(green[0]));
  OBUF \green_OBUF[1]_inst 
       (.I(green_OBUF[1]),
        .O(green[1]));
  OBUF \green_OBUF[2]_inst 
       (.I(green_OBUF[2]),
        .O(green[2]));
  OBUF \green_OBUF[3]_inst 
       (.I(green_OBUF[3]),
        .O(green[3]));
  OBUF hsync_OBUF_inst
       (.I(1'b0),
        .O(hsync));
  IBUF mode_IBUF_inst
       (.I(mode),
        .O(mode_IBUF));
  OBUF \red_OBUF[0]_inst 
       (.I(red_OBUF[0]),
        .O(red[0]));
  OBUF \red_OBUF[1]_inst 
       (.I(red_OBUF[1]),
        .O(red[1]));
  OBUF \red_OBUF[2]_inst 
       (.I(red_OBUF[2]),
        .O(red[2]));
  OBUF \red_OBUF[3]_inst 
       (.I(red_OBUF[3]),
        .O(red[3]));
  BUFG s00_axi_aclk_IBUF_BUFG_inst
       (.I(s00_axi_aclk_IBUF),
        .O(s00_axi_aclk_IBUF_BUFG));
  IBUF s00_axi_aclk_IBUF_inst
       (.I(s00_axi_aclk),
        .O(s00_axi_aclk_IBUF));
  IBUF \s00_axi_araddr_IBUF[2]_inst 
       (.I(s00_axi_araddr[2]),
        .O(s00_axi_araddr_IBUF[2]));
  IBUF \s00_axi_araddr_IBUF[3]_inst 
       (.I(s00_axi_araddr[3]),
        .O(s00_axi_araddr_IBUF[3]));
  IBUF s00_axi_aresetn_IBUF_inst
       (.I(s00_axi_aresetn),
        .O(s00_axi_aresetn_IBUF));
  OBUF s00_axi_arready_OBUF_inst
       (.I(s00_axi_arready_OBUF),
        .O(s00_axi_arready));
  IBUF s00_axi_arvalid_IBUF_inst
       (.I(s00_axi_arvalid),
        .O(s00_axi_arvalid_IBUF));
  IBUF \s00_axi_awaddr_IBUF[2]_inst 
       (.I(s00_axi_awaddr[2]),
        .O(s00_axi_awaddr_IBUF[2]));
  IBUF \s00_axi_awaddr_IBUF[3]_inst 
       (.I(s00_axi_awaddr[3]),
        .O(s00_axi_awaddr_IBUF[3]));
  OBUF s00_axi_awready_OBUF_inst
       (.I(s00_axi_awready_OBUF),
        .O(s00_axi_awready));
  IBUF s00_axi_awvalid_IBUF_inst
       (.I(s00_axi_awvalid),
        .O(s00_axi_awvalid_IBUF));
  IBUF s00_axi_bready_IBUF_inst
       (.I(s00_axi_bready),
        .O(s00_axi_bready_IBUF));
  OBUF \s00_axi_bresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s00_axi_bresp[0]));
  OBUF \s00_axi_bresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s00_axi_bresp[1]));
  OBUF s00_axi_bvalid_OBUF_inst
       (.I(s00_axi_bvalid_OBUF),
        .O(s00_axi_bvalid));
  OBUF \s00_axi_rdata_OBUF[0]_inst 
       (.I(s00_axi_rdata_OBUF[0]),
        .O(s00_axi_rdata[0]));
  OBUF \s00_axi_rdata_OBUF[10]_inst 
       (.I(s00_axi_rdata_OBUF[10]),
        .O(s00_axi_rdata[10]));
  OBUF \s00_axi_rdata_OBUF[11]_inst 
       (.I(s00_axi_rdata_OBUF[11]),
        .O(s00_axi_rdata[11]));
  OBUF \s00_axi_rdata_OBUF[12]_inst 
       (.I(s00_axi_rdata_OBUF[12]),
        .O(s00_axi_rdata[12]));
  OBUF \s00_axi_rdata_OBUF[13]_inst 
       (.I(s00_axi_rdata_OBUF[13]),
        .O(s00_axi_rdata[13]));
  OBUF \s00_axi_rdata_OBUF[14]_inst 
       (.I(s00_axi_rdata_OBUF[14]),
        .O(s00_axi_rdata[14]));
  OBUF \s00_axi_rdata_OBUF[15]_inst 
       (.I(s00_axi_rdata_OBUF[15]),
        .O(s00_axi_rdata[15]));
  OBUF \s00_axi_rdata_OBUF[16]_inst 
       (.I(s00_axi_rdata_OBUF[16]),
        .O(s00_axi_rdata[16]));
  OBUF \s00_axi_rdata_OBUF[17]_inst 
       (.I(s00_axi_rdata_OBUF[17]),
        .O(s00_axi_rdata[17]));
  OBUF \s00_axi_rdata_OBUF[18]_inst 
       (.I(s00_axi_rdata_OBUF[18]),
        .O(s00_axi_rdata[18]));
  OBUF \s00_axi_rdata_OBUF[19]_inst 
       (.I(s00_axi_rdata_OBUF[19]),
        .O(s00_axi_rdata[19]));
  OBUF \s00_axi_rdata_OBUF[1]_inst 
       (.I(s00_axi_rdata_OBUF[1]),
        .O(s00_axi_rdata[1]));
  OBUF \s00_axi_rdata_OBUF[20]_inst 
       (.I(s00_axi_rdata_OBUF[20]),
        .O(s00_axi_rdata[20]));
  OBUF \s00_axi_rdata_OBUF[21]_inst 
       (.I(s00_axi_rdata_OBUF[21]),
        .O(s00_axi_rdata[21]));
  OBUF \s00_axi_rdata_OBUF[22]_inst 
       (.I(s00_axi_rdata_OBUF[22]),
        .O(s00_axi_rdata[22]));
  OBUF \s00_axi_rdata_OBUF[23]_inst 
       (.I(s00_axi_rdata_OBUF[23]),
        .O(s00_axi_rdata[23]));
  OBUF \s00_axi_rdata_OBUF[24]_inst 
       (.I(s00_axi_rdata_OBUF[24]),
        .O(s00_axi_rdata[24]));
  OBUF \s00_axi_rdata_OBUF[25]_inst 
       (.I(s00_axi_rdata_OBUF[25]),
        .O(s00_axi_rdata[25]));
  OBUF \s00_axi_rdata_OBUF[26]_inst 
       (.I(s00_axi_rdata_OBUF[26]),
        .O(s00_axi_rdata[26]));
  OBUF \s00_axi_rdata_OBUF[27]_inst 
       (.I(s00_axi_rdata_OBUF[27]),
        .O(s00_axi_rdata[27]));
  OBUF \s00_axi_rdata_OBUF[28]_inst 
       (.I(s00_axi_rdata_OBUF[28]),
        .O(s00_axi_rdata[28]));
  OBUF \s00_axi_rdata_OBUF[29]_inst 
       (.I(s00_axi_rdata_OBUF[29]),
        .O(s00_axi_rdata[29]));
  OBUF \s00_axi_rdata_OBUF[2]_inst 
       (.I(s00_axi_rdata_OBUF[2]),
        .O(s00_axi_rdata[2]));
  OBUF \s00_axi_rdata_OBUF[30]_inst 
       (.I(s00_axi_rdata_OBUF[30]),
        .O(s00_axi_rdata[30]));
  OBUF \s00_axi_rdata_OBUF[31]_inst 
       (.I(s00_axi_rdata_OBUF[31]),
        .O(s00_axi_rdata[31]));
  OBUF \s00_axi_rdata_OBUF[3]_inst 
       (.I(s00_axi_rdata_OBUF[3]),
        .O(s00_axi_rdata[3]));
  OBUF \s00_axi_rdata_OBUF[4]_inst 
       (.I(s00_axi_rdata_OBUF[4]),
        .O(s00_axi_rdata[4]));
  OBUF \s00_axi_rdata_OBUF[5]_inst 
       (.I(s00_axi_rdata_OBUF[5]),
        .O(s00_axi_rdata[5]));
  OBUF \s00_axi_rdata_OBUF[6]_inst 
       (.I(s00_axi_rdata_OBUF[6]),
        .O(s00_axi_rdata[6]));
  OBUF \s00_axi_rdata_OBUF[7]_inst 
       (.I(s00_axi_rdata_OBUF[7]),
        .O(s00_axi_rdata[7]));
  OBUF \s00_axi_rdata_OBUF[8]_inst 
       (.I(s00_axi_rdata_OBUF[8]),
        .O(s00_axi_rdata[8]));
  OBUF \s00_axi_rdata_OBUF[9]_inst 
       (.I(s00_axi_rdata_OBUF[9]),
        .O(s00_axi_rdata[9]));
  IBUF s00_axi_rready_IBUF_inst
       (.I(s00_axi_rready),
        .O(s00_axi_rready_IBUF));
  OBUF \s00_axi_rresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s00_axi_rresp[0]));
  OBUF \s00_axi_rresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s00_axi_rresp[1]));
  OBUF s00_axi_rvalid_OBUF_inst
       (.I(s00_axi_rvalid_OBUF),
        .O(s00_axi_rvalid));
  IBUF \s00_axi_wdata_IBUF[0]_inst 
       (.I(s00_axi_wdata[0]),
        .O(s00_axi_wdata_IBUF[0]));
  IBUF \s00_axi_wdata_IBUF[10]_inst 
       (.I(s00_axi_wdata[10]),
        .O(s00_axi_wdata_IBUF[10]));
  IBUF \s00_axi_wdata_IBUF[11]_inst 
       (.I(s00_axi_wdata[11]),
        .O(s00_axi_wdata_IBUF[11]));
  IBUF \s00_axi_wdata_IBUF[12]_inst 
       (.I(s00_axi_wdata[12]),
        .O(s00_axi_wdata_IBUF[12]));
  IBUF \s00_axi_wdata_IBUF[13]_inst 
       (.I(s00_axi_wdata[13]),
        .O(s00_axi_wdata_IBUF[13]));
  IBUF \s00_axi_wdata_IBUF[14]_inst 
       (.I(s00_axi_wdata[14]),
        .O(s00_axi_wdata_IBUF[14]));
  IBUF \s00_axi_wdata_IBUF[15]_inst 
       (.I(s00_axi_wdata[15]),
        .O(s00_axi_wdata_IBUF[15]));
  IBUF \s00_axi_wdata_IBUF[16]_inst 
       (.I(s00_axi_wdata[16]),
        .O(s00_axi_wdata_IBUF[16]));
  IBUF \s00_axi_wdata_IBUF[17]_inst 
       (.I(s00_axi_wdata[17]),
        .O(s00_axi_wdata_IBUF[17]));
  IBUF \s00_axi_wdata_IBUF[18]_inst 
       (.I(s00_axi_wdata[18]),
        .O(s00_axi_wdata_IBUF[18]));
  IBUF \s00_axi_wdata_IBUF[19]_inst 
       (.I(s00_axi_wdata[19]),
        .O(s00_axi_wdata_IBUF[19]));
  IBUF \s00_axi_wdata_IBUF[1]_inst 
       (.I(s00_axi_wdata[1]),
        .O(s00_axi_wdata_IBUF[1]));
  IBUF \s00_axi_wdata_IBUF[20]_inst 
       (.I(s00_axi_wdata[20]),
        .O(s00_axi_wdata_IBUF[20]));
  IBUF \s00_axi_wdata_IBUF[21]_inst 
       (.I(s00_axi_wdata[21]),
        .O(s00_axi_wdata_IBUF[21]));
  IBUF \s00_axi_wdata_IBUF[22]_inst 
       (.I(s00_axi_wdata[22]),
        .O(s00_axi_wdata_IBUF[22]));
  IBUF \s00_axi_wdata_IBUF[23]_inst 
       (.I(s00_axi_wdata[23]),
        .O(s00_axi_wdata_IBUF[23]));
  IBUF \s00_axi_wdata_IBUF[24]_inst 
       (.I(s00_axi_wdata[24]),
        .O(s00_axi_wdata_IBUF[24]));
  IBUF \s00_axi_wdata_IBUF[25]_inst 
       (.I(s00_axi_wdata[25]),
        .O(s00_axi_wdata_IBUF[25]));
  IBUF \s00_axi_wdata_IBUF[26]_inst 
       (.I(s00_axi_wdata[26]),
        .O(s00_axi_wdata_IBUF[26]));
  IBUF \s00_axi_wdata_IBUF[27]_inst 
       (.I(s00_axi_wdata[27]),
        .O(s00_axi_wdata_IBUF[27]));
  IBUF \s00_axi_wdata_IBUF[28]_inst 
       (.I(s00_axi_wdata[28]),
        .O(s00_axi_wdata_IBUF[28]));
  IBUF \s00_axi_wdata_IBUF[29]_inst 
       (.I(s00_axi_wdata[29]),
        .O(s00_axi_wdata_IBUF[29]));
  IBUF \s00_axi_wdata_IBUF[2]_inst 
       (.I(s00_axi_wdata[2]),
        .O(s00_axi_wdata_IBUF[2]));
  IBUF \s00_axi_wdata_IBUF[30]_inst 
       (.I(s00_axi_wdata[30]),
        .O(s00_axi_wdata_IBUF[30]));
  IBUF \s00_axi_wdata_IBUF[31]_inst 
       (.I(s00_axi_wdata[31]),
        .O(s00_axi_wdata_IBUF[31]));
  IBUF \s00_axi_wdata_IBUF[3]_inst 
       (.I(s00_axi_wdata[3]),
        .O(s00_axi_wdata_IBUF[3]));
  IBUF \s00_axi_wdata_IBUF[4]_inst 
       (.I(s00_axi_wdata[4]),
        .O(s00_axi_wdata_IBUF[4]));
  IBUF \s00_axi_wdata_IBUF[5]_inst 
       (.I(s00_axi_wdata[5]),
        .O(s00_axi_wdata_IBUF[5]));
  IBUF \s00_axi_wdata_IBUF[6]_inst 
       (.I(s00_axi_wdata[6]),
        .O(s00_axi_wdata_IBUF[6]));
  IBUF \s00_axi_wdata_IBUF[7]_inst 
       (.I(s00_axi_wdata[7]),
        .O(s00_axi_wdata_IBUF[7]));
  IBUF \s00_axi_wdata_IBUF[8]_inst 
       (.I(s00_axi_wdata[8]),
        .O(s00_axi_wdata_IBUF[8]));
  IBUF \s00_axi_wdata_IBUF[9]_inst 
       (.I(s00_axi_wdata[9]),
        .O(s00_axi_wdata_IBUF[9]));
  OBUF s00_axi_wready_OBUF_inst
       (.I(s00_axi_wready_OBUF),
        .O(s00_axi_wready));
  IBUF \s00_axi_wstrb_IBUF[0]_inst 
       (.I(s00_axi_wstrb[0]),
        .O(s00_axi_wstrb_IBUF[0]));
  IBUF \s00_axi_wstrb_IBUF[1]_inst 
       (.I(s00_axi_wstrb[1]),
        .O(s00_axi_wstrb_IBUF[1]));
  IBUF \s00_axi_wstrb_IBUF[2]_inst 
       (.I(s00_axi_wstrb[2]),
        .O(s00_axi_wstrb_IBUF[2]));
  IBUF \s00_axi_wstrb_IBUF[3]_inst 
       (.I(s00_axi_wstrb[3]),
        .O(s00_axi_wstrb_IBUF[3]));
  IBUF s00_axi_wvalid_IBUF_inst
       (.I(s00_axi_wvalid),
        .O(s00_axi_wvalid_IBUF));
  OBUF vsync_OBUF_inst
       (.I(vsync_OBUF),
        .O(vsync));
endmodule

module VGA_Controller_v1_0_S00_AXI
   (vsync,
    Q,
    \green_reg[3] ,
    \blue_reg[3] ,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    \axi_rdata_reg[31]_0 ,
    s00_axi_rvalid_OBUF,
    s00_axi_bvalid_OBUF,
    s00_axi_aresetn_IBUF,
    CLK,
    D,
    \axi_awaddr_reg[3]_0 ,
    \slv_reg0_reg[31]_0 ,
    mode_IBUF,
    s00_axi_wvalid_IBUF,
    s00_axi_awvalid_IBUF,
    s00_axi_wstrb_IBUF,
    s00_axi_arvalid_IBUF,
    s00_axi_bready_IBUF,
    s00_axi_rready_IBUF);
  output vsync;
  output [3:0]Q;
  output [3:0]\green_reg[3] ;
  output [3:0]\blue_reg[3] ;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]\axi_rdata_reg[31]_0 ;
  output s00_axi_rvalid_OBUF;
  output s00_axi_bvalid_OBUF;
  input s00_axi_aresetn_IBUF;
  input CLK;
  input [1:0]D;
  input [1:0]\axi_awaddr_reg[3]_0 ;
  input [31:0]\slv_reg0_reg[31]_0 ;
  input mode_IBUF;
  input s00_axi_wvalid_IBUF;
  input s00_axi_awvalid_IBUF;
  input [3:0]s00_axi_wstrb_IBUF;
  input s00_axi_arvalid_IBUF;
  input s00_axi_bready_IBUF;
  input s00_axi_rready_IBUF;

  wire CLK;
  wire [1:0]D;
  wire [3:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire [1:0]\axi_awaddr_reg[3]_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_i_1_n_0;
  wire [3:0]\blue_reg[3] ;
  wire [3:0]\green_reg[3] ;
  wire mode_IBUF;
  wire [31:0]reg_data_out;
  wire s00_axi_aresetn_IBUF;
  wire s00_axi_arvalid_IBUF;
  wire s00_axi_awvalid_IBUF;
  wire s00_axi_bready_IBUF;
  wire s00_axi_bvalid_OBUF;
  wire s00_axi_rready_IBUF;
  wire s00_axi_rvalid_OBUF;
  wire [3:0]s00_axi_wstrb_IBUF;
  wire s00_axi_wvalid_IBUF;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]\slv_reg0_reg[31]_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire vsync;

  VGA_Controller VGA_Controller_instance
       (.CLK(CLK),
        .Q(Q),
        .\blue_reg[3]_0 (\blue_reg[3] ),
        .\green_reg[3]_0 (\green_reg[3] ),
        .mode_IBUF(mode_IBUF),
        .s00_axi_aresetn_IBUF(s00_axi_aresetn_IBUF),
        .vsync(vsync));
  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid_IBUF),
        .I2(s00_axi_wvalid_IBUF),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready_IBUF),
        .I5(s00_axi_bvalid_OBUF),
        .O(aw_en_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    aw_en_reg
       (.C(CLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_wready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \axi_araddr_reg[2] 
       (.C(CLK),
        .CE(axi_arready0),
        .D(D[0]),
        .Q(axi_araddr[2]),
        .S(axi_wready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \axi_araddr_reg[3] 
       (.C(CLK),
        .CE(axi_arready0),
        .D(D[1]),
        .Q(axi_araddr[3]),
        .S(axi_wready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid_IBUF),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(CLK),
        .CE(axi_awready0),
        .D(\axi_awaddr_reg[3]_0 [0]),
        .Q(axi_awaddr[2]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(CLK),
        .CE(axi_awready0),
        .D(\axi_awaddr_reg[3]_0 [1]),
        .Q(axi_awaddr[3]),
        .R(axi_wready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid_IBUF),
        .I2(s00_axi_awvalid_IBUF),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid_IBUF),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid_IBUF),
        .I4(s00_axi_bready_IBUF),
        .I5(s00_axi_bvalid_OBUF),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid_OBUF),
        .R(axi_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid_IBUF),
        .I2(s00_axi_rvalid_OBUF),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(\axi_rdata_reg[31]_0 [0]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(\axi_rdata_reg[31]_0 [10]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(\axi_rdata_reg[31]_0 [11]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(\axi_rdata_reg[31]_0 [12]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(\axi_rdata_reg[31]_0 [13]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(\axi_rdata_reg[31]_0 [14]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(\axi_rdata_reg[31]_0 [15]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(\axi_rdata_reg[31]_0 [16]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(\axi_rdata_reg[31]_0 [17]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(\axi_rdata_reg[31]_0 [18]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(\axi_rdata_reg[31]_0 [19]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(\axi_rdata_reg[31]_0 [1]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(\axi_rdata_reg[31]_0 [20]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(\axi_rdata_reg[31]_0 [21]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(\axi_rdata_reg[31]_0 [22]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(\axi_rdata_reg[31]_0 [23]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(\axi_rdata_reg[31]_0 [24]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(\axi_rdata_reg[31]_0 [25]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(\axi_rdata_reg[31]_0 [26]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(\axi_rdata_reg[31]_0 [27]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(\axi_rdata_reg[31]_0 [28]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(\axi_rdata_reg[31]_0 [29]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(\axi_rdata_reg[31]_0 [2]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(\axi_rdata_reg[31]_0 [30]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(\axi_rdata_reg[31]_0 [31]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(\axi_rdata_reg[31]_0 [3]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(\axi_rdata_reg[31]_0 [4]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(\axi_rdata_reg[31]_0 [5]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(\axi_rdata_reg[31]_0 [6]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(\axi_rdata_reg[31]_0 [7]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(\axi_rdata_reg[31]_0 [8]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(\axi_rdata_reg[31]_0 [9]),
        .R(axi_wready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid_IBUF),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid_OBUF),
        .I3(s00_axi_rready_IBUF),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid_OBUF),
        .R(axi_wready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_wready_i_1
       (.I0(s00_axi_aresetn_IBUF),
        .O(axi_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid_IBUF),
        .I2(s00_axi_awvalid_IBUF),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_wready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb_IBUF[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb_IBUF[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb_IBUF[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb_IBUF[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[0] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [0]),
        .Q(slv_reg0[0]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[10] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [10]),
        .Q(slv_reg0[10]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[11] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [11]),
        .Q(slv_reg0[11]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[12] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [12]),
        .Q(slv_reg0[12]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[13] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [13]),
        .Q(slv_reg0[13]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[14] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [14]),
        .Q(slv_reg0[14]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[15] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [15]),
        .Q(slv_reg0[15]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[16] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [16]),
        .Q(slv_reg0[16]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[17] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [17]),
        .Q(slv_reg0[17]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[18] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [18]),
        .Q(slv_reg0[18]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[19] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [19]),
        .Q(slv_reg0[19]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[1] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [1]),
        .Q(slv_reg0[1]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[20] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [20]),
        .Q(slv_reg0[20]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[21] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [21]),
        .Q(slv_reg0[21]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[22] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [22]),
        .Q(slv_reg0[22]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[23] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [23]),
        .Q(slv_reg0[23]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[24] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [24]),
        .Q(slv_reg0[24]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[25] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [25]),
        .Q(slv_reg0[25]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[26] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [26]),
        .Q(slv_reg0[26]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[27] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [27]),
        .Q(slv_reg0[27]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[28] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [28]),
        .Q(slv_reg0[28]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[29] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [29]),
        .Q(slv_reg0[29]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[2] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [2]),
        .Q(slv_reg0[2]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[30] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [30]),
        .Q(slv_reg0[30]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[31] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [31]),
        .Q(slv_reg0[31]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[3] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [3]),
        .Q(slv_reg0[3]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[4] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [4]),
        .Q(slv_reg0[4]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[5] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [5]),
        .Q(slv_reg0[5]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[6] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [6]),
        .Q(slv_reg0[6]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[7] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [7]),
        .Q(slv_reg0[7]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[8] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [8]),
        .Q(slv_reg0[8]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[9] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [9]),
        .Q(slv_reg0[9]),
        .R(axi_wready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb_IBUF[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb_IBUF[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb_IBUF[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb_IBUF[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[0] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [0]),
        .Q(slv_reg1[0]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[10] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [10]),
        .Q(slv_reg1[10]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[11] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [11]),
        .Q(slv_reg1[11]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[12] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [12]),
        .Q(slv_reg1[12]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[13] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [13]),
        .Q(slv_reg1[13]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[14] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [14]),
        .Q(slv_reg1[14]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[15] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [15]),
        .Q(slv_reg1[15]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[16] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [16]),
        .Q(slv_reg1[16]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[17] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [17]),
        .Q(slv_reg1[17]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[18] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [18]),
        .Q(slv_reg1[18]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[19] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [19]),
        .Q(slv_reg1[19]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[1] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [1]),
        .Q(slv_reg1[1]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[20] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [20]),
        .Q(slv_reg1[20]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[21] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [21]),
        .Q(slv_reg1[21]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[22] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [22]),
        .Q(slv_reg1[22]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[23] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [23]),
        .Q(slv_reg1[23]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[24] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [24]),
        .Q(slv_reg1[24]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[25] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [25]),
        .Q(slv_reg1[25]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[26] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [26]),
        .Q(slv_reg1[26]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[27] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [27]),
        .Q(slv_reg1[27]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[28] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [28]),
        .Q(slv_reg1[28]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[29] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [29]),
        .Q(slv_reg1[29]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[2] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [2]),
        .Q(slv_reg1[2]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[30] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [30]),
        .Q(slv_reg1[30]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[31] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [31]),
        .Q(slv_reg1[31]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[3] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [3]),
        .Q(slv_reg1[3]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[4] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [4]),
        .Q(slv_reg1[4]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[5] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [5]),
        .Q(slv_reg1[5]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[6] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [6]),
        .Q(slv_reg1[6]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[7] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [7]),
        .Q(slv_reg1[7]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[8] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [8]),
        .Q(slv_reg1[8]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[9] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [9]),
        .Q(slv_reg1[9]),
        .R(axi_wready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb_IBUF[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb_IBUF[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb_IBUF[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb_IBUF[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[0] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [0]),
        .Q(slv_reg2[0]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[10] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [10]),
        .Q(slv_reg2[10]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[11] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [11]),
        .Q(slv_reg2[11]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[12] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [12]),
        .Q(slv_reg2[12]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[13] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [13]),
        .Q(slv_reg2[13]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[14] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [14]),
        .Q(slv_reg2[14]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[15] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [15]),
        .Q(slv_reg2[15]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[16] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [16]),
        .Q(slv_reg2[16]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[17] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [17]),
        .Q(slv_reg2[17]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[18] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [18]),
        .Q(slv_reg2[18]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[19] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [19]),
        .Q(slv_reg2[19]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[1] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [1]),
        .Q(slv_reg2[1]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[20] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [20]),
        .Q(slv_reg2[20]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[21] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [21]),
        .Q(slv_reg2[21]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[22] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [22]),
        .Q(slv_reg2[22]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[23] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [23]),
        .Q(slv_reg2[23]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[24] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [24]),
        .Q(slv_reg2[24]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[25] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [25]),
        .Q(slv_reg2[25]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[26] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [26]),
        .Q(slv_reg2[26]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[27] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [27]),
        .Q(slv_reg2[27]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[28] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [28]),
        .Q(slv_reg2[28]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[29] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [29]),
        .Q(slv_reg2[29]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[2] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [2]),
        .Q(slv_reg2[2]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[30] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [30]),
        .Q(slv_reg2[30]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[31] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [31]),
        .Q(slv_reg2[31]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[3] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [3]),
        .Q(slv_reg2[3]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[4] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [4]),
        .Q(slv_reg2[4]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[5] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [5]),
        .Q(slv_reg2[5]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[6] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [6]),
        .Q(slv_reg2[6]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[7] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [7]),
        .Q(slv_reg2[7]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[8] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [8]),
        .Q(slv_reg2[8]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[9] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [9]),
        .Q(slv_reg2[9]),
        .R(axi_wready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb_IBUF[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb_IBUF[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb_IBUF[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awvalid_IBUF),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid_IBUF),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb_IBUF[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[0] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [0]),
        .Q(slv_reg3[0]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[10] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [10]),
        .Q(slv_reg3[10]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[11] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [11]),
        .Q(slv_reg3[11]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[12] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [12]),
        .Q(slv_reg3[12]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[13] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [13]),
        .Q(slv_reg3[13]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[14] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [14]),
        .Q(slv_reg3[14]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[15] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [15]),
        .Q(slv_reg3[15]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[16] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [16]),
        .Q(slv_reg3[16]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[17] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [17]),
        .Q(slv_reg3[17]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[18] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [18]),
        .Q(slv_reg3[18]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[19] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [19]),
        .Q(slv_reg3[19]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[1] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [1]),
        .Q(slv_reg3[1]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[20] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [20]),
        .Q(slv_reg3[20]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[21] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [21]),
        .Q(slv_reg3[21]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[22] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [22]),
        .Q(slv_reg3[22]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[23] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [23]),
        .Q(slv_reg3[23]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[24] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [24]),
        .Q(slv_reg3[24]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[25] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [25]),
        .Q(slv_reg3[25]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[26] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [26]),
        .Q(slv_reg3[26]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[27] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [27]),
        .Q(slv_reg3[27]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[28] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [28]),
        .Q(slv_reg3[28]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[29] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [29]),
        .Q(slv_reg3[29]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[2] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [2]),
        .Q(slv_reg3[2]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[30] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [30]),
        .Q(slv_reg3[30]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[31] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [31]),
        .Q(slv_reg3[31]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[3] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [3]),
        .Q(slv_reg3[3]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[4] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [4]),
        .Q(slv_reg3[4]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[5] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [5]),
        .Q(slv_reg3[5]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[6] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [6]),
        .Q(slv_reg3[6]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[7] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [7]),
        .Q(slv_reg3[7]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[8] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [8]),
        .Q(slv_reg3[8]),
        .R(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[9] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [9]),
        .Q(slv_reg3[9]),
        .R(axi_wready_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
