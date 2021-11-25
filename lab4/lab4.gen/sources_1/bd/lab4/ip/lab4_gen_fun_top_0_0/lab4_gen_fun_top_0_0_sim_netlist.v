// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov 23 14:40:49 2021
// Host        : c5b5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/albert.poblador/lab4/lab4.gen/sources_1/bd/lab4/ip/lab4_gen_fun_top_0_0/lab4_gen_fun_top_0_0_sim_netlist.v
// Design      : lab4_gen_fun_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lab4_gen_fun_top_0_0,gen_fun_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "gen_fun_top,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module lab4_gen_fun_top_0_0
   (clk,
    reset,
    enable,
    select_in,
    clk_out,
    nsync,
    D1,
    D2);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN lab4_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input enable;
  input [1:0]select_in;
  output clk_out;
  output nsync;
  output D1;
  output D2;

  wire \<const0> ;
  wire D1;
  wire clk;
  wire clk_out;
  wire enable;
  wire nsync;
  wire reset;
  wire [1:0]select_in;
  wire NLW_U0_D2_UNCONNECTED;

  assign D2 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  lab4_gen_fun_top_0_0_gen_fun_top U0
       (.D1(D1),
        .D2(NLW_U0_D2_UNCONNECTED),
        .clk(clk),
        .clk_out(clk_out),
        .enable(enable),
        .nsync(nsync),
        .reset(reset),
        .select_in(select_in));
endmodule

(* ORIG_REF_NAME = "DA2" *) 
module lab4_gen_fun_top_0_0_DA2
   (clk_out,
    D1,
    nsync,
    clk,
    out,
    Q,
    \temp1_reg[11]_0 ,
    E);
  output clk_out;
  output D1;
  output nsync;
  input clk;
  input [1:0]out;
  input [11:0]Q;
  input \temp1_reg[11]_0 ;
  input [0:0]E;

  wire CLK_OUT_i_1_n_0;
  wire D1;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_3_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire [11:0]Q;
  wire clk;
  wire [1:0]clk_counter;
  wire \clk_counter[0]_i_1_n_0 ;
  wire \clk_counter[1]_i_1_n_0 ;
  wire clk_out;
  wire enParalelLoad;
  wire nsync;
  wire [1:0]out;
  wire [15:0]p_1_in;
  wire [3:0]plusOp;
  wire shiftCounter;
  wire \shiftCounter[2]_i_1_n_0 ;
  wire \shiftCounter[3]_i_1_n_0 ;
  wire [3:0]shiftCounter_reg;
  wire [14:0]temp1;
  wire \temp1[15]_i_1_n_0 ;
  wire temp1_0;
  wire \temp1_reg[11]_0 ;

  LUT5 #(
    .INIT(32'hA3A300A3)) 
    CLK_OUT_i_1
       (.I0(clk_out),
        .I1(clk_counter[1]),
        .I2(clk_counter[0]),
        .I3(out[0]),
        .I4(out[1]),
        .O(CLK_OUT_i_1_n_0));
  FDRE CLK_OUT_reg
       (.C(clk),
        .CE(1'b1),
        .D(CLK_OUT_i_1_n_0),
        .Q(clk_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF807700)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(clk_counter[1]),
        .I1(clk_counter[0]),
        .I2(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .I3(enParalelLoad),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF7F8800)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(clk_counter[1]),
        .I1(clk_counter[0]),
        .I2(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .I3(enParalelLoad),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF777F88800000)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(clk_counter[1]),
        .I1(clk_counter[0]),
        .I2(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .I3(enParalelLoad),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \FSM_onehot_current_state[2]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(shiftCounter_reg[1]),
        .I2(shiftCounter_reg[0]),
        .I3(shiftCounter_reg[2]),
        .I4(shiftCounter_reg[3]),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,shiftout:010,syncdata:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(enParalelLoad),
        .S(\temp1_reg[11]_0 ));
  (* FSM_ENCODED_STATES = "idle:001,shiftout:010,syncdata:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(\temp1_reg[11]_0 ));
  (* FSM_ENCODED_STATES = "idle:001,shiftout:010,syncdata:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(\temp1_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_1 
       (.I0(clk_counter[0]),
        .O(\clk_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_counter[1]_i_1 
       (.I0(clk_counter[0]),
        .I1(clk_counter[1]),
        .O(\clk_counter[1]_i_1_n_0 ));
  FDRE \clk_counter_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\clk_counter[0]_i_1_n_0 ),
        .Q(clk_counter[0]),
        .R(\temp1_reg[11]_0 ));
  FDRE \clk_counter_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\clk_counter[1]_i_1_n_0 ),
        .Q(clk_counter[1]),
        .R(\temp1_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    nsync_INST_0
       (.I0(enParalelLoad),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(nsync));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \shiftCounter[0]_i_1 
       (.I0(shiftCounter_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \shiftCounter[1]_i_1 
       (.I0(shiftCounter_reg[0]),
        .I1(shiftCounter_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \shiftCounter[2]_i_1 
       (.I0(shiftCounter_reg[1]),
        .I1(shiftCounter_reg[0]),
        .I2(shiftCounter_reg[2]),
        .O(\shiftCounter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \shiftCounter[3]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(enParalelLoad),
        .I3(clk_counter[0]),
        .I4(clk_counter[1]),
        .O(\shiftCounter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \shiftCounter[3]_i_2 
       (.I0(clk_counter[1]),
        .I1(clk_counter[0]),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(shiftCounter));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \shiftCounter[3]_i_3 
       (.I0(shiftCounter_reg[0]),
        .I1(shiftCounter_reg[1]),
        .I2(shiftCounter_reg[2]),
        .I3(shiftCounter_reg[3]),
        .O(plusOp[3]));
  FDRE \shiftCounter_reg[0] 
       (.C(clk),
        .CE(shiftCounter),
        .D(plusOp[0]),
        .Q(shiftCounter_reg[0]),
        .R(\shiftCounter[3]_i_1_n_0 ));
  FDRE \shiftCounter_reg[1] 
       (.C(clk),
        .CE(shiftCounter),
        .D(plusOp[1]),
        .Q(shiftCounter_reg[1]),
        .R(\shiftCounter[3]_i_1_n_0 ));
  FDRE \shiftCounter_reg[2] 
       (.C(clk),
        .CE(shiftCounter),
        .D(\shiftCounter[2]_i_1_n_0 ),
        .Q(shiftCounter_reg[2]),
        .R(\shiftCounter[3]_i_1_n_0 ));
  FDRE \shiftCounter_reg[3] 
       (.C(clk),
        .CE(shiftCounter),
        .D(plusOp[3]),
        .Q(shiftCounter_reg[3]),
        .R(\shiftCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[0]_i_1 
       (.I0(Q[0]),
        .I1(enParalelLoad),
        .I2(D1),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[10]_i_1 
       (.I0(Q[10]),
        .I1(enParalelLoad),
        .I2(temp1[9]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[11]_i_1 
       (.I0(Q[11]),
        .I1(enParalelLoad),
        .I2(temp1[10]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp1[12]_i_1 
       (.I0(temp1[11]),
        .I1(enParalelLoad),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp1[13]_i_1 
       (.I0(temp1[12]),
        .I1(enParalelLoad),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp1[14]_i_1 
       (.I0(temp1[13]),
        .I1(enParalelLoad),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \temp1[15]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(clk_counter[0]),
        .I3(clk_counter[1]),
        .I4(enParalelLoad),
        .O(\temp1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \temp1[15]_i_2 
       (.I0(clk_counter[1]),
        .I1(clk_counter[0]),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(enParalelLoad),
        .O(temp1_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp1[15]_i_3 
       (.I0(temp1[14]),
        .I1(enParalelLoad),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[1]_i_1 
       (.I0(Q[1]),
        .I1(enParalelLoad),
        .I2(temp1[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[2]_i_1 
       (.I0(Q[2]),
        .I1(enParalelLoad),
        .I2(temp1[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[3]_i_1 
       (.I0(Q[3]),
        .I1(enParalelLoad),
        .I2(temp1[2]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[4]_i_1 
       (.I0(Q[4]),
        .I1(enParalelLoad),
        .I2(temp1[3]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[5]_i_1 
       (.I0(Q[5]),
        .I1(enParalelLoad),
        .I2(temp1[4]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[6]_i_1 
       (.I0(Q[6]),
        .I1(enParalelLoad),
        .I2(temp1[5]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[7]_i_1 
       (.I0(Q[7]),
        .I1(enParalelLoad),
        .I2(temp1[6]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[8]_i_1 
       (.I0(Q[8]),
        .I1(enParalelLoad),
        .I2(temp1[7]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[9]_i_1 
       (.I0(Q[9]),
        .I1(enParalelLoad),
        .I2(temp1[8]),
        .O(p_1_in[9]));
  FDRE \temp1_reg[0] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[0]),
        .Q(temp1[0]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[10] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[10]),
        .Q(temp1[10]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[11] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[11]),
        .Q(temp1[11]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[12] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[12]),
        .Q(temp1[12]),
        .R(\temp1[15]_i_1_n_0 ));
  FDRE \temp1_reg[13] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[13]),
        .Q(temp1[13]),
        .R(\temp1[15]_i_1_n_0 ));
  FDRE \temp1_reg[14] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[14]),
        .Q(temp1[14]),
        .R(\temp1[15]_i_1_n_0 ));
  FDRE \temp1_reg[15] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[15]),
        .Q(D1),
        .R(\temp1[15]_i_1_n_0 ));
  FDRE \temp1_reg[1] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[1]),
        .Q(temp1[1]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[2] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[2]),
        .Q(temp1[2]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[3] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[3]),
        .Q(temp1[3]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[4] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[4]),
        .Q(temp1[4]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[5] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[5]),
        .Q(temp1[5]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[6] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[6]),
        .Q(temp1[6]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[7] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[7]),
        .Q(temp1[7]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[8] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[8]),
        .Q(temp1[8]),
        .R(\temp1_reg[11]_0 ));
  FDRE \temp1_reg[9] 
       (.C(clk),
        .CE(temp1_0),
        .D(p_1_in[9]),
        .Q(temp1[9]),
        .R(\temp1_reg[11]_0 ));
endmodule

(* ORIG_REF_NAME = "gen_fun" *) 
module lab4_gen_fun_top_0_0_gen_fun
   (\reset_sinc_reg[1] ,
    Q,
    clk,
    out,
    select_in,
    up_reg_0);
  output \reset_sinc_reg[1] ;
  output [11:0]Q;
  input clk;
  input [0:0]out;
  input [1:0]select_in;
  input [1:0]up_reg_0;

  wire [11:0]Q;
  wire clk;
  wire count_12bits;
  wire \count_12bits[0]_i_3_n_0 ;
  wire \count_12bits[0]_i_4_n_0 ;
  wire \count_12bits[0]_i_5_n_0 ;
  wire \count_12bits[4]_i_2_n_0 ;
  wire \count_12bits[4]_i_3_n_0 ;
  wire \count_12bits[4]_i_4_n_0 ;
  wire \count_12bits[4]_i_5_n_0 ;
  wire \count_12bits[8]_i_2_n_0 ;
  wire \count_12bits[8]_i_3_n_0 ;
  wire \count_12bits[8]_i_4_n_0 ;
  wire \count_12bits[8]_i_5_n_0 ;
  wire [11:0]count_12bits_reg;
  wire \count_12bits_reg[0]_i_2_n_0 ;
  wire \count_12bits_reg[0]_i_2_n_1 ;
  wire \count_12bits_reg[0]_i_2_n_2 ;
  wire \count_12bits_reg[0]_i_2_n_3 ;
  wire \count_12bits_reg[0]_i_2_n_4 ;
  wire \count_12bits_reg[0]_i_2_n_5 ;
  wire \count_12bits_reg[0]_i_2_n_6 ;
  wire \count_12bits_reg[0]_i_2_n_7 ;
  wire \count_12bits_reg[4]_i_1_n_0 ;
  wire \count_12bits_reg[4]_i_1_n_1 ;
  wire \count_12bits_reg[4]_i_1_n_2 ;
  wire \count_12bits_reg[4]_i_1_n_3 ;
  wire \count_12bits_reg[4]_i_1_n_4 ;
  wire \count_12bits_reg[4]_i_1_n_5 ;
  wire \count_12bits_reg[4]_i_1_n_6 ;
  wire \count_12bits_reg[4]_i_1_n_7 ;
  wire \count_12bits_reg[8]_i_1_n_1 ;
  wire \count_12bits_reg[8]_i_1_n_2 ;
  wire \count_12bits_reg[8]_i_1_n_3 ;
  wire \count_12bits_reg[8]_i_1_n_4 ;
  wire \count_12bits_reg[8]_i_1_n_5 ;
  wire \count_12bits_reg[8]_i_1_n_6 ;
  wire \count_12bits_reg[8]_i_1_n_7 ;
  wire \count_sawtooth[0]_i_2_n_0 ;
  wire [30:19]count_sawtooth_reg;
  wire \count_sawtooth_reg[0]_i_1_n_0 ;
  wire \count_sawtooth_reg[0]_i_1_n_1 ;
  wire \count_sawtooth_reg[0]_i_1_n_2 ;
  wire \count_sawtooth_reg[0]_i_1_n_3 ;
  wire \count_sawtooth_reg[0]_i_1_n_4 ;
  wire \count_sawtooth_reg[0]_i_1_n_5 ;
  wire \count_sawtooth_reg[0]_i_1_n_6 ;
  wire \count_sawtooth_reg[0]_i_1_n_7 ;
  wire \count_sawtooth_reg[12]_i_1_n_0 ;
  wire \count_sawtooth_reg[12]_i_1_n_1 ;
  wire \count_sawtooth_reg[12]_i_1_n_2 ;
  wire \count_sawtooth_reg[12]_i_1_n_3 ;
  wire \count_sawtooth_reg[12]_i_1_n_4 ;
  wire \count_sawtooth_reg[12]_i_1_n_5 ;
  wire \count_sawtooth_reg[12]_i_1_n_6 ;
  wire \count_sawtooth_reg[12]_i_1_n_7 ;
  wire \count_sawtooth_reg[16]_i_1_n_0 ;
  wire \count_sawtooth_reg[16]_i_1_n_1 ;
  wire \count_sawtooth_reg[16]_i_1_n_2 ;
  wire \count_sawtooth_reg[16]_i_1_n_3 ;
  wire \count_sawtooth_reg[16]_i_1_n_4 ;
  wire \count_sawtooth_reg[16]_i_1_n_5 ;
  wire \count_sawtooth_reg[16]_i_1_n_6 ;
  wire \count_sawtooth_reg[16]_i_1_n_7 ;
  wire \count_sawtooth_reg[20]_i_1_n_0 ;
  wire \count_sawtooth_reg[20]_i_1_n_1 ;
  wire \count_sawtooth_reg[20]_i_1_n_2 ;
  wire \count_sawtooth_reg[20]_i_1_n_3 ;
  wire \count_sawtooth_reg[20]_i_1_n_4 ;
  wire \count_sawtooth_reg[20]_i_1_n_5 ;
  wire \count_sawtooth_reg[20]_i_1_n_6 ;
  wire \count_sawtooth_reg[20]_i_1_n_7 ;
  wire \count_sawtooth_reg[24]_i_1_n_0 ;
  wire \count_sawtooth_reg[24]_i_1_n_1 ;
  wire \count_sawtooth_reg[24]_i_1_n_2 ;
  wire \count_sawtooth_reg[24]_i_1_n_3 ;
  wire \count_sawtooth_reg[24]_i_1_n_4 ;
  wire \count_sawtooth_reg[24]_i_1_n_5 ;
  wire \count_sawtooth_reg[24]_i_1_n_6 ;
  wire \count_sawtooth_reg[24]_i_1_n_7 ;
  wire \count_sawtooth_reg[28]_i_1_n_2 ;
  wire \count_sawtooth_reg[28]_i_1_n_3 ;
  wire \count_sawtooth_reg[28]_i_1_n_5 ;
  wire \count_sawtooth_reg[28]_i_1_n_6 ;
  wire \count_sawtooth_reg[28]_i_1_n_7 ;
  wire \count_sawtooth_reg[4]_i_1_n_0 ;
  wire \count_sawtooth_reg[4]_i_1_n_1 ;
  wire \count_sawtooth_reg[4]_i_1_n_2 ;
  wire \count_sawtooth_reg[4]_i_1_n_3 ;
  wire \count_sawtooth_reg[4]_i_1_n_4 ;
  wire \count_sawtooth_reg[4]_i_1_n_5 ;
  wire \count_sawtooth_reg[4]_i_1_n_6 ;
  wire \count_sawtooth_reg[4]_i_1_n_7 ;
  wire \count_sawtooth_reg[8]_i_1_n_0 ;
  wire \count_sawtooth_reg[8]_i_1_n_1 ;
  wire \count_sawtooth_reg[8]_i_1_n_2 ;
  wire \count_sawtooth_reg[8]_i_1_n_3 ;
  wire \count_sawtooth_reg[8]_i_1_n_4 ;
  wire \count_sawtooth_reg[8]_i_1_n_5 ;
  wire \count_sawtooth_reg[8]_i_1_n_6 ;
  wire \count_sawtooth_reg[8]_i_1_n_7 ;
  wire \count_sawtooth_reg_n_0_[0] ;
  wire \count_sawtooth_reg_n_0_[10] ;
  wire \count_sawtooth_reg_n_0_[11] ;
  wire \count_sawtooth_reg_n_0_[12] ;
  wire \count_sawtooth_reg_n_0_[13] ;
  wire \count_sawtooth_reg_n_0_[14] ;
  wire \count_sawtooth_reg_n_0_[15] ;
  wire \count_sawtooth_reg_n_0_[16] ;
  wire \count_sawtooth_reg_n_0_[17] ;
  wire \count_sawtooth_reg_n_0_[18] ;
  wire \count_sawtooth_reg_n_0_[1] ;
  wire \count_sawtooth_reg_n_0_[2] ;
  wire \count_sawtooth_reg_n_0_[3] ;
  wire \count_sawtooth_reg_n_0_[4] ;
  wire \count_sawtooth_reg_n_0_[5] ;
  wire \count_sawtooth_reg_n_0_[6] ;
  wire \count_sawtooth_reg_n_0_[7] ;
  wire \count_sawtooth_reg_n_0_[8] ;
  wire \count_sawtooth_reg_n_0_[9] ;
  wire down_i_1_n_0;
  wire down_reg_n_0;
  wire [11:0]gen_out_int;
  wire [0:0]out;
  wire [11:1]plusOp;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \reset_sinc_reg[1] ;
  wire [1:0]select_in;
  wire [11:0]sine_int;
  wire up_i_1_n_0;
  wire up_i_2_n_0;
  wire up_i_3_n_0;
  wire up_i_4_n_0;
  wire up_i_5_n_0;
  wire [1:0]up_reg_0;
  wire up_reg_n_0;
  wire [3:3]\NLW_count_12bits_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_sawtooth_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_sawtooth_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;
  wire NLW_sine_wave_bloc_m_axis_data_tvalid_UNCONNECTED;
  wire [15:12]NLW_sine_wave_bloc_m_axis_data_tdata_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(up_reg_0[0]),
        .I1(up_reg_0[1]),
        .O(\reset_sinc_reg[1] ));
  LUT3 #(
    .INIT(8'hA8)) 
    \count_12bits[0]_i_1 
       (.I0(out),
        .I1(down_reg_n_0),
        .I2(up_reg_n_0),
        .O(count_12bits));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[0]_i_3 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[3]),
        .O(\count_12bits[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[0]_i_4 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[2]),
        .O(\count_12bits[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[0]_i_5 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[1]),
        .O(\count_12bits[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[4]_i_2 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[7]),
        .O(\count_12bits[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[4]_i_3 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[6]),
        .O(\count_12bits[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[4]_i_4 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[5]),
        .O(\count_12bits[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[4]_i_5 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[4]),
        .O(\count_12bits[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[8]_i_2 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[11]),
        .O(\count_12bits[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[8]_i_3 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[10]),
        .O(\count_12bits[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[8]_i_4 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[9]),
        .O(\count_12bits[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_12bits[8]_i_5 
       (.I0(up_reg_n_0),
        .I1(count_12bits_reg[8]),
        .O(\count_12bits[8]_i_5_n_0 ));
  FDRE \count_12bits_reg[0] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[0]_i_2_n_7 ),
        .Q(count_12bits_reg[0]),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_12bits_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_12bits_reg[0]_i_2_n_0 ,\count_12bits_reg[0]_i_2_n_1 ,\count_12bits_reg[0]_i_2_n_2 ,\count_12bits_reg[0]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({count_12bits_reg[3:1],1'b0}),
        .O({\count_12bits_reg[0]_i_2_n_4 ,\count_12bits_reg[0]_i_2_n_5 ,\count_12bits_reg[0]_i_2_n_6 ,\count_12bits_reg[0]_i_2_n_7 }),
        .S({\count_12bits[0]_i_3_n_0 ,\count_12bits[0]_i_4_n_0 ,\count_12bits[0]_i_5_n_0 ,count_12bits_reg[0]}));
  FDRE \count_12bits_reg[10] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[8]_i_1_n_5 ),
        .Q(count_12bits_reg[10]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_12bits_reg[11] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[8]_i_1_n_4 ),
        .Q(count_12bits_reg[11]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_12bits_reg[1] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[0]_i_2_n_6 ),
        .Q(count_12bits_reg[1]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_12bits_reg[2] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[0]_i_2_n_5 ),
        .Q(count_12bits_reg[2]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_12bits_reg[3] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[0]_i_2_n_4 ),
        .Q(count_12bits_reg[3]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_12bits_reg[4] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[4]_i_1_n_7 ),
        .Q(count_12bits_reg[4]),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_12bits_reg[4]_i_1 
       (.CI(\count_12bits_reg[0]_i_2_n_0 ),
        .CO({\count_12bits_reg[4]_i_1_n_0 ,\count_12bits_reg[4]_i_1_n_1 ,\count_12bits_reg[4]_i_1_n_2 ,\count_12bits_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(count_12bits_reg[7:4]),
        .O({\count_12bits_reg[4]_i_1_n_4 ,\count_12bits_reg[4]_i_1_n_5 ,\count_12bits_reg[4]_i_1_n_6 ,\count_12bits_reg[4]_i_1_n_7 }),
        .S({\count_12bits[4]_i_2_n_0 ,\count_12bits[4]_i_3_n_0 ,\count_12bits[4]_i_4_n_0 ,\count_12bits[4]_i_5_n_0 }));
  FDRE \count_12bits_reg[5] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[4]_i_1_n_6 ),
        .Q(count_12bits_reg[5]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_12bits_reg[6] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[4]_i_1_n_5 ),
        .Q(count_12bits_reg[6]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_12bits_reg[7] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[4]_i_1_n_4 ),
        .Q(count_12bits_reg[7]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_12bits_reg[8] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[8]_i_1_n_7 ),
        .Q(count_12bits_reg[8]),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_12bits_reg[8]_i_1 
       (.CI(\count_12bits_reg[4]_i_1_n_0 ),
        .CO({\NLW_count_12bits_reg[8]_i_1_CO_UNCONNECTED [3],\count_12bits_reg[8]_i_1_n_1 ,\count_12bits_reg[8]_i_1_n_2 ,\count_12bits_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,count_12bits_reg[10:8]}),
        .O({\count_12bits_reg[8]_i_1_n_4 ,\count_12bits_reg[8]_i_1_n_5 ,\count_12bits_reg[8]_i_1_n_6 ,\count_12bits_reg[8]_i_1_n_7 }),
        .S({\count_12bits[8]_i_2_n_0 ,\count_12bits[8]_i_3_n_0 ,\count_12bits[8]_i_4_n_0 ,\count_12bits[8]_i_5_n_0 }));
  FDRE \count_12bits_reg[9] 
       (.C(clk),
        .CE(count_12bits),
        .D(\count_12bits_reg[8]_i_1_n_6 ),
        .Q(count_12bits_reg[9]),
        .R(\reset_sinc_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_sawtooth[0]_i_2 
       (.I0(\count_sawtooth_reg_n_0_[0] ),
        .O(\count_sawtooth[0]_i_2_n_0 ));
  FDRE \count_sawtooth_reg[0] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[0]_i_1_n_7 ),
        .Q(\count_sawtooth_reg_n_0_[0] ),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sawtooth_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_sawtooth_reg[0]_i_1_n_0 ,\count_sawtooth_reg[0]_i_1_n_1 ,\count_sawtooth_reg[0]_i_1_n_2 ,\count_sawtooth_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_sawtooth_reg[0]_i_1_n_4 ,\count_sawtooth_reg[0]_i_1_n_5 ,\count_sawtooth_reg[0]_i_1_n_6 ,\count_sawtooth_reg[0]_i_1_n_7 }),
        .S({\count_sawtooth_reg_n_0_[3] ,\count_sawtooth_reg_n_0_[2] ,\count_sawtooth_reg_n_0_[1] ,\count_sawtooth[0]_i_2_n_0 }));
  FDRE \count_sawtooth_reg[10] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[8]_i_1_n_5 ),
        .Q(\count_sawtooth_reg_n_0_[10] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[11] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[8]_i_1_n_4 ),
        .Q(\count_sawtooth_reg_n_0_[11] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[12] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[12]_i_1_n_7 ),
        .Q(\count_sawtooth_reg_n_0_[12] ),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sawtooth_reg[12]_i_1 
       (.CI(\count_sawtooth_reg[8]_i_1_n_0 ),
        .CO({\count_sawtooth_reg[12]_i_1_n_0 ,\count_sawtooth_reg[12]_i_1_n_1 ,\count_sawtooth_reg[12]_i_1_n_2 ,\count_sawtooth_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sawtooth_reg[12]_i_1_n_4 ,\count_sawtooth_reg[12]_i_1_n_5 ,\count_sawtooth_reg[12]_i_1_n_6 ,\count_sawtooth_reg[12]_i_1_n_7 }),
        .S({\count_sawtooth_reg_n_0_[15] ,\count_sawtooth_reg_n_0_[14] ,\count_sawtooth_reg_n_0_[13] ,\count_sawtooth_reg_n_0_[12] }));
  FDRE \count_sawtooth_reg[13] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[12]_i_1_n_6 ),
        .Q(\count_sawtooth_reg_n_0_[13] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[14] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[12]_i_1_n_5 ),
        .Q(\count_sawtooth_reg_n_0_[14] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[15] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[12]_i_1_n_4 ),
        .Q(\count_sawtooth_reg_n_0_[15] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[16] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[16]_i_1_n_7 ),
        .Q(\count_sawtooth_reg_n_0_[16] ),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sawtooth_reg[16]_i_1 
       (.CI(\count_sawtooth_reg[12]_i_1_n_0 ),
        .CO({\count_sawtooth_reg[16]_i_1_n_0 ,\count_sawtooth_reg[16]_i_1_n_1 ,\count_sawtooth_reg[16]_i_1_n_2 ,\count_sawtooth_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sawtooth_reg[16]_i_1_n_4 ,\count_sawtooth_reg[16]_i_1_n_5 ,\count_sawtooth_reg[16]_i_1_n_6 ,\count_sawtooth_reg[16]_i_1_n_7 }),
        .S({count_sawtooth_reg[19],\count_sawtooth_reg_n_0_[18] ,\count_sawtooth_reg_n_0_[17] ,\count_sawtooth_reg_n_0_[16] }));
  FDRE \count_sawtooth_reg[17] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[16]_i_1_n_6 ),
        .Q(\count_sawtooth_reg_n_0_[17] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[18] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[16]_i_1_n_5 ),
        .Q(\count_sawtooth_reg_n_0_[18] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[19] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[16]_i_1_n_4 ),
        .Q(count_sawtooth_reg[19]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[1] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[0]_i_1_n_6 ),
        .Q(\count_sawtooth_reg_n_0_[1] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[20] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[20]_i_1_n_7 ),
        .Q(count_sawtooth_reg[20]),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sawtooth_reg[20]_i_1 
       (.CI(\count_sawtooth_reg[16]_i_1_n_0 ),
        .CO({\count_sawtooth_reg[20]_i_1_n_0 ,\count_sawtooth_reg[20]_i_1_n_1 ,\count_sawtooth_reg[20]_i_1_n_2 ,\count_sawtooth_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sawtooth_reg[20]_i_1_n_4 ,\count_sawtooth_reg[20]_i_1_n_5 ,\count_sawtooth_reg[20]_i_1_n_6 ,\count_sawtooth_reg[20]_i_1_n_7 }),
        .S(count_sawtooth_reg[23:20]));
  FDRE \count_sawtooth_reg[21] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[20]_i_1_n_6 ),
        .Q(count_sawtooth_reg[21]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[22] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[20]_i_1_n_5 ),
        .Q(count_sawtooth_reg[22]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[23] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[20]_i_1_n_4 ),
        .Q(count_sawtooth_reg[23]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[24] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[24]_i_1_n_7 ),
        .Q(count_sawtooth_reg[24]),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sawtooth_reg[24]_i_1 
       (.CI(\count_sawtooth_reg[20]_i_1_n_0 ),
        .CO({\count_sawtooth_reg[24]_i_1_n_0 ,\count_sawtooth_reg[24]_i_1_n_1 ,\count_sawtooth_reg[24]_i_1_n_2 ,\count_sawtooth_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sawtooth_reg[24]_i_1_n_4 ,\count_sawtooth_reg[24]_i_1_n_5 ,\count_sawtooth_reg[24]_i_1_n_6 ,\count_sawtooth_reg[24]_i_1_n_7 }),
        .S(count_sawtooth_reg[27:24]));
  FDRE \count_sawtooth_reg[25] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[24]_i_1_n_6 ),
        .Q(count_sawtooth_reg[25]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[26] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[24]_i_1_n_5 ),
        .Q(count_sawtooth_reg[26]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[27] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[24]_i_1_n_4 ),
        .Q(count_sawtooth_reg[27]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[28] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[28]_i_1_n_7 ),
        .Q(count_sawtooth_reg[28]),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sawtooth_reg[28]_i_1 
       (.CI(\count_sawtooth_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_sawtooth_reg[28]_i_1_CO_UNCONNECTED [3:2],\count_sawtooth_reg[28]_i_1_n_2 ,\count_sawtooth_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_sawtooth_reg[28]_i_1_O_UNCONNECTED [3],\count_sawtooth_reg[28]_i_1_n_5 ,\count_sawtooth_reg[28]_i_1_n_6 ,\count_sawtooth_reg[28]_i_1_n_7 }),
        .S({1'b0,count_sawtooth_reg[30:28]}));
  FDRE \count_sawtooth_reg[29] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[28]_i_1_n_6 ),
        .Q(count_sawtooth_reg[29]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[2] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[0]_i_1_n_5 ),
        .Q(\count_sawtooth_reg_n_0_[2] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[30] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[28]_i_1_n_5 ),
        .Q(count_sawtooth_reg[30]),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[3] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[0]_i_1_n_4 ),
        .Q(\count_sawtooth_reg_n_0_[3] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[4] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[4]_i_1_n_7 ),
        .Q(\count_sawtooth_reg_n_0_[4] ),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sawtooth_reg[4]_i_1 
       (.CI(\count_sawtooth_reg[0]_i_1_n_0 ),
        .CO({\count_sawtooth_reg[4]_i_1_n_0 ,\count_sawtooth_reg[4]_i_1_n_1 ,\count_sawtooth_reg[4]_i_1_n_2 ,\count_sawtooth_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sawtooth_reg[4]_i_1_n_4 ,\count_sawtooth_reg[4]_i_1_n_5 ,\count_sawtooth_reg[4]_i_1_n_6 ,\count_sawtooth_reg[4]_i_1_n_7 }),
        .S({\count_sawtooth_reg_n_0_[7] ,\count_sawtooth_reg_n_0_[6] ,\count_sawtooth_reg_n_0_[5] ,\count_sawtooth_reg_n_0_[4] }));
  FDRE \count_sawtooth_reg[5] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[4]_i_1_n_6 ),
        .Q(\count_sawtooth_reg_n_0_[5] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[6] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[4]_i_1_n_5 ),
        .Q(\count_sawtooth_reg_n_0_[6] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[7] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[4]_i_1_n_4 ),
        .Q(\count_sawtooth_reg_n_0_[7] ),
        .R(\reset_sinc_reg[1] ));
  FDRE \count_sawtooth_reg[8] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[8]_i_1_n_7 ),
        .Q(\count_sawtooth_reg_n_0_[8] ),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sawtooth_reg[8]_i_1 
       (.CI(\count_sawtooth_reg[4]_i_1_n_0 ),
        .CO({\count_sawtooth_reg[8]_i_1_n_0 ,\count_sawtooth_reg[8]_i_1_n_1 ,\count_sawtooth_reg[8]_i_1_n_2 ,\count_sawtooth_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sawtooth_reg[8]_i_1_n_4 ,\count_sawtooth_reg[8]_i_1_n_5 ,\count_sawtooth_reg[8]_i_1_n_6 ,\count_sawtooth_reg[8]_i_1_n_7 }),
        .S({\count_sawtooth_reg_n_0_[11] ,\count_sawtooth_reg_n_0_[10] ,\count_sawtooth_reg_n_0_[9] ,\count_sawtooth_reg_n_0_[8] }));
  FDRE \count_sawtooth_reg[9] 
       (.C(clk),
        .CE(out),
        .D(\count_sawtooth_reg[8]_i_1_n_6 ),
        .Q(\count_sawtooth_reg_n_0_[9] ),
        .R(\reset_sinc_reg[1] ));
  LUT5 #(
    .INIT(32'hDDFD00F0)) 
    down_i_1
       (.I0(up_i_2_n_0),
        .I1(up_i_3_n_0),
        .I2(up_i_4_n_0),
        .I3(up_i_5_n_0),
        .I4(down_reg_n_0),
        .O(down_i_1_n_0));
  FDRE down_reg
       (.C(clk),
        .CE(1'b1),
        .D(down_i_1_n_0),
        .Q(down_reg_n_0),
        .R(\reset_sinc_reg[1] ));
  LUT6 #(
    .INIT(64'hFF55F0CC0055F0CC)) 
    \gen_out[0]_i_1 
       (.I0(sine_int[0]),
        .I1(count_sawtooth_reg[19]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[0]),
        .O(gen_out_int[0]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[10]_i_1 
       (.I0(plusOp[10]),
        .I1(count_sawtooth_reg[29]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[10]),
        .O(gen_out_int[10]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[11]_i_1 
       (.I0(plusOp[11]),
        .I1(count_sawtooth_reg[30]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[11]),
        .O(gen_out_int[11]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[1]_i_1 
       (.I0(plusOp[1]),
        .I1(count_sawtooth_reg[20]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[1]),
        .O(gen_out_int[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[2]_i_1 
       (.I0(plusOp[2]),
        .I1(count_sawtooth_reg[21]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[2]),
        .O(gen_out_int[2]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[3]_i_1 
       (.I0(plusOp[3]),
        .I1(count_sawtooth_reg[22]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[3]),
        .O(gen_out_int[3]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[4]_i_1 
       (.I0(plusOp[4]),
        .I1(count_sawtooth_reg[23]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[4]),
        .O(gen_out_int[4]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[5]_i_1 
       (.I0(plusOp[5]),
        .I1(count_sawtooth_reg[24]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[5]),
        .O(gen_out_int[5]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[6]_i_1 
       (.I0(plusOp[6]),
        .I1(count_sawtooth_reg[25]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[6]),
        .O(gen_out_int[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[7]_i_1 
       (.I0(plusOp[7]),
        .I1(count_sawtooth_reg[26]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[7]),
        .O(gen_out_int[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[8]_i_1 
       (.I0(plusOp[8]),
        .I1(count_sawtooth_reg[27]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[8]),
        .O(gen_out_int[8]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \gen_out[9]_i_1 
       (.I0(plusOp[9]),
        .I1(count_sawtooth_reg[28]),
        .I2(up_reg_n_0),
        .I3(select_in[1]),
        .I4(select_in[0]),
        .I5(count_12bits_reg[9]),
        .O(gen_out_int[9]));
  FDRE \gen_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[0]),
        .Q(Q[0]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[10]),
        .Q(Q[10]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[11]),
        .Q(Q[11]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[1]),
        .Q(Q[1]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[2]),
        .Q(Q[2]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[3]),
        .Q(Q[3]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[4]),
        .Q(Q[4]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[5]),
        .Q(Q[5]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[6]),
        .Q(Q[6]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[7]),
        .Q(Q[7]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[8]),
        .Q(Q[8]),
        .R(\reset_sinc_reg[1] ));
  FDRE \gen_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(gen_out_int[9]),
        .Q(Q[9]),
        .R(\reset_sinc_reg[1] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(sine_int[0]),
        .DI(sine_int[4:1]),
        .O(plusOp[4:1]),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sine_int[8:5]),
        .O(plusOp[8:5]),
        .S({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__0_i_1
       (.I0(sine_int[8]),
        .O(plusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__0_i_2
       (.I0(sine_int[7]),
        .O(plusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__0_i_3
       (.I0(sine_int[6]),
        .O(plusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__0_i_4
       (.I0(sine_int[5]),
        .O(plusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sine_int[10:9]}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],plusOp[11:9]}),
        .S({1'b0,sine_int[11],plusOp_carry__1_i_1_n_0,plusOp_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__1_i_1
       (.I0(sine_int[10]),
        .O(plusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__1_i_2
       (.I0(sine_int[9]),
        .O(plusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(sine_int[4]),
        .O(plusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_2
       (.I0(sine_int[3]),
        .O(plusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_3
       (.I0(sine_int[2]),
        .O(plusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_4
       (.I0(sine_int[1]),
        .O(plusOp_carry_i_4_n_0));
  (* CHECK_LICENSE_TYPE = "sin10K,dds_compiler_v6_0_20,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dds_compiler_v6_0_20,Vivado 2020.2" *) 
  lab4_gen_fun_top_0_0_sin10K sine_wave_bloc
       (.aclk(clk),
        .m_axis_data_tdata({NLW_sine_wave_bloc_m_axis_data_tdata_UNCONNECTED[15:12],sine_int}),
        .m_axis_data_tvalid(NLW_sine_wave_bloc_m_axis_data_tvalid_UNCONNECTED));
  LUT5 #(
    .INIT(32'hFF0F2202)) 
    up_i_1
       (.I0(up_i_2_n_0),
        .I1(up_i_3_n_0),
        .I2(up_i_4_n_0),
        .I3(up_i_5_n_0),
        .I4(up_reg_n_0),
        .O(up_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    up_i_2
       (.I0(count_12bits_reg[10]),
        .I1(count_12bits_reg[9]),
        .I2(count_12bits_reg[11]),
        .I3(count_12bits_reg[6]),
        .I4(count_12bits_reg[7]),
        .I5(count_12bits_reg[8]),
        .O(up_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    up_i_3
       (.I0(count_12bits_reg[2]),
        .I1(count_12bits_reg[0]),
        .I2(count_12bits_reg[1]),
        .I3(count_12bits_reg[5]),
        .I4(count_12bits_reg[3]),
        .I5(count_12bits_reg[4]),
        .O(up_i_3_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    up_i_4
       (.I0(count_12bits_reg[0]),
        .I1(count_12bits_reg[11]),
        .I2(count_12bits_reg[10]),
        .I3(count_12bits_reg[9]),
        .I4(count_12bits_reg[7]),
        .I5(count_12bits_reg[8]),
        .O(up_i_4_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    up_i_5
       (.I0(count_12bits_reg[1]),
        .I1(count_12bits_reg[2]),
        .I2(count_12bits_reg[3]),
        .I3(count_12bits_reg[4]),
        .I4(count_12bits_reg[5]),
        .I5(count_12bits_reg[6]),
        .O(up_i_5_n_0));
  FDSE up_reg
       (.C(clk),
        .CE(1'b1),
        .D(up_i_1_n_0),
        .Q(up_reg_n_0),
        .S(\reset_sinc_reg[1] ));
endmodule

(* ORIG_REF_NAME = "gen_fun_top" *) 
module lab4_gen_fun_top_0_0_gen_fun_top
   (clk,
    reset,
    enable,
    select_in,
    clk_out,
    nsync,
    D1,
    D2);
  input clk;
  input reset;
  input enable;
  input [1:0]select_in;
  output clk_out;
  output nsync;
  output D1;
  output D2;

  wire \<const0> ;
  wire D1;
  wire clk;
  wire clk_out;
  wire enable;
  (* async_reg = "true" *) wire [1:0]enable_sinc;
  wire gen_fun_bloc_n_0;
  wire [11:0]gen_out;
  wire nsync;
  wire reset;
  (* async_reg = "true" *) wire [2:0]reset_sinc;
  wire [1:0]select_in;

  assign D2 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  lab4_gen_fun_top_0_0_DA2 da_control_unit
       (.D1(D1),
        .E(enable_sinc[1]),
        .Q(gen_out),
        .clk(clk),
        .clk_out(clk_out),
        .nsync(nsync),
        .out(reset_sinc[2:1]),
        .\temp1_reg[11]_0 (gen_fun_bloc_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \enable_sinc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enable),
        .Q(enable_sinc[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \enable_sinc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(enable_sinc[0]),
        .Q(enable_sinc[1]),
        .R(1'b0));
  lab4_gen_fun_top_0_0_gen_fun gen_fun_bloc
       (.Q(gen_out),
        .clk(clk),
        .out(enable_sinc[1]),
        .\reset_sinc_reg[1] (gen_fun_bloc_n_0),
        .select_in(select_in),
        .up_reg_0(reset_sinc[2:1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reset_sinc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(reset),
        .Q(reset_sinc[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reset_sinc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(reset_sinc[0]),
        .Q(reset_sinc[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reset_sinc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(reset_sinc[1]),
        .Q(reset_sinc[2]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "sin10K,dds_compiler_v6_0_20,{}" *) (* ORIG_REF_NAME = "sin10K" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dds_compiler_v6_0_20,Vivado 2020.2" *) 
module lab4_gen_fun_top_0_0_sin10K
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;

  wire \<const0> ;
  wire aclk;
  wire [11:0]\^m_axis_data_tdata ;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [15:12]NLW_U0_m_axis_data_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  assign m_axis_data_tdata[15] = \<const0> ;
  assign m_axis_data_tdata[14] = \<const0> ;
  assign m_axis_data_tdata[13] = \<const0> ;
  assign m_axis_data_tdata[12] = \<const0> ;
  assign m_axis_data_tdata[11:0] = \^m_axis_data_tdata [11:0];
  assign m_axis_data_tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "7" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "12" *) 
  (* C_PHASE_ANGLE_WIDTH = "12" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "110100011011100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  lab4_gen_fun_top_0_0_dds_compiler_v6_0_20 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({NLW_U0_m_axis_data_tdata_UNCONNECTED[15:12],\^m_axis_data_tdata }),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(NLW_U0_m_axis_data_tvalid_UNCONNECTED),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZhH7Or7GCAhAFpiSiK8r6sA7RwjJ9Tdii11EzwiypNpPn0r9A7rJiiZol84XxYNanpwTLFPRwdF3
O17/caqkTg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ojNAWo89+4CzZxOHvA45GVT0ANL90cKmvVUXXwDB3fYmp9A9JzMVd1jVDc2C6zq40HRJI3LCtqYa
SANm7EdbxrlwmiFka/Vi1pmGwcvpHiXNHqEL40Ybr2rzaDJ/8s1TFl1xPgk91nvMuEUJ7Zn2ncWy
O4fQj9khXHZjQEY0hCk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ALgZm8VrZWZvRIch4Br8F+SMV+QwzLgh4lhQ7l513y3OWEbGpnpl2ftnp0u/2xp6nc3McskfP6nm
PJIcZIlaoKToyc9ZRjlnu3qXdjqRKZiEy2ry6na1WNvAIaoQUm6cedQIfaS44sUErPv5Hny28v01
jQKfzwV2u2/WdDSpq9G8hOJmD8cQ3zZchT3gKLO9morrDng3GunTKEfwYc3psoRS0ADCiN8q34xa
B0V0mmxTng2mAObVTR5v4uBWpsqq4e715mqrEjAgTT2TiRmhZA6iEH0d/cullajmHuhhllApBMPr
NQ7v5B4A3oTiYslgvPfU5+fjwE/t5C4ngf7cMQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NqL8mDDVaKZ5Rhf5kFotnTPpOfKK0XotF1IfCUjg/fLWMIgs9842rKKunnwWG4yl52a73CWOqlIU
wym62ZKwHQvNIhDYV4et8nOJ/ssF4L531FMXWk+Ax18Dho+Deap2g0iGf+xYvOf58mhjEUs+4Lpb
l6JQqgQz0Qvcux7Nb7vhRavZyxh1+omPDBi0rWxmBAAx6/3ruQBSwQYJCOtZByjb7cyYwaK2a5O+
gc37qC3xTorqIs13YdItFsS1XcyP9S+H98hyqMQtkTj9WbauO5PJXF9TgC7AZZdA6e7iPoo1P0MR
lxYNKo2yPtUYV/yEo48zAFaT6y9MWELY9FWX0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d4Ir9YmkpeWxfTLlPQYtgkUeaxN8B1i90JFB7P9JRLI2mXpcAqbM1Ddckph49f+F/oHMkaQ1Dzdy
Tej6kxJi/Wdiu5rZ5OmBuS1ZbOG2CJC6XfXj0ThvxQ1LW4KNfufD8drKKx2IixrN1qv0PX60j/6X
3tXvEQ4xFipk/uBl74M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AcG3M3dwdYa7Crux6whvnEB7jpQ3vYcVRjQE5IC/udJBxEWpsGpVQvccMKBkoDHqdapYFU/iis0y
URrcLRxuH1iKJfzTcPj3UrIKQD9hZrAokyeBmOtsQ+XAWjJkJU85Qm3Ik0ZRBpB/TLb4/lT75yA7
UVZ90xB7V73bMURI+0oh6pjmcYbZ1CLO3wNCtVzFBzmngbfwzsRdxSArLHEd3e5VZpxrrhdclpzu
0l0xLi8XYPn9IoQcyVJfd34Oj5C6xjuozB8+xokj5qXDryDzLxGuS1qWUi55uL8EBiv81cZoNk/O
K6JvjMhV3Byr7N02AfkTJtDyXNgRm5QsOdQIIQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s7hXRgGD7PplS4pBVEYIAD7ljzuh25HUgBtLBeE/2ImUhn/63TjM1VrWBdMEmMOCTVMAMtVjdkQW
NS+ZyPExJTiGBpj5ZS0pPGflQ6V7uW6IpfHQ6aa9mRriWcZ4TuEr3yMtE+luDo6Chw0hgizpV5By
lGPXBz9qv4Z/PSwxAtCxO/ksyRObQ9glxV/ECfAE/lIKYwJ+/WaCNIGStPhoMB6/bo6ZBAVbZ8wx
PuM5xkRe1qTNlQSqCRqnrSvSGG6JoxHfLwN4Y61rUk9XF6mr0zxKpwONVqkYd73dCWsbtsywPXhv
u4Gcx00Vud2slvSdQXyCJiSRTblaZrSdOApVCQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZckK18NWTOr3bQxeTQ2Hmehew8edLI59NtFiD96pysefOkcdqoNSDc6Q21XYVaYLKX0lYNCW/c6n
fv5C4G0fE7A80b0SPkQE+sipaiBKWBNNb7GwGwwySLCePoDtZybeOvpqvvaxadDa0dqtQJbA4Zgj
LzcT0GMgIQgj84Z3Eu8ooI5jQk9jwAPKrZcdar/xrnoD2kI5ELzXQbNAj6Di5OEO91+HAv8WphCC
mruqWvwON3yyTxqzXEmugM0Ro7iCh5ErefC7ej8IJ8xoJ4++2UlBwwue5mPA5gNYhtQkFcQ7Np1e
Ycs+gyHI/UVizRd+96zJ57Sq5tf88tJ9NQqRfA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Rws6+VMWmHV6kQwKOlrBwauV6Z4saZJvIT7vO0puMXJlcaRlIvoj5ogg/v58Ri3VQEE9fMChgryM
pyKqZnjLcwA7Y2k+uXNfhwaaHv00BPIfbb7kyG3qs00Ja2TNlJI4WJsoMo88a5AbTegYyaQ8vJaM
0GjbbTcOuG8re5lVCUM0FM1b/1k7+iQp6Klfmh9VtIYk5dhuAyQHMRFGmOSfdE27bffNgdfYS3kp
i0DtbgNnRIDsdIlu2/RO3GojLf+2oyIm6Zf4ORn5bjGq4hduIv0GFaYbpasBvNnpNjRbeA0hPZcR
ouMej74eTG4+j2Xu7Kl+tvKu2e2a0zAkb0Z6Cg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14112)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZhH7Or7GCAhAFpiSiK8r6sA7RwjJ9Tdii11EzwiypNpPn0r9A7rJiiZol84XxYNanpwTLFPRwdF3
O17/caqkTg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ojNAWo89+4CzZxOHvA45GVT0ANL90cKmvVUXXwDB3fYmp9A9JzMVd1jVDc2C6zq40HRJI3LCtqYa
SANm7EdbxrlwmiFka/Vi1pmGwcvpHiXNHqEL40Ybr2rzaDJ/8s1TFl1xPgk91nvMuEUJ7Zn2ncWy
O4fQj9khXHZjQEY0hCk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ALgZm8VrZWZvRIch4Br8F+SMV+QwzLgh4lhQ7l513y3OWEbGpnpl2ftnp0u/2xp6nc3McskfP6nm
PJIcZIlaoKToyc9ZRjlnu3qXdjqRKZiEy2ry6na1WNvAIaoQUm6cedQIfaS44sUErPv5Hny28v01
jQKfzwV2u2/WdDSpq9G8hOJmD8cQ3zZchT3gKLO9morrDng3GunTKEfwYc3psoRS0ADCiN8q34xa
B0V0mmxTng2mAObVTR5v4uBWpsqq4e715mqrEjAgTT2TiRmhZA6iEH0d/cullajmHuhhllApBMPr
NQ7v5B4A3oTiYslgvPfU5+fjwE/t5C4ngf7cMQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NqL8mDDVaKZ5Rhf5kFotnTPpOfKK0XotF1IfCUjg/fLWMIgs9842rKKunnwWG4yl52a73CWOqlIU
wym62ZKwHQvNIhDYV4et8nOJ/ssF4L531FMXWk+Ax18Dho+Deap2g0iGf+xYvOf58mhjEUs+4Lpb
l6JQqgQz0Qvcux7Nb7vhRavZyxh1+omPDBi0rWxmBAAx6/3ruQBSwQYJCOtZByjb7cyYwaK2a5O+
gc37qC3xTorqIs13YdItFsS1XcyP9S+H98hyqMQtkTj9WbauO5PJXF9TgC7AZZdA6e7iPoo1P0MR
lxYNKo2yPtUYV/yEo48zAFaT6y9MWELY9FWX0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d4Ir9YmkpeWxfTLlPQYtgkUeaxN8B1i90JFB7P9JRLI2mXpcAqbM1Ddckph49f+F/oHMkaQ1Dzdy
Tej6kxJi/Wdiu5rZ5OmBuS1ZbOG2CJC6XfXj0ThvxQ1LW4KNfufD8drKKx2IixrN1qv0PX60j/6X
3tXvEQ4xFipk/uBl74M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AcG3M3dwdYa7Crux6whvnEB7jpQ3vYcVRjQE5IC/udJBxEWpsGpVQvccMKBkoDHqdapYFU/iis0y
URrcLRxuH1iKJfzTcPj3UrIKQD9hZrAokyeBmOtsQ+XAWjJkJU85Qm3Ik0ZRBpB/TLb4/lT75yA7
UVZ90xB7V73bMURI+0oh6pjmcYbZ1CLO3wNCtVzFBzmngbfwzsRdxSArLHEd3e5VZpxrrhdclpzu
0l0xLi8XYPn9IoQcyVJfd34Oj5C6xjuozB8+xokj5qXDryDzLxGuS1qWUi55uL8EBiv81cZoNk/O
K6JvjMhV3Byr7N02AfkTJtDyXNgRm5QsOdQIIQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s7hXRgGD7PplS4pBVEYIAD7ljzuh25HUgBtLBeE/2ImUhn/63TjM1VrWBdMEmMOCTVMAMtVjdkQW
NS+ZyPExJTiGBpj5ZS0pPGflQ6V7uW6IpfHQ6aa9mRriWcZ4TuEr3yMtE+luDo6Chw0hgizpV5By
lGPXBz9qv4Z/PSwxAtCxO/ksyRObQ9glxV/ECfAE/lIKYwJ+/WaCNIGStPhoMB6/bo6ZBAVbZ8wx
PuM5xkRe1qTNlQSqCRqnrSvSGG6JoxHfLwN4Y61rUk9XF6mr0zxKpwONVqkYd73dCWsbtsywPXhv
u4Gcx00Vud2slvSdQXyCJiSRTblaZrSdOApVCQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZckK18NWTOr3bQxeTQ2Hmehew8edLI59NtFiD96pysefOkcdqoNSDc6Q21XYVaYLKX0lYNCW/c6n
fv5C4G0fE7A80b0SPkQE+sipaiBKWBNNb7GwGwwySLCePoDtZybeOvpqvvaxadDa0dqtQJbA4Zgj
LzcT0GMgIQgj84Z3Eu8ooI5jQk9jwAPKrZcdar/xrnoD2kI5ELzXQbNAj6Di5OEO91+HAv8WphCC
mruqWvwON3yyTxqzXEmugM0Ro7iCh5ErefC7ej8IJ8xoJ4++2UlBwwue5mPA5gNYhtQkFcQ7Np1e
Ycs+gyHI/UVizRd+96zJ57Sq5tf88tJ9NQqRfA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Rws6+VMWmHV6kQwKOlrBwauV6Z4saZJvIT7vO0puMXJlcaRlIvoj5ogg/v58Ri3VQEE9fMChgryM
pyKqZnjLcwA7Y2k+uXNfhwaaHv00BPIfbb7kyG3qs00Ja2TNlJI4WJsoMo88a5AbTegYyaQ8vJaM
0GjbbTcOuG8re5lVCUM0FM1b/1k7+iQp6Klfmh9VtIYk5dhuAyQHMRFGmOSfdE27bffNgdfYS3kp
i0DtbgNnRIDsdIlu2/RO3GojLf+2oyIm6Zf4ORn5bjGq4hduIv0GFaYbpasBvNnpNjRbeA0hPZcR
ouMej74eTG4+j2Xu7Kl+tvKu2e2a0zAkb0Z6Cg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V2cbDETRQ20rBVPtLgPn/wZN56eHZtZYZTFMsN8MMO2joOLM3GNeuMjqgHJS5jTCkmPJxoAkjiMR
FklV4/uCTQVa/BdCWuSuTtFRLwxPg3d8+W97Y3Pf+LEpnmSDEG4jZEZ8Y80mUvWSnUBKhmAtiTA3
ljBjm3jJsdv731m/okuyIwN4Sr1rPbGAjrYoeuT/PbWwIGLyFJeYdVIQUqaON3jOm1Got++tignN
xmzgp136xsAUvXzBDz358WK+JPrQYp5YrgWE9WrzyrJOk3gzpBsJNsHAOrTI5nMLVXvdhC9xmSZv
Ien1YpKQGeH8ZOyst2xHVzPEu5LY5mfXowX/pg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
duY7xFyfXi8bydSgRjsb2JyTNwSjnxR8vrryrx69cNF8JNTD8BjZOuOMwXZN17tdtuhsVLq/Jq/b
6a3Pfk0/LAov8RbQa2ZewUMIkHGqQccHD3hNDaFa1sW1kOk4S4K88StTj8xo3D6B+EcKBUephBXU
xgab4/scNhGhM7C7OthTNDyC/AgbqgBtV1E2a9he0X3bgiGWSCOS0zqz7zkizmohKXWzHQsQyBDY
3CTuDtVk35+CsPjhZFXC1A/WGX/Y4moGlRyEkYsqShpRc9GcNb+656xrN9Ny9iPVldWTUoK0ijXM
V/j18Ra6gSmvqXOMJsUrTgAPlwxCdivfWBxbow==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 66240)
`pragma protect data_block
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
x/S3NIMY
`pragma protect end_protected
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
