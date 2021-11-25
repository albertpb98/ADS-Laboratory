// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov 23 14:40:48 2021
// Host        : c5b5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab4_gen_fun_top_0_0_sim_netlist.v
// Design      : lab4_gen_fun_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DA2
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_fun
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sin10K sine_wave_bloc
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_fun_top
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DA2 da_control_unit
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_fun gen_fun_bloc
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

(* CHECK_LICENSE_TYPE = "lab4_gen_fun_top_0_0,gen_fun_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "gen_fun_top,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_fun_top U0
       (.D1(D1),
        .D2(NLW_U0_D2_UNCONNECTED),
        .clk(clk),
        .clk_out(clk_out),
        .enable(enable),
        .nsync(nsync),
        .reset(reset),
        .select_in(select_in));
endmodule

(* CHECK_LICENSE_TYPE = "sin10K,dds_compiler_v6_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_20,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sin10K
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_20 U0
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
JKjkwsZpuVRpvXScScHyTHpBUbmC4i/h9Jx4O6UGUbqSwRIWF7hKMQF2OdRr974W+k0F5I7oro0V
KD/3lL6418udgzcwvI0El4FCEV3J8OqYsnHWQlChmq7RcTPK+riAYKtL3chmABNOnmdIMyRV6JmF
Qsyj7pCKT9rte5zjcF+dWhuxN6EdNWDhJbRANkgVpSEY82xbLbDglxHhoJ9bz8LDw7mu+JUTCoQK
76vEg8rs6Mf6AVHK9sR9AqYVZjmwOsLcsuOCtkPw9PPtJL6ThrYbKsJlZ2xeWOjzSHS1shO6c8xn
8ytcvPkgjngNUG2ZlXFZdnEm2SPMc7mjoBF/8w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
37qppw78U2u7bzTdxUMFxHBj0Fef/aus2r/QyXH8Tq3Bbu9rCEBgsHyTVY6EKQrDljD8l0QfmsYK
e/7cPRIzzdxQUTQR1L/ga5hE1wCzusG/+nAVaFrd7yKOdR57cT7DuDDDt9EC7s20mi7gm6eCnbWH
YJMRv5mRuVdJhVLQioRSWBcsyLFmwrh8w0s9GxiGb/03R/CEYqYKGsfXdPjWaRqiMs8p1qUOSSTb
H8j4nbSoMwqpdZle+RSe+Y5QwLDHgknZ0c34EoIVTGu+pNkS8JSlh3Uq87pbDLpGKmmOXMv5kGpd
NdcI2TyQtFzqbLiolimvgdOW/CcqmdD/r6q68Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 66560)
`pragma protect data_block
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
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
