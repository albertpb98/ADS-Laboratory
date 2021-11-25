// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Nov 25 17:05:27 2021
// Host        : c5b5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/albert.poblador/ip_lab4/ip_repo/edit_AD_Converter_v1_0.sim/sim_1/impl/timing/xsim/AD_Converter_tb_time_impl.v
// Design      : AD_Converter_v1_0
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module AD_Converter
   (ncs,
    AR,
    sclk_OBUF,
    Q,
    CLK,
    s00_axi_aresetn_IBUF,
    D);
  output ncs;
  output [0:0]AR;
  output sclk_OBUF;
  output [7:0]Q;
  input CLK;
  input s00_axi_aresetn_IBUF;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire [3:0]count_clk;
  wire \count_clk[1]_i_2_n_0 ;
  wire \count_clk[2]_i_2_n_0 ;
  wire \count_clk[3]_i_2_n_0 ;
  wire \count_clk[3]_i_3_n_0 ;
  wire \count_ncs[0]_i_1_n_0 ;
  wire \count_ncs[1]_i_1_n_0 ;
  wire \count_ncs[2]_i_1_n_0 ;
  wire \count_ncs[3]_i_1_n_0 ;
  wire \count_ncs[4]_i_1_n_0 ;
  wire \count_ncs[4]_i_2_n_0 ;
  wire \count_ncs[5]_i_1_n_0 ;
  wire \count_ncs[6]_i_1_n_0 ;
  wire \count_ncs[6]_i_3_n_0 ;
  wire \count_ncs[6]_i_4_n_0 ;
  wire \count_ncs_reg_n_0_[0] ;
  wire \count_ncs_reg_n_0_[1] ;
  wire \count_ncs_reg_n_0_[2] ;
  wire \count_ncs_reg_n_0_[3] ;
  wire \count_ncs_reg_n_0_[4] ;
  wire \count_ncs_reg_n_0_[5] ;
  wire \count_ncs_reg_n_0_[6] ;
  wire data;
  wire \data[11]_i_2_n_0 ;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[1] ;
  wire \data_reg_n_0_[2] ;
  wire \data_reg_n_0_[3] ;
  wire enable;
  wire enable_i_1_n_0;
  wire \int_leds[7]_i_1_n_0 ;
  wire int_ncs;
  wire int_ncs_i_1_n_0;
  wire int_sclk_i_1_n_0;
  wire int_sclk_i_2_n_0;
  wire ncs;
  wire [7:0]p_0_in;
  wire [3:0]p_1_in;
  wire s00_axi_aresetn_IBUF;
  wire sclk_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01555554)) 
    \count_clk[0]_i_1 
       (.I0(count_clk[0]),
        .I1(\count_ncs_reg_n_0_[0] ),
        .I2(\count_clk[3]_i_2_n_0 ),
        .I3(\count_ncs_reg_n_0_[6] ),
        .I4(\count_ncs_reg_n_0_[5] ),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h1FFE0000)) 
    \count_clk[1]_i_1 
       (.I0(\count_ncs_reg_n_0_[0] ),
        .I1(\count_clk[3]_i_2_n_0 ),
        .I2(\count_ncs_reg_n_0_[6] ),
        .I3(\count_ncs_reg_n_0_[5] ),
        .I4(\count_clk[1]_i_2_n_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h338C)) 
    \count_clk[1]_i_2 
       (.I0(count_clk[3]),
        .I1(count_clk[0]),
        .I2(count_clk[2]),
        .I3(count_clk[1]),
        .O(\count_clk[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1FFE0000)) 
    \count_clk[2]_i_1 
       (.I0(\count_ncs_reg_n_0_[0] ),
        .I1(\count_clk[3]_i_2_n_0 ),
        .I2(\count_ncs_reg_n_0_[6] ),
        .I3(\count_ncs_reg_n_0_[5] ),
        .I4(\count_clk[2]_i_2_n_0 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3CB0)) 
    \count_clk[2]_i_2 
       (.I0(count_clk[3]),
        .I1(count_clk[0]),
        .I2(count_clk[2]),
        .I3(count_clk[1]),
        .O(\count_clk[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1FFE0000)) 
    \count_clk[3]_i_1 
       (.I0(\count_ncs_reg_n_0_[0] ),
        .I1(\count_clk[3]_i_2_n_0 ),
        .I2(\count_ncs_reg_n_0_[6] ),
        .I3(\count_ncs_reg_n_0_[5] ),
        .I4(\count_clk[3]_i_3_n_0 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk[3]_i_2 
       (.I0(\count_ncs_reg_n_0_[2] ),
        .I1(\count_ncs_reg_n_0_[1] ),
        .I2(\count_ncs_reg_n_0_[4] ),
        .I3(\count_ncs_reg_n_0_[3] ),
        .O(\count_clk[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_clk[3]_i_3 
       (.I0(count_clk[3]),
        .I1(count_clk[0]),
        .I2(count_clk[2]),
        .I3(count_clk[1]),
        .O(\count_clk[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[0]),
        .Q(count_clk[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(count_clk[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(count_clk[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(count_clk[3]));
  LUT6 #(
    .INIT(64'h000000005555557F)) 
    \count_ncs[0]_i_1 
       (.I0(\count_ncs[4]_i_2_n_0 ),
        .I1(\count_ncs_reg_n_0_[2] ),
        .I2(\count_ncs_reg_n_0_[1] ),
        .I3(\count_ncs_reg_n_0_[4] ),
        .I4(\count_ncs_reg_n_0_[3] ),
        .I5(\count_ncs_reg_n_0_[0] ),
        .O(\count_ncs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000555755570000)) 
    \count_ncs[1]_i_1 
       (.I0(\count_ncs[4]_i_2_n_0 ),
        .I1(\count_ncs_reg_n_0_[2] ),
        .I2(\count_ncs_reg_n_0_[4] ),
        .I3(\count_ncs_reg_n_0_[3] ),
        .I4(\count_ncs_reg_n_0_[1] ),
        .I5(\count_ncs_reg_n_0_[0] ),
        .O(\count_ncs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0057550055005700)) 
    \count_ncs[2]_i_1 
       (.I0(\count_ncs[4]_i_2_n_0 ),
        .I1(\count_ncs_reg_n_0_[4] ),
        .I2(\count_ncs_reg_n_0_[3] ),
        .I3(\count_ncs_reg_n_0_[2] ),
        .I4(\count_ncs_reg_n_0_[1] ),
        .I5(\count_ncs_reg_n_0_[0] ),
        .O(\count_ncs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h14444444)) 
    \count_ncs[3]_i_1 
       (.I0(\count_ncs[4]_i_2_n_0 ),
        .I1(\count_ncs_reg_n_0_[3] ),
        .I2(\count_ncs_reg_n_0_[2] ),
        .I3(\count_ncs_reg_n_0_[0] ),
        .I4(\count_ncs_reg_n_0_[1] ),
        .O(\count_ncs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1444444444444444)) 
    \count_ncs[4]_i_1 
       (.I0(\count_ncs[4]_i_2_n_0 ),
        .I1(\count_ncs_reg_n_0_[4] ),
        .I2(\count_ncs_reg_n_0_[3] ),
        .I3(\count_ncs_reg_n_0_[1] ),
        .I4(\count_ncs_reg_n_0_[0] ),
        .I5(\count_ncs_reg_n_0_[2] ),
        .O(\count_ncs[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_ncs[4]_i_2 
       (.I0(\count_ncs_reg_n_0_[5] ),
        .I1(\count_ncs_reg_n_0_[6] ),
        .O(\count_ncs[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0FD0)) 
    \count_ncs[5]_i_1 
       (.I0(\count_ncs_reg_n_0_[6] ),
        .I1(\count_ncs[6]_i_3_n_0 ),
        .I2(\count_ncs_reg_n_0_[5] ),
        .I3(\count_ncs[6]_i_4_n_0 ),
        .O(\count_ncs[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3C8C)) 
    \count_ncs[6]_i_1 
       (.I0(\count_ncs[6]_i_3_n_0 ),
        .I1(\count_ncs_reg_n_0_[6] ),
        .I2(\count_ncs_reg_n_0_[5] ),
        .I3(\count_ncs[6]_i_4_n_0 ),
        .O(\count_ncs[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_ncs[6]_i_2 
       (.I0(s00_axi_aresetn_IBUF),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000057)) 
    \count_ncs[6]_i_3 
       (.I0(\count_ncs_reg_n_0_[2] ),
        .I1(\count_ncs_reg_n_0_[1] ),
        .I2(\count_ncs_reg_n_0_[0] ),
        .I3(\count_ncs_reg_n_0_[4] ),
        .I4(\count_ncs_reg_n_0_[3] ),
        .O(\count_ncs[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \count_ncs[6]_i_4 
       (.I0(\count_ncs_reg_n_0_[4] ),
        .I1(\count_ncs_reg_n_0_[2] ),
        .I2(\count_ncs_reg_n_0_[0] ),
        .I3(\count_ncs_reg_n_0_[1] ),
        .I4(\count_ncs_reg_n_0_[3] ),
        .O(\count_ncs[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_ncs_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_ncs[0]_i_1_n_0 ),
        .Q(\count_ncs_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_ncs_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_ncs[1]_i_1_n_0 ),
        .Q(\count_ncs_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_ncs_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_ncs[2]_i_1_n_0 ),
        .Q(\count_ncs_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_ncs_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_ncs[3]_i_1_n_0 ),
        .Q(\count_ncs_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_ncs_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_ncs[4]_i_1_n_0 ),
        .Q(\count_ncs_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_ncs_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_ncs[5]_i_1_n_0 ),
        .Q(\count_ncs_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_ncs_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\count_ncs[6]_i_1_n_0 ),
        .Q(\count_ncs_reg_n_0_[6] ));
  LUT5 #(
    .INIT(32'h1FFE0000)) 
    \data[11]_i_1 
       (.I0(\count_ncs_reg_n_0_[0] ),
        .I1(\count_clk[3]_i_2_n_0 ),
        .I2(\count_ncs_reg_n_0_[6] ),
        .I3(\count_ncs_reg_n_0_[5] ),
        .I4(\data[11]_i_2_n_0 ),
        .O(data));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \data[11]_i_2 
       (.I0(count_clk[3]),
        .I1(count_clk[2]),
        .I2(count_clk[0]),
        .I3(enable),
        .I4(count_clk[1]),
        .O(\data[11]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(D),
        .Q(\data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(p_0_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data_reg_n_0_[0] ),
        .Q(\data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data_reg_n_0_[1] ),
        .Q(\data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data_reg_n_0_[2] ),
        .Q(\data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(\data_reg_n_0_[3] ),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(p_0_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(CLK),
        .CE(data),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(p_0_in[5]));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    enable_i_1
       (.I0(\count_ncs_reg_n_0_[5] ),
        .I1(\count_ncs_reg_n_0_[3] ),
        .I2(\count_ncs_reg_n_0_[2] ),
        .I3(\count_ncs_reg_n_0_[4] ),
        .I4(\count_ncs_reg_n_0_[6] ),
        .O(enable_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(enable_i_1_n_0),
        .PRE(AR),
        .Q(enable));
  LUT6 #(
    .INIT(64'h8888888000000000)) 
    \int_leds[7]_i_1 
       (.I0(s00_axi_aresetn_IBUF),
        .I1(\count_ncs_reg_n_0_[6] ),
        .I2(\count_ncs_reg_n_0_[4] ),
        .I3(\count_ncs_reg_n_0_[2] ),
        .I4(\count_ncs_reg_n_0_[3] ),
        .I5(\count_ncs_reg_n_0_[5] ),
        .O(\int_leds[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_leds_reg[0] 
       (.C(CLK),
        .CE(\int_leds[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_leds_reg[1] 
       (.C(CLK),
        .CE(\int_leds[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_leds_reg[2] 
       (.C(CLK),
        .CE(\int_leds[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_leds_reg[3] 
       (.C(CLK),
        .CE(\int_leds[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_leds_reg[4] 
       (.C(CLK),
        .CE(\int_leds[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_leds_reg[5] 
       (.C(CLK),
        .CE(\int_leds[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_leds_reg[6] 
       (.C(CLK),
        .CE(\int_leds[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_leds_reg[7] 
       (.C(CLK),
        .CE(\int_leds[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h555555555555777F)) 
    int_ncs_i_1
       (.I0(\count_ncs[4]_i_2_n_0 ),
        .I1(\count_ncs_reg_n_0_[2] ),
        .I2(\count_ncs_reg_n_0_[1] ),
        .I3(\count_ncs_reg_n_0_[0] ),
        .I4(\count_ncs_reg_n_0_[4] ),
        .I5(\count_ncs_reg_n_0_[3] ),
        .O(int_ncs_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000C00040000)) 
    int_ncs_i_2
       (.I0(\count_ncs_reg_n_0_[0] ),
        .I1(\count_ncs[4]_i_2_n_0 ),
        .I2(\count_ncs_reg_n_0_[3] ),
        .I3(\count_ncs_reg_n_0_[4] ),
        .I4(\count_ncs_reg_n_0_[2] ),
        .I5(\count_ncs_reg_n_0_[1] ),
        .O(int_ncs));
  FDPE #(
    .INIT(1'b1)) 
    int_ncs_reg
       (.C(CLK),
        .CE(int_ncs_i_1_n_0),
        .D(int_ncs),
        .PRE(AR),
        .Q(ncs));
  LUT6 #(
    .INIT(64'hD5D5D5572A2A2AA8)) 
    int_sclk_i_1
       (.I0(int_sclk_i_2_n_0),
        .I1(\count_ncs_reg_n_0_[5] ),
        .I2(\count_ncs_reg_n_0_[6] ),
        .I3(\count_clk[3]_i_2_n_0 ),
        .I4(\count_ncs_reg_n_0_[0] ),
        .I5(sclk_OBUF),
        .O(int_sclk_i_1_n_0));
  LUT4 #(
    .INIT(16'h1004)) 
    int_sclk_i_2
       (.I0(count_clk[3]),
        .I1(count_clk[1]),
        .I2(count_clk[2]),
        .I3(count_clk[0]),
        .O(int_sclk_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    int_sclk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(int_sclk_i_1_n_0),
        .PRE(AR),
        .Q(sclk_OBUF));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* ECO_CHECKSUM = "93bcef9" *) 
(* NotValidForBitStream *)
module AD_Converter_v1_0
   (sdata1,
    sdata2,
    ncs,
    sclk,
    leds,
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
  input sdata1;
  input sdata2;
  output ncs;
  output sclk;
  output [7:0]leds;
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

  wire [7:0]leds;
  wire [7:0]leds_OBUF;
  wire ncs;
  wire ncs_OBUF;
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
  wire sclk;
  wire sclk_OBUF;
  wire sdata1;
  wire sdata1_IBUF;

initial begin
 $sdf_annotate("AD_Converter_tb_time_impl.sdf",,,,"tool_control");
end
  AD_Converter_v1_0_S00_AXI AD_Converter_v1_0_S00_AXI_inst
       (.CLK(s00_axi_aclk_IBUF_BUFG),
        .D(sdata1_IBUF),
        .Q(leds_OBUF),
        .S_AXI_ARREADY(s00_axi_arready_OBUF),
        .S_AXI_AWREADY(s00_axi_awready_OBUF),
        .S_AXI_WREADY(s00_axi_wready_OBUF),
        .\axi_araddr_reg[3]_0 (s00_axi_araddr_IBUF),
        .\axi_awaddr_reg[3]_0 (s00_axi_awaddr_IBUF),
        .\axi_rdata_reg[31]_0 (s00_axi_rdata_OBUF),
        .ncs(ncs_OBUF),
        .s00_axi_aresetn_IBUF(s00_axi_aresetn_IBUF),
        .s00_axi_arvalid_IBUF(s00_axi_arvalid_IBUF),
        .s00_axi_awvalid_IBUF(s00_axi_awvalid_IBUF),
        .s00_axi_bready_IBUF(s00_axi_bready_IBUF),
        .s00_axi_bvalid_OBUF(s00_axi_bvalid_OBUF),
        .s00_axi_rready_IBUF(s00_axi_rready_IBUF),
        .s00_axi_rvalid_OBUF(s00_axi_rvalid_OBUF),
        .s00_axi_wstrb_IBUF(s00_axi_wstrb_IBUF),
        .s00_axi_wvalid_IBUF(s00_axi_wvalid_IBUF),
        .sclk_OBUF(sclk_OBUF),
        .\slv_reg0_reg[31]_0 (s00_axi_wdata_IBUF));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  OBUF \leds_OBUF[4]_inst 
       (.I(leds_OBUF[4]),
        .O(leds[4]));
  OBUF \leds_OBUF[5]_inst 
       (.I(leds_OBUF[5]),
        .O(leds[5]));
  OBUF \leds_OBUF[6]_inst 
       (.I(leds_OBUF[6]),
        .O(leds[6]));
  OBUF \leds_OBUF[7]_inst 
       (.I(leds_OBUF[7]),
        .O(leds[7]));
  OBUF ncs_OBUF_inst
       (.I(ncs_OBUF),
        .O(ncs));
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
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  IBUF sdata1_IBUF_inst
       (.I(sdata1),
        .O(sdata1_IBUF));
endmodule

module AD_Converter_v1_0_S00_AXI
   (ncs,
    Q,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    \axi_rdata_reg[31]_0 ,
    s00_axi_rvalid_OBUF,
    s00_axi_bvalid_OBUF,
    sclk_OBUF,
    s00_axi_aresetn_IBUF,
    CLK,
    D,
    \axi_araddr_reg[3]_0 ,
    \axi_awaddr_reg[3]_0 ,
    \slv_reg0_reg[31]_0 ,
    s00_axi_wvalid_IBUF,
    s00_axi_awvalid_IBUF,
    s00_axi_wstrb_IBUF,
    s00_axi_arvalid_IBUF,
    s00_axi_bready_IBUF,
    s00_axi_rready_IBUF);
  output ncs;
  output [7:0]Q;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]\axi_rdata_reg[31]_0 ;
  output s00_axi_rvalid_OBUF;
  output s00_axi_bvalid_OBUF;
  output sclk_OBUF;
  input s00_axi_aresetn_IBUF;
  input CLK;
  input [0:0]D;
  input [1:0]\axi_araddr_reg[3]_0 ;
  input [1:0]\axi_awaddr_reg[3]_0 ;
  input [31:0]\slv_reg0_reg[31]_0 ;
  input s00_axi_wvalid_IBUF;
  input s00_axi_awvalid_IBUF;
  input [3:0]s00_axi_wstrb_IBUF;
  input s00_axi_arvalid_IBUF;
  input s00_axi_bready_IBUF;
  input s00_axi_rready_IBUF;

  wire AD_Converter_instance_n_1;
  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire [1:0]\axi_araddr_reg[3]_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire [1:0]\axi_awaddr_reg[3]_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire ncs;
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
  wire sclk_OBUF;
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

  AD_Converter AD_Converter_instance
       (.AR(AD_Converter_instance_n_1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .ncs(ncs),
        .s00_axi_aresetn_IBUF(s00_axi_aresetn_IBUF),
        .sclk_OBUF(sclk_OBUF));
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
        .S(AD_Converter_instance_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \axi_araddr_reg[2] 
       (.C(CLK),
        .CE(axi_arready0),
        .D(\axi_araddr_reg[3]_0 [0]),
        .Q(axi_araddr[2]),
        .S(AD_Converter_instance_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \axi_araddr_reg[3] 
       (.C(CLK),
        .CE(axi_arready0),
        .D(\axi_araddr_reg[3]_0 [1]),
        .Q(axi_araddr[3]),
        .S(AD_Converter_instance_n_1));
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
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(CLK),
        .CE(axi_awready0),
        .D(\axi_awaddr_reg[3]_0 [0]),
        .Q(axi_awaddr[2]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(CLK),
        .CE(axi_awready0),
        .D(\axi_awaddr_reg[3]_0 [1]),
        .Q(axi_awaddr[3]),
        .R(AD_Converter_instance_n_1));
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
        .R(AD_Converter_instance_n_1));
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
        .R(AD_Converter_instance_n_1));
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
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(\axi_rdata_reg[31]_0 [10]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(\axi_rdata_reg[31]_0 [11]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(\axi_rdata_reg[31]_0 [12]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(\axi_rdata_reg[31]_0 [13]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(\axi_rdata_reg[31]_0 [14]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(\axi_rdata_reg[31]_0 [15]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(\axi_rdata_reg[31]_0 [16]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(\axi_rdata_reg[31]_0 [17]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(\axi_rdata_reg[31]_0 [18]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(\axi_rdata_reg[31]_0 [19]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(\axi_rdata_reg[31]_0 [1]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(\axi_rdata_reg[31]_0 [20]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(\axi_rdata_reg[31]_0 [21]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(\axi_rdata_reg[31]_0 [22]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(\axi_rdata_reg[31]_0 [23]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(\axi_rdata_reg[31]_0 [24]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(\axi_rdata_reg[31]_0 [25]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(\axi_rdata_reg[31]_0 [26]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(\axi_rdata_reg[31]_0 [27]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(\axi_rdata_reg[31]_0 [28]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(\axi_rdata_reg[31]_0 [29]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(\axi_rdata_reg[31]_0 [2]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(\axi_rdata_reg[31]_0 [30]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(\axi_rdata_reg[31]_0 [31]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(\axi_rdata_reg[31]_0 [3]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(\axi_rdata_reg[31]_0 [4]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(\axi_rdata_reg[31]_0 [5]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(\axi_rdata_reg[31]_0 [6]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(\axi_rdata_reg[31]_0 [7]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(\axi_rdata_reg[31]_0 [8]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(\axi_rdata_reg[31]_0 [9]),
        .R(AD_Converter_instance_n_1));
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
        .R(AD_Converter_instance_n_1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
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
        .R(AD_Converter_instance_n_1));
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
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[10] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [10]),
        .Q(slv_reg0[10]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[11] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [11]),
        .Q(slv_reg0[11]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[12] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [12]),
        .Q(slv_reg0[12]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[13] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [13]),
        .Q(slv_reg0[13]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[14] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [14]),
        .Q(slv_reg0[14]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[15] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [15]),
        .Q(slv_reg0[15]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[16] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [16]),
        .Q(slv_reg0[16]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[17] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [17]),
        .Q(slv_reg0[17]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[18] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [18]),
        .Q(slv_reg0[18]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[19] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [19]),
        .Q(slv_reg0[19]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[1] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [1]),
        .Q(slv_reg0[1]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[20] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [20]),
        .Q(slv_reg0[20]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[21] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [21]),
        .Q(slv_reg0[21]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[22] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [22]),
        .Q(slv_reg0[22]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[23] 
       (.C(CLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [23]),
        .Q(slv_reg0[23]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[24] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [24]),
        .Q(slv_reg0[24]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[25] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [25]),
        .Q(slv_reg0[25]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[26] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [26]),
        .Q(slv_reg0[26]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[27] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [27]),
        .Q(slv_reg0[27]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[28] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [28]),
        .Q(slv_reg0[28]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[29] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [29]),
        .Q(slv_reg0[29]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[2] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [2]),
        .Q(slv_reg0[2]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[30] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [30]),
        .Q(slv_reg0[30]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[31] 
       (.C(CLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [31]),
        .Q(slv_reg0[31]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[3] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [3]),
        .Q(slv_reg0[3]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[4] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [4]),
        .Q(slv_reg0[4]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[5] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [5]),
        .Q(slv_reg0[5]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[6] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [6]),
        .Q(slv_reg0[6]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[7] 
       (.C(CLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [7]),
        .Q(slv_reg0[7]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[8] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [8]),
        .Q(slv_reg0[8]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[9] 
       (.C(CLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [9]),
        .Q(slv_reg0[9]),
        .R(AD_Converter_instance_n_1));
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
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[10] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [10]),
        .Q(slv_reg1[10]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[11] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [11]),
        .Q(slv_reg1[11]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[12] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [12]),
        .Q(slv_reg1[12]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[13] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [13]),
        .Q(slv_reg1[13]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[14] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [14]),
        .Q(slv_reg1[14]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[15] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [15]),
        .Q(slv_reg1[15]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[16] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [16]),
        .Q(slv_reg1[16]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[17] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [17]),
        .Q(slv_reg1[17]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[18] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [18]),
        .Q(slv_reg1[18]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[19] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [19]),
        .Q(slv_reg1[19]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[1] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [1]),
        .Q(slv_reg1[1]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[20] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [20]),
        .Q(slv_reg1[20]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[21] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [21]),
        .Q(slv_reg1[21]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[22] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [22]),
        .Q(slv_reg1[22]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[23] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [23]),
        .Q(slv_reg1[23]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[24] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [24]),
        .Q(slv_reg1[24]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[25] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [25]),
        .Q(slv_reg1[25]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[26] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [26]),
        .Q(slv_reg1[26]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[27] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [27]),
        .Q(slv_reg1[27]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[28] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [28]),
        .Q(slv_reg1[28]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[29] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [29]),
        .Q(slv_reg1[29]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[2] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [2]),
        .Q(slv_reg1[2]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[30] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [30]),
        .Q(slv_reg1[30]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[31] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [31]),
        .Q(slv_reg1[31]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[3] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [3]),
        .Q(slv_reg1[3]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[4] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [4]),
        .Q(slv_reg1[4]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[5] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [5]),
        .Q(slv_reg1[5]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[6] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [6]),
        .Q(slv_reg1[6]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[7] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [7]),
        .Q(slv_reg1[7]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[8] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [8]),
        .Q(slv_reg1[8]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[9] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [9]),
        .Q(slv_reg1[9]),
        .R(AD_Converter_instance_n_1));
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
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[10] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [10]),
        .Q(slv_reg2[10]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[11] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [11]),
        .Q(slv_reg2[11]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[12] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [12]),
        .Q(slv_reg2[12]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[13] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [13]),
        .Q(slv_reg2[13]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[14] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [14]),
        .Q(slv_reg2[14]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[15] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [15]),
        .Q(slv_reg2[15]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[16] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [16]),
        .Q(slv_reg2[16]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[17] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [17]),
        .Q(slv_reg2[17]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[18] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [18]),
        .Q(slv_reg2[18]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[19] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [19]),
        .Q(slv_reg2[19]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[1] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [1]),
        .Q(slv_reg2[1]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[20] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [20]),
        .Q(slv_reg2[20]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[21] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [21]),
        .Q(slv_reg2[21]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[22] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [22]),
        .Q(slv_reg2[22]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[23] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [23]),
        .Q(slv_reg2[23]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[24] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [24]),
        .Q(slv_reg2[24]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[25] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [25]),
        .Q(slv_reg2[25]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[26] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [26]),
        .Q(slv_reg2[26]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[27] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [27]),
        .Q(slv_reg2[27]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[28] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [28]),
        .Q(slv_reg2[28]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[29] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [29]),
        .Q(slv_reg2[29]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[2] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [2]),
        .Q(slv_reg2[2]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[30] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [30]),
        .Q(slv_reg2[30]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[31] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [31]),
        .Q(slv_reg2[31]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[3] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [3]),
        .Q(slv_reg2[3]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[4] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [4]),
        .Q(slv_reg2[4]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[5] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [5]),
        .Q(slv_reg2[5]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[6] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [6]),
        .Q(slv_reg2[6]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[7] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [7]),
        .Q(slv_reg2[7]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[8] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [8]),
        .Q(slv_reg2[8]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[9] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [9]),
        .Q(slv_reg2[9]),
        .R(AD_Converter_instance_n_1));
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[10] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [10]),
        .Q(slv_reg3[10]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[11] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [11]),
        .Q(slv_reg3[11]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[12] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [12]),
        .Q(slv_reg3[12]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[13] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [13]),
        .Q(slv_reg3[13]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[14] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [14]),
        .Q(slv_reg3[14]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[15] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [15]),
        .Q(slv_reg3[15]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[16] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [16]),
        .Q(slv_reg3[16]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[17] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [17]),
        .Q(slv_reg3[17]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[18] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [18]),
        .Q(slv_reg3[18]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[19] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [19]),
        .Q(slv_reg3[19]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[1] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [1]),
        .Q(slv_reg3[1]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[20] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [20]),
        .Q(slv_reg3[20]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[21] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [21]),
        .Q(slv_reg3[21]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[22] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [22]),
        .Q(slv_reg3[22]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[23] 
       (.C(CLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [23]),
        .Q(slv_reg3[23]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[24] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [24]),
        .Q(slv_reg3[24]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[25] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [25]),
        .Q(slv_reg3[25]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[26] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [26]),
        .Q(slv_reg3[26]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[27] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [27]),
        .Q(slv_reg3[27]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[28] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [28]),
        .Q(slv_reg3[28]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[29] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [29]),
        .Q(slv_reg3[29]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[2] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [2]),
        .Q(slv_reg3[2]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[30] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [30]),
        .Q(slv_reg3[30]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[31] 
       (.C(CLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [31]),
        .Q(slv_reg3[31]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[3] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [3]),
        .Q(slv_reg3[3]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[4] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [4]),
        .Q(slv_reg3[4]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[5] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [5]),
        .Q(slv_reg3[5]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[6] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [6]),
        .Q(slv_reg3[6]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[7] 
       (.C(CLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [7]),
        .Q(slv_reg3[7]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[8] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [8]),
        .Q(slv_reg3[8]),
        .R(AD_Converter_instance_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[9] 
       (.C(CLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg0_reg[31]_0 [9]),
        .Q(slv_reg3[9]),
        .R(AD_Converter_instance_n_1));
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
