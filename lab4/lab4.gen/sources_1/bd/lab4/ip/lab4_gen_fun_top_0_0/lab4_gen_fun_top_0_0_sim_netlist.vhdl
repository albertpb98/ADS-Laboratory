-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Nov 23 14:40:49 2021
-- Host        : c5b5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/albert.poblador/lab4/lab4.gen/sources_1/bd/lab4/ip/lab4_gen_fun_top_0_0/lab4_gen_fun_top_0_0_sim_netlist.vhdl
-- Design      : lab4_gen_fun_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_gen_fun_top_0_0_DA2 is
  port (
    clk_out : out STD_LOGIC;
    D1 : out STD_LOGIC;
    nsync : out STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \temp1_reg[11]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_gen_fun_top_0_0_DA2 : entity is "DA2";
end lab4_gen_fun_top_0_0_DA2;

architecture STRUCTURE of lab4_gen_fun_top_0_0_DA2 is
  signal CLK_OUT_i_1_n_0 : STD_LOGIC;
  signal \^d1\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal clk_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \^clk_out\ : STD_LOGIC;
  signal enParalelLoad : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shiftCounter : STD_LOGIC;
  signal \shiftCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \shiftCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal shiftCounter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal temp1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \temp1[15]_i_1_n_0\ : STD_LOGIC;
  signal temp1_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "idle:001,shiftout:010,syncdata:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "idle:001,shiftout:010,syncdata:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "idle:001,shiftout:010,syncdata:100,";
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of nsync_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shiftCounter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shiftCounter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shiftCounter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shiftCounter[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp1[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp1[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp1[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp1[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \temp1[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \temp1[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \temp1[15]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \temp1[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp1[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp1[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp1[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp1[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp1[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp1[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp1[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \temp1[9]_i_1\ : label is "soft_lutpair6";
begin
  D1 <= \^d1\;
  clk_out <= \^clk_out\;
CLK_OUT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A3A300A3"
    )
        port map (
      I0 => \^clk_out\,
      I1 => clk_counter(1),
      I2 => clk_counter(0),
      I3 => \out\(0),
      I4 => \out\(1),
      O => CLK_OUT_i_1_n_0
    );
CLK_OUT_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => CLK_OUT_i_1_n_0,
      Q => \^clk_out\,
      R => '0'
    );
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF807700"
    )
        port map (
      I0 => clk_counter(1),
      I1 => clk_counter(0),
      I2 => \FSM_onehot_current_state[2]_i_3_n_0\,
      I3 => enParalelLoad,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F8800"
    )
        port map (
      I0 => clk_counter(1),
      I1 => clk_counter(0),
      I2 => \FSM_onehot_current_state[2]_i_3_n_0\,
      I3 => enParalelLoad,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF777F88800000"
    )
        port map (
      I0 => clk_counter(1),
      I1 => clk_counter(0),
      I2 => \FSM_onehot_current_state[2]_i_3_n_0\,
      I3 => enParalelLoad,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[2]_i_2_n_0\
    );
\FSM_onehot_current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => shiftCounter_reg(1),
      I2 => shiftCounter_reg(0),
      I3 => shiftCounter_reg(2),
      I4 => shiftCounter_reg(3),
      I5 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[2]_i_3_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => enParalelLoad,
      S => \temp1_reg[11]_0\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => \temp1_reg[11]_0\
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_current_state[2]_i_2_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => \temp1_reg[11]_0\
    );
\clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_counter(0),
      O => \clk_counter[0]_i_1_n_0\
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_counter(0),
      I1 => clk_counter(1),
      O => \clk_counter[1]_i_1_n_0\
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_counter[0]_i_1_n_0\,
      Q => clk_counter(0),
      R => \temp1_reg[11]_0\
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_counter[1]_i_1_n_0\,
      Q => clk_counter(1),
      R => \temp1_reg[11]_0\
    );
nsync_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => enParalelLoad,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => nsync
    );
\shiftCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shiftCounter_reg(0),
      O => plusOp(0)
    );
\shiftCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => shiftCounter_reg(0),
      I1 => shiftCounter_reg(1),
      O => plusOp(1)
    );
\shiftCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => shiftCounter_reg(1),
      I1 => shiftCounter_reg(0),
      I2 => shiftCounter_reg(2),
      O => \shiftCounter[2]_i_1_n_0\
    );
\shiftCounter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => enParalelLoad,
      I3 => clk_counter(0),
      I4 => clk_counter(1),
      O => \shiftCounter[3]_i_1_n_0\
    );
\shiftCounter[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => clk_counter(1),
      I1 => clk_counter(0),
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => shiftCounter
    );
\shiftCounter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => shiftCounter_reg(0),
      I1 => shiftCounter_reg(1),
      I2 => shiftCounter_reg(2),
      I3 => shiftCounter_reg(3),
      O => plusOp(3)
    );
\shiftCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shiftCounter,
      D => plusOp(0),
      Q => shiftCounter_reg(0),
      R => \shiftCounter[3]_i_1_n_0\
    );
\shiftCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shiftCounter,
      D => plusOp(1),
      Q => shiftCounter_reg(1),
      R => \shiftCounter[3]_i_1_n_0\
    );
\shiftCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shiftCounter,
      D => \shiftCounter[2]_i_1_n_0\,
      Q => shiftCounter_reg(2),
      R => \shiftCounter[3]_i_1_n_0\
    );
\shiftCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shiftCounter,
      D => plusOp(3),
      Q => shiftCounter_reg(3),
      R => \shiftCounter[3]_i_1_n_0\
    );
\temp1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => enParalelLoad,
      I2 => \^d1\,
      O => p_1_in(0)
    );
\temp1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => enParalelLoad,
      I2 => temp1(9),
      O => p_1_in(10)
    );
\temp1[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => enParalelLoad,
      I2 => temp1(10),
      O => p_1_in(11)
    );
\temp1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp1(11),
      I1 => enParalelLoad,
      O => p_1_in(12)
    );
\temp1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp1(12),
      I1 => enParalelLoad,
      O => p_1_in(13)
    );
\temp1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp1(13),
      I1 => enParalelLoad,
      O => p_1_in(14)
    );
\temp1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => clk_counter(0),
      I3 => clk_counter(1),
      I4 => enParalelLoad,
      O => \temp1[15]_i_1_n_0\
    );
\temp1[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => clk_counter(1),
      I1 => clk_counter(0),
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => enParalelLoad,
      O => temp1_0
    );
\temp1[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp1(14),
      I1 => enParalelLoad,
      O => p_1_in(15)
    );
\temp1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => enParalelLoad,
      I2 => temp1(0),
      O => p_1_in(1)
    );
\temp1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => enParalelLoad,
      I2 => temp1(1),
      O => p_1_in(2)
    );
\temp1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => enParalelLoad,
      I2 => temp1(2),
      O => p_1_in(3)
    );
\temp1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => enParalelLoad,
      I2 => temp1(3),
      O => p_1_in(4)
    );
\temp1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => enParalelLoad,
      I2 => temp1(4),
      O => p_1_in(5)
    );
\temp1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => enParalelLoad,
      I2 => temp1(5),
      O => p_1_in(6)
    );
\temp1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => enParalelLoad,
      I2 => temp1(6),
      O => p_1_in(7)
    );
\temp1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => enParalelLoad,
      I2 => temp1(7),
      O => p_1_in(8)
    );
\temp1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => enParalelLoad,
      I2 => temp1(8),
      O => p_1_in(9)
    );
\temp1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(0),
      Q => temp1(0),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(10),
      Q => temp1(10),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(11),
      Q => temp1(11),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(12),
      Q => temp1(12),
      R => \temp1[15]_i_1_n_0\
    );
\temp1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(13),
      Q => temp1(13),
      R => \temp1[15]_i_1_n_0\
    );
\temp1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(14),
      Q => temp1(14),
      R => \temp1[15]_i_1_n_0\
    );
\temp1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(15),
      Q => \^d1\,
      R => \temp1[15]_i_1_n_0\
    );
\temp1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(1),
      Q => temp1(1),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(2),
      Q => temp1(2),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(3),
      Q => temp1(3),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(4),
      Q => temp1(4),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(5),
      Q => temp1(5),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(6),
      Q => temp1(6),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(7),
      Q => temp1(7),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(8),
      Q => temp1(8),
      R => \temp1_reg[11]_0\
    );
\temp1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => temp1_0,
      D => p_1_in(9),
      Q => temp1(9),
      R => \temp1_reg[11]_0\
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
ZhH7Or7GCAhAFpiSiK8r6sA7RwjJ9Tdii11EzwiypNpPn0r9A7rJiiZol84XxYNanpwTLFPRwdF3
O17/caqkTg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
ojNAWo89+4CzZxOHvA45GVT0ANL90cKmvVUXXwDB3fYmp9A9JzMVd1jVDc2C6zq40HRJI3LCtqYa
SANm7EdbxrlwmiFka/Vi1pmGwcvpHiXNHqEL40Ybr2rzaDJ/8s1TFl1xPgk91nvMuEUJ7Zn2ncWy
O4fQj9khXHZjQEY0hCk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ALgZm8VrZWZvRIch4Br8F+SMV+QwzLgh4lhQ7l513y3OWEbGpnpl2ftnp0u/2xp6nc3McskfP6nm
PJIcZIlaoKToyc9ZRjlnu3qXdjqRKZiEy2ry6na1WNvAIaoQUm6cedQIfaS44sUErPv5Hny28v01
jQKfzwV2u2/WdDSpq9G8hOJmD8cQ3zZchT3gKLO9morrDng3GunTKEfwYc3psoRS0ADCiN8q34xa
B0V0mmxTng2mAObVTR5v4uBWpsqq4e715mqrEjAgTT2TiRmhZA6iEH0d/cullajmHuhhllApBMPr
NQ7v5B4A3oTiYslgvPfU5+fjwE/t5C4ngf7cMQ==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NqL8mDDVaKZ5Rhf5kFotnTPpOfKK0XotF1IfCUjg/fLWMIgs9842rKKunnwWG4yl52a73CWOqlIU
wym62ZKwHQvNIhDYV4et8nOJ/ssF4L531FMXWk+Ax18Dho+Deap2g0iGf+xYvOf58mhjEUs+4Lpb
l6JQqgQz0Qvcux7Nb7vhRavZyxh1+omPDBi0rWxmBAAx6/3ruQBSwQYJCOtZByjb7cyYwaK2a5O+
gc37qC3xTorqIs13YdItFsS1XcyP9S+H98hyqMQtkTj9WbauO5PJXF9TgC7AZZdA6e7iPoo1P0MR
lxYNKo2yPtUYV/yEo48zAFaT6y9MWELY9FWX0w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
d4Ir9YmkpeWxfTLlPQYtgkUeaxN8B1i90JFB7P9JRLI2mXpcAqbM1Ddckph49f+F/oHMkaQ1Dzdy
Tej6kxJi/Wdiu5rZ5OmBuS1ZbOG2CJC6XfXj0ThvxQ1LW4KNfufD8drKKx2IixrN1qv0PX60j/6X
3tXvEQ4xFipk/uBl74M=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
AcG3M3dwdYa7Crux6whvnEB7jpQ3vYcVRjQE5IC/udJBxEWpsGpVQvccMKBkoDHqdapYFU/iis0y
URrcLRxuH1iKJfzTcPj3UrIKQD9hZrAokyeBmOtsQ+XAWjJkJU85Qm3Ik0ZRBpB/TLb4/lT75yA7
UVZ90xB7V73bMURI+0oh6pjmcYbZ1CLO3wNCtVzFBzmngbfwzsRdxSArLHEd3e5VZpxrrhdclpzu
0l0xLi8XYPn9IoQcyVJfd34Oj5C6xjuozB8+xokj5qXDryDzLxGuS1qWUi55uL8EBiv81cZoNk/O
K6JvjMhV3Byr7N02AfkTJtDyXNgRm5QsOdQIIQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
s7hXRgGD7PplS4pBVEYIAD7ljzuh25HUgBtLBeE/2ImUhn/63TjM1VrWBdMEmMOCTVMAMtVjdkQW
NS+ZyPExJTiGBpj5ZS0pPGflQ6V7uW6IpfHQ6aa9mRriWcZ4TuEr3yMtE+luDo6Chw0hgizpV5By
lGPXBz9qv4Z/PSwxAtCxO/ksyRObQ9glxV/ECfAE/lIKYwJ+/WaCNIGStPhoMB6/bo6ZBAVbZ8wx
PuM5xkRe1qTNlQSqCRqnrSvSGG6JoxHfLwN4Y61rUk9XF6mr0zxKpwONVqkYd73dCWsbtsywPXhv
u4Gcx00Vud2slvSdQXyCJiSRTblaZrSdOApVCQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZckK18NWTOr3bQxeTQ2Hmehew8edLI59NtFiD96pysefOkcdqoNSDc6Q21XYVaYLKX0lYNCW/c6n
fv5C4G0fE7A80b0SPkQE+sipaiBKWBNNb7GwGwwySLCePoDtZybeOvpqvvaxadDa0dqtQJbA4Zgj
LzcT0GMgIQgj84Z3Eu8ooI5jQk9jwAPKrZcdar/xrnoD2kI5ELzXQbNAj6Di5OEO91+HAv8WphCC
mruqWvwON3yyTxqzXEmugM0Ro7iCh5ErefC7ej8IJ8xoJ4++2UlBwwue5mPA5gNYhtQkFcQ7Np1e
Ycs+gyHI/UVizRd+96zJ57Sq5tf88tJ9NQqRfA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Rws6+VMWmHV6kQwKOlrBwauV6Z4saZJvIT7vO0puMXJlcaRlIvoj5ogg/v58Ri3VQEE9fMChgryM
pyKqZnjLcwA7Y2k+uXNfhwaaHv00BPIfbb7kyG3qs00Ja2TNlJI4WJsoMo88a5AbTegYyaQ8vJaM
0GjbbTcOuG8re5lVCUM0FM1b/1k7+iQp6Klfmh9VtIYk5dhuAyQHMRFGmOSfdE27bffNgdfYS3kp
i0DtbgNnRIDsdIlu2/RO3GojLf+2oyIm6Zf4ORn5bjGq4hduIv0GFaYbpasBvNnpNjRbeA0hPZcR
ouMej74eTG4+j2Xu7Kl+tvKu2e2a0zAkb0Z6Cg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
pibkwzPIMRXzk/Kvcn/2YVKBxoqoqwnbZL5bSWtyz7MP3OoTN+QE1Zpjqjpo/REMEh9kX56TbpdX
9Y85bR/t7OZ1j3wi0aouvkqT8Oj9j1epypMKe7XlvZc1f/BicYRtFbhdJ/is/5WFksjSgpB1vKAW
eXn8CaOgd3WFyulnpP4UMkJGmCgpqq+eB/vOgVDSzwYw/ahZ0zdO6ZKS6/4H4V/MkojF2wmXh5Yn
Eecv5xPHtbuardwQ8ax8gf+X7W+3i0EPAmImOLwhjZz5yyKx2lQlOHoVXDzhozLF2k1beptCk18m
leUoE1/b48Vt+M1wT2tro93476QPCLisGo/dww==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
cjfJREkeKUjGugPl0+LdHpU8gJ5/FniODz79mRocpfyq4gwzDu87kCVXUA6SedQhhiiggxHLbnnw
jO8lXRomcRp7x1MfgswbnHzLMjX+hN37Z463G6egeilauAd4+3BPxp/aZY03kpyJp+vXm7YGHYqs
itIOHdirOPA3MiA+DWGZOVD2OXcYTZkGIftk632mZ7uqCXWlAeH4/NX8mSBeqInRSDkKw9KMYmqU
/CrwobE0ldGAvUkl3+Wp4xBn5x4f9neczFY/U6swQmTG80UKCLq2IRHX5AAgFdlRH5x6xfwUOGS6
smP+ZD+WW0SBkgc0lbHGFX3DegLx66GOYRnqyg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 98784)
`protect data_block
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
qdsp
`protect end_protected
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
ZhH7Or7GCAhAFpiSiK8r6sA7RwjJ9Tdii11EzwiypNpPn0r9A7rJiiZol84XxYNanpwTLFPRwdF3
O17/caqkTg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
ojNAWo89+4CzZxOHvA45GVT0ANL90cKmvVUXXwDB3fYmp9A9JzMVd1jVDc2C6zq40HRJI3LCtqYa
SANm7EdbxrlwmiFka/Vi1pmGwcvpHiXNHqEL40Ybr2rzaDJ/8s1TFl1xPgk91nvMuEUJ7Zn2ncWy
O4fQj9khXHZjQEY0hCk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ALgZm8VrZWZvRIch4Br8F+SMV+QwzLgh4lhQ7l513y3OWEbGpnpl2ftnp0u/2xp6nc3McskfP6nm
PJIcZIlaoKToyc9ZRjlnu3qXdjqRKZiEy2ry6na1WNvAIaoQUm6cedQIfaS44sUErPv5Hny28v01
jQKfzwV2u2/WdDSpq9G8hOJmD8cQ3zZchT3gKLO9morrDng3GunTKEfwYc3psoRS0ADCiN8q34xa
B0V0mmxTng2mAObVTR5v4uBWpsqq4e715mqrEjAgTT2TiRmhZA6iEH0d/cullajmHuhhllApBMPr
NQ7v5B4A3oTiYslgvPfU5+fjwE/t5C4ngf7cMQ==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NqL8mDDVaKZ5Rhf5kFotnTPpOfKK0XotF1IfCUjg/fLWMIgs9842rKKunnwWG4yl52a73CWOqlIU
wym62ZKwHQvNIhDYV4et8nOJ/ssF4L531FMXWk+Ax18Dho+Deap2g0iGf+xYvOf58mhjEUs+4Lpb
l6JQqgQz0Qvcux7Nb7vhRavZyxh1+omPDBi0rWxmBAAx6/3ruQBSwQYJCOtZByjb7cyYwaK2a5O+
gc37qC3xTorqIs13YdItFsS1XcyP9S+H98hyqMQtkTj9WbauO5PJXF9TgC7AZZdA6e7iPoo1P0MR
lxYNKo2yPtUYV/yEo48zAFaT6y9MWELY9FWX0w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
d4Ir9YmkpeWxfTLlPQYtgkUeaxN8B1i90JFB7P9JRLI2mXpcAqbM1Ddckph49f+F/oHMkaQ1Dzdy
Tej6kxJi/Wdiu5rZ5OmBuS1ZbOG2CJC6XfXj0ThvxQ1LW4KNfufD8drKKx2IixrN1qv0PX60j/6X
3tXvEQ4xFipk/uBl74M=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
AcG3M3dwdYa7Crux6whvnEB7jpQ3vYcVRjQE5IC/udJBxEWpsGpVQvccMKBkoDHqdapYFU/iis0y
URrcLRxuH1iKJfzTcPj3UrIKQD9hZrAokyeBmOtsQ+XAWjJkJU85Qm3Ik0ZRBpB/TLb4/lT75yA7
UVZ90xB7V73bMURI+0oh6pjmcYbZ1CLO3wNCtVzFBzmngbfwzsRdxSArLHEd3e5VZpxrrhdclpzu
0l0xLi8XYPn9IoQcyVJfd34Oj5C6xjuozB8+xokj5qXDryDzLxGuS1qWUi55uL8EBiv81cZoNk/O
K6JvjMhV3Byr7N02AfkTJtDyXNgRm5QsOdQIIQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
s7hXRgGD7PplS4pBVEYIAD7ljzuh25HUgBtLBeE/2ImUhn/63TjM1VrWBdMEmMOCTVMAMtVjdkQW
NS+ZyPExJTiGBpj5ZS0pPGflQ6V7uW6IpfHQ6aa9mRriWcZ4TuEr3yMtE+luDo6Chw0hgizpV5By
lGPXBz9qv4Z/PSwxAtCxO/ksyRObQ9glxV/ECfAE/lIKYwJ+/WaCNIGStPhoMB6/bo6ZBAVbZ8wx
PuM5xkRe1qTNlQSqCRqnrSvSGG6JoxHfLwN4Y61rUk9XF6mr0zxKpwONVqkYd73dCWsbtsywPXhv
u4Gcx00Vud2slvSdQXyCJiSRTblaZrSdOApVCQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZckK18NWTOr3bQxeTQ2Hmehew8edLI59NtFiD96pysefOkcdqoNSDc6Q21XYVaYLKX0lYNCW/c6n
fv5C4G0fE7A80b0SPkQE+sipaiBKWBNNb7GwGwwySLCePoDtZybeOvpqvvaxadDa0dqtQJbA4Zgj
LzcT0GMgIQgj84Z3Eu8ooI5jQk9jwAPKrZcdar/xrnoD2kI5ELzXQbNAj6Di5OEO91+HAv8WphCC
mruqWvwON3yyTxqzXEmugM0Ro7iCh5ErefC7ej8IJ8xoJ4++2UlBwwue5mPA5gNYhtQkFcQ7Np1e
Ycs+gyHI/UVizRd+96zJ57Sq5tf88tJ9NQqRfA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Rws6+VMWmHV6kQwKOlrBwauV6Z4saZJvIT7vO0puMXJlcaRlIvoj5ogg/v58Ri3VQEE9fMChgryM
pyKqZnjLcwA7Y2k+uXNfhwaaHv00BPIfbb7kyG3qs00Ja2TNlJI4WJsoMo88a5AbTegYyaQ8vJaM
0GjbbTcOuG8re5lVCUM0FM1b/1k7+iQp6Klfmh9VtIYk5dhuAyQHMRFGmOSfdE27bffNgdfYS3kp
i0DtbgNnRIDsdIlu2/RO3GojLf+2oyIm6Zf4ORn5bjGq4hduIv0GFaYbpasBvNnpNjRbeA0hPZcR
ouMej74eTG4+j2Xu7Kl+tvKu2e2a0zAkb0Z6Cg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20336)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_gen_fun_top_0_0_sin10K is
  port (
    aclk : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of lab4_gen_fun_top_0_0_sin10K : entity is "sin10K,dds_compiler_v6_0_20,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_gen_fun_top_0_0_sin10K : entity is "sin10K";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of lab4_gen_fun_top_0_0_sin10K : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of lab4_gen_fun_top_0_0_sin10K : entity is "dds_compiler_v6_0_20,Vivado 2020.2";
end lab4_gen_fun_top_0_0_sin10K;

architecture STRUCTURE of lab4_gen_fun_top_0_0_sin10K is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_data_tdata\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_debug_axi_resync_in_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_debug_core_nd_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_debug_phase_nd_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_phase_in_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_pinc_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_poff_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_config_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_phase_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_data_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_phase_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_phase_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_phase_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_debug_axi_chan_in_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_debug_axi_pinc_in_UNCONNECTED : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal NLW_U0_debug_axi_poff_in_UNCONNECTED : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal NLW_U0_debug_phase_UNCONNECTED : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal NLW_U0_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_U0_m_axis_data_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_phase_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_phase_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUMULATOR_WIDTH : integer;
  attribute C_ACCUMULATOR_WIDTH of U0 : label is 28;
  attribute C_AMPLITUDE : integer;
  attribute C_AMPLITUDE of U0 : label is 0;
  attribute C_CHANNELS : integer;
  attribute C_CHANNELS of U0 : label is 1;
  attribute C_CHAN_WIDTH : integer;
  attribute C_CHAN_WIDTH of U0 : label is 1;
  attribute C_DEBUG_INTERFACE : integer;
  attribute C_DEBUG_INTERFACE of U0 : label is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of U0 : label is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of U0 : label is 0;
  attribute C_HAS_M_DATA : integer;
  attribute C_HAS_M_DATA of U0 : label is 1;
  attribute C_HAS_M_PHASE : integer;
  attribute C_HAS_M_PHASE of U0 : label is 0;
  attribute C_HAS_PHASEGEN : integer;
  attribute C_HAS_PHASEGEN of U0 : label is 1;
  attribute C_HAS_PHASE_OUT : integer;
  attribute C_HAS_PHASE_OUT of U0 : label is 0;
  attribute C_HAS_SINCOS : integer;
  attribute C_HAS_SINCOS of U0 : label is 1;
  attribute C_HAS_S_CONFIG : integer;
  attribute C_HAS_S_CONFIG of U0 : label is 0;
  attribute C_HAS_S_PHASE : integer;
  attribute C_HAS_S_PHASE of U0 : label is 0;
  attribute C_HAS_TLAST : integer;
  attribute C_HAS_TLAST of U0 : label is 0;
  attribute C_HAS_TREADY : integer;
  attribute C_HAS_TREADY of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 7;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MODE_OF_OPERATION : integer;
  attribute C_MODE_OF_OPERATION of U0 : label is 0;
  attribute C_MODULUS : integer;
  attribute C_MODULUS of U0 : label is 9;
  attribute C_M_DATA_HAS_TUSER : integer;
  attribute C_M_DATA_HAS_TUSER of U0 : label is 0;
  attribute C_M_DATA_TDATA_WIDTH : integer;
  attribute C_M_DATA_TDATA_WIDTH of U0 : label is 16;
  attribute C_M_DATA_TUSER_WIDTH : integer;
  attribute C_M_DATA_TUSER_WIDTH of U0 : label is 1;
  attribute C_M_PHASE_HAS_TUSER : integer;
  attribute C_M_PHASE_HAS_TUSER of U0 : label is 0;
  attribute C_M_PHASE_TDATA_WIDTH : integer;
  attribute C_M_PHASE_TDATA_WIDTH of U0 : label is 1;
  attribute C_M_PHASE_TUSER_WIDTH : integer;
  attribute C_M_PHASE_TUSER_WIDTH of U0 : label is 1;
  attribute C_NEGATIVE_COSINE : integer;
  attribute C_NEGATIVE_COSINE of U0 : label is 0;
  attribute C_NEGATIVE_SINE : integer;
  attribute C_NEGATIVE_SINE of U0 : label is 0;
  attribute C_NOISE_SHAPING : integer;
  attribute C_NOISE_SHAPING of U0 : label is 0;
  attribute C_OPTIMISE_GOAL : integer;
  attribute C_OPTIMISE_GOAL of U0 : label is 0;
  attribute C_OUTPUTS_REQUIRED : integer;
  attribute C_OUTPUTS_REQUIRED of U0 : label is 0;
  attribute C_OUTPUT_FORM : integer;
  attribute C_OUTPUT_FORM of U0 : label is 0;
  attribute C_OUTPUT_WIDTH : integer;
  attribute C_OUTPUT_WIDTH of U0 : label is 12;
  attribute C_PHASE_ANGLE_WIDTH : integer;
  attribute C_PHASE_ANGLE_WIDTH of U0 : label is 12;
  attribute C_PHASE_INCREMENT : integer;
  attribute C_PHASE_INCREMENT of U0 : label is 2;
  attribute C_PHASE_INCREMENT_VALUE : string;
  attribute C_PHASE_INCREMENT_VALUE of U0 : label is "110100011011100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_PHASE_OFFSET : integer;
  attribute C_PHASE_OFFSET of U0 : label is 0;
  attribute C_PHASE_OFFSET_VALUE : string;
  attribute C_PHASE_OFFSET_VALUE of U0 : label is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_POR_MODE : integer;
  attribute C_POR_MODE of U0 : label is 0;
  attribute C_RESYNC : integer;
  attribute C_RESYNC of U0 : label is 0;
  attribute C_S_CONFIG_SYNC_MODE : integer;
  attribute C_S_CONFIG_SYNC_MODE of U0 : label is 0;
  attribute C_S_CONFIG_TDATA_WIDTH : integer;
  attribute C_S_CONFIG_TDATA_WIDTH of U0 : label is 1;
  attribute C_S_PHASE_HAS_TUSER : integer;
  attribute C_S_PHASE_HAS_TUSER of U0 : label is 0;
  attribute C_S_PHASE_TDATA_WIDTH : integer;
  attribute C_S_PHASE_TDATA_WIDTH of U0 : label is 1;
  attribute C_S_PHASE_TUSER_WIDTH : integer;
  attribute C_S_PHASE_TUSER_WIDTH of U0 : label is 1;
  attribute C_USE_DSP48 : integer;
  attribute C_USE_DSP48 of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of m_axis_data_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID";
  attribute x_interface_parameter of m_axis_data_tvalid : signal is "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_data_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
begin
  m_axis_data_tdata(15) <= \<const0>\;
  m_axis_data_tdata(14) <= \<const0>\;
  m_axis_data_tdata(13) <= \<const0>\;
  m_axis_data_tdata(12) <= \<const0>\;
  m_axis_data_tdata(11 downto 0) <= \^m_axis_data_tdata\(11 downto 0);
  m_axis_data_tvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.lab4_gen_fun_top_0_0_dds_compiler_v6_0_20
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => '1',
      debug_axi_chan_in(0) => NLW_U0_debug_axi_chan_in_UNCONNECTED(0),
      debug_axi_pinc_in(27 downto 0) => NLW_U0_debug_axi_pinc_in_UNCONNECTED(27 downto 0),
      debug_axi_poff_in(27 downto 0) => NLW_U0_debug_axi_poff_in_UNCONNECTED(27 downto 0),
      debug_axi_resync_in => NLW_U0_debug_axi_resync_in_UNCONNECTED,
      debug_core_nd => NLW_U0_debug_core_nd_UNCONNECTED,
      debug_phase(27 downto 0) => NLW_U0_debug_phase_UNCONNECTED(27 downto 0),
      debug_phase_nd => NLW_U0_debug_phase_nd_UNCONNECTED,
      event_phase_in_invalid => NLW_U0_event_phase_in_invalid_UNCONNECTED,
      event_pinc_invalid => NLW_U0_event_pinc_invalid_UNCONNECTED,
      event_poff_invalid => NLW_U0_event_poff_invalid_UNCONNECTED,
      event_s_config_tlast_missing => NLW_U0_event_s_config_tlast_missing_UNCONNECTED,
      event_s_config_tlast_unexpected => NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED,
      event_s_phase_chanid_incorrect => NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED,
      event_s_phase_tlast_missing => NLW_U0_event_s_phase_tlast_missing_UNCONNECTED,
      event_s_phase_tlast_unexpected => NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(15 downto 12) => NLW_U0_m_axis_data_tdata_UNCONNECTED(15 downto 12),
      m_axis_data_tdata(11 downto 0) => \^m_axis_data_tdata\(11 downto 0),
      m_axis_data_tlast => NLW_U0_m_axis_data_tlast_UNCONNECTED,
      m_axis_data_tready => '0',
      m_axis_data_tuser(0) => NLW_U0_m_axis_data_tuser_UNCONNECTED(0),
      m_axis_data_tvalid => NLW_U0_m_axis_data_tvalid_UNCONNECTED,
      m_axis_phase_tdata(0) => NLW_U0_m_axis_phase_tdata_UNCONNECTED(0),
      m_axis_phase_tlast => NLW_U0_m_axis_phase_tlast_UNCONNECTED,
      m_axis_phase_tready => '0',
      m_axis_phase_tuser(0) => NLW_U0_m_axis_phase_tuser_UNCONNECTED(0),
      m_axis_phase_tvalid => NLW_U0_m_axis_phase_tvalid_UNCONNECTED,
      s_axis_config_tdata(0) => '0',
      s_axis_config_tlast => '0',
      s_axis_config_tready => NLW_U0_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => '0',
      s_axis_phase_tdata(0) => '0',
      s_axis_phase_tlast => '0',
      s_axis_phase_tready => NLW_U0_s_axis_phase_tready_UNCONNECTED,
      s_axis_phase_tuser(0) => '0',
      s_axis_phase_tvalid => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_gen_fun_top_0_0_gen_fun is
  port (
    \reset_sinc_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    select_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_gen_fun_top_0_0_gen_fun : entity is "gen_fun";
end lab4_gen_fun_top_0_0_gen_fun;

architecture STRUCTURE of lab4_gen_fun_top_0_0_gen_fun is
  signal count_12bits : STD_LOGIC;
  signal \count_12bits[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_12bits[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_12bits[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_12bits[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_12bits[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_12bits[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_12bits[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_12bits[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_12bits[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_12bits[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_12bits[8]_i_5_n_0\ : STD_LOGIC;
  signal count_12bits_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_12bits_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_12bits_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_12bits_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_12bits_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_12bits_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_12bits_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_12bits_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_12bits_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_12bits_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_12bits_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_12bits_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_12bits_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_12bits_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_12bits_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_12bits_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_12bits_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_12bits_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_12bits_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_12bits_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_12bits_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_12bits_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_12bits_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_12bits_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth[0]_i_2_n_0\ : STD_LOGIC;
  signal count_sawtooth_reg : STD_LOGIC_VECTOR ( 30 downto 19 );
  signal \count_sawtooth_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_sawtooth_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_sawtooth_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_sawtooth_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_sawtooth_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_sawtooth_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_sawtooth_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_sawtooth_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_sawtooth_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_sawtooth_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_sawtooth_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_sawtooth_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_sawtooth_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_sawtooth_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_sawtooth_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_sawtooth_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_sawtooth_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_sawtooth_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_sawtooth_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_sawtooth_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_sawtooth_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_sawtooth_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_sawtooth_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_sawtooth_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_sawtooth_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_sawtooth_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_sawtooth_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_sawtooth_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_sawtooth_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_sawtooth_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_sawtooth_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_sawtooth_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_sawtooth_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_sawtooth_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_sawtooth_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_sawtooth_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_sawtooth_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_sawtooth_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_sawtooth_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_sawtooth_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_sawtooth_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_sawtooth_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_sawtooth_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_sawtooth_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_sawtooth_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_sawtooth_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_sawtooth_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_sawtooth_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_sawtooth_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_sawtooth_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_sawtooth_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_sawtooth_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_sawtooth_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_sawtooth_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_sawtooth_reg_n_0_[9]\ : STD_LOGIC;
  signal down_i_1_n_0 : STD_LOGIC;
  signal down_reg_n_0 : STD_LOGIC;
  signal gen_out_int : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \plusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal plusOp_carry_i_3_n_0 : STD_LOGIC;
  signal plusOp_carry_i_4_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \^reset_sinc_reg[1]\ : STD_LOGIC;
  signal sine_int : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal up_i_1_n_0 : STD_LOGIC;
  signal up_i_2_n_0 : STD_LOGIC;
  signal up_i_3_n_0 : STD_LOGIC;
  signal up_i_4_n_0 : STD_LOGIC;
  signal up_i_5_n_0 : STD_LOGIC;
  signal up_reg_n_0 : STD_LOGIC;
  signal \NLW_count_12bits_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_sawtooth_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_sawtooth_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sine_wave_bloc_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_sine_wave_bloc_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_12bits_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_12bits_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_12bits_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sawtooth_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sawtooth_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sawtooth_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sawtooth_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sawtooth_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sawtooth_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sawtooth_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_sawtooth_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of sine_wave_bloc : label is "sin10K,dds_compiler_v6_0_20,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of sine_wave_bloc : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of sine_wave_bloc : label is "dds_compiler_v6_0_20,Vivado 2020.2";
begin
  \reset_sinc_reg[1]\ <= \^reset_sinc_reg[1]\;
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_reg_0(0),
      I1 => up_reg_0(1),
      O => \^reset_sinc_reg[1]\
    );
\count_12bits[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \out\(0),
      I1 => down_reg_n_0,
      I2 => up_reg_n_0,
      O => count_12bits
    );
\count_12bits[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(3),
      O => \count_12bits[0]_i_3_n_0\
    );
\count_12bits[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(2),
      O => \count_12bits[0]_i_4_n_0\
    );
\count_12bits[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(1),
      O => \count_12bits[0]_i_5_n_0\
    );
\count_12bits[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(7),
      O => \count_12bits[4]_i_2_n_0\
    );
\count_12bits[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(6),
      O => \count_12bits[4]_i_3_n_0\
    );
\count_12bits[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(5),
      O => \count_12bits[4]_i_4_n_0\
    );
\count_12bits[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(4),
      O => \count_12bits[4]_i_5_n_0\
    );
\count_12bits[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(11),
      O => \count_12bits[8]_i_2_n_0\
    );
\count_12bits[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(10),
      O => \count_12bits[8]_i_3_n_0\
    );
\count_12bits[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(9),
      O => \count_12bits[8]_i_4_n_0\
    );
\count_12bits[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => up_reg_n_0,
      I1 => count_12bits_reg(8),
      O => \count_12bits[8]_i_5_n_0\
    );
\count_12bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[0]_i_2_n_7\,
      Q => count_12bits_reg(0),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_12bits_reg[0]_i_2_n_0\,
      CO(2) => \count_12bits_reg[0]_i_2_n_1\,
      CO(1) => \count_12bits_reg[0]_i_2_n_2\,
      CO(0) => \count_12bits_reg[0]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 1) => count_12bits_reg(3 downto 1),
      DI(0) => '0',
      O(3) => \count_12bits_reg[0]_i_2_n_4\,
      O(2) => \count_12bits_reg[0]_i_2_n_5\,
      O(1) => \count_12bits_reg[0]_i_2_n_6\,
      O(0) => \count_12bits_reg[0]_i_2_n_7\,
      S(3) => \count_12bits[0]_i_3_n_0\,
      S(2) => \count_12bits[0]_i_4_n_0\,
      S(1) => \count_12bits[0]_i_5_n_0\,
      S(0) => count_12bits_reg(0)
    );
\count_12bits_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[8]_i_1_n_5\,
      Q => count_12bits_reg(10),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[8]_i_1_n_4\,
      Q => count_12bits_reg(11),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[0]_i_2_n_6\,
      Q => count_12bits_reg(1),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[0]_i_2_n_5\,
      Q => count_12bits_reg(2),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[0]_i_2_n_4\,
      Q => count_12bits_reg(3),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[4]_i_1_n_7\,
      Q => count_12bits_reg(4),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_12bits_reg[0]_i_2_n_0\,
      CO(3) => \count_12bits_reg[4]_i_1_n_0\,
      CO(2) => \count_12bits_reg[4]_i_1_n_1\,
      CO(1) => \count_12bits_reg[4]_i_1_n_2\,
      CO(0) => \count_12bits_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => count_12bits_reg(7 downto 4),
      O(3) => \count_12bits_reg[4]_i_1_n_4\,
      O(2) => \count_12bits_reg[4]_i_1_n_5\,
      O(1) => \count_12bits_reg[4]_i_1_n_6\,
      O(0) => \count_12bits_reg[4]_i_1_n_7\,
      S(3) => \count_12bits[4]_i_2_n_0\,
      S(2) => \count_12bits[4]_i_3_n_0\,
      S(1) => \count_12bits[4]_i_4_n_0\,
      S(0) => \count_12bits[4]_i_5_n_0\
    );
\count_12bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[4]_i_1_n_6\,
      Q => count_12bits_reg(5),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[4]_i_1_n_5\,
      Q => count_12bits_reg(6),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[4]_i_1_n_4\,
      Q => count_12bits_reg(7),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[8]_i_1_n_7\,
      Q => count_12bits_reg(8),
      R => \^reset_sinc_reg[1]\
    );
\count_12bits_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_12bits_reg[4]_i_1_n_0\,
      CO(3) => \NLW_count_12bits_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_12bits_reg[8]_i_1_n_1\,
      CO(1) => \count_12bits_reg[8]_i_1_n_2\,
      CO(0) => \count_12bits_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => count_12bits_reg(10 downto 8),
      O(3) => \count_12bits_reg[8]_i_1_n_4\,
      O(2) => \count_12bits_reg[8]_i_1_n_5\,
      O(1) => \count_12bits_reg[8]_i_1_n_6\,
      O(0) => \count_12bits_reg[8]_i_1_n_7\,
      S(3) => \count_12bits[8]_i_2_n_0\,
      S(2) => \count_12bits[8]_i_3_n_0\,
      S(1) => \count_12bits[8]_i_4_n_0\,
      S(0) => \count_12bits[8]_i_5_n_0\
    );
\count_12bits_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_12bits,
      D => \count_12bits_reg[8]_i_1_n_6\,
      Q => count_12bits_reg(9),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_sawtooth_reg_n_0_[0]\,
      O => \count_sawtooth[0]_i_2_n_0\
    );
\count_sawtooth_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[0]_i_1_n_7\,
      Q => \count_sawtooth_reg_n_0_[0]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sawtooth_reg[0]_i_1_n_0\,
      CO(2) => \count_sawtooth_reg[0]_i_1_n_1\,
      CO(1) => \count_sawtooth_reg[0]_i_1_n_2\,
      CO(0) => \count_sawtooth_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_sawtooth_reg[0]_i_1_n_4\,
      O(2) => \count_sawtooth_reg[0]_i_1_n_5\,
      O(1) => \count_sawtooth_reg[0]_i_1_n_6\,
      O(0) => \count_sawtooth_reg[0]_i_1_n_7\,
      S(3) => \count_sawtooth_reg_n_0_[3]\,
      S(2) => \count_sawtooth_reg_n_0_[2]\,
      S(1) => \count_sawtooth_reg_n_0_[1]\,
      S(0) => \count_sawtooth[0]_i_2_n_0\
    );
\count_sawtooth_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[8]_i_1_n_5\,
      Q => \count_sawtooth_reg_n_0_[10]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[8]_i_1_n_4\,
      Q => \count_sawtooth_reg_n_0_[11]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[12]_i_1_n_7\,
      Q => \count_sawtooth_reg_n_0_[12]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sawtooth_reg[8]_i_1_n_0\,
      CO(3) => \count_sawtooth_reg[12]_i_1_n_0\,
      CO(2) => \count_sawtooth_reg[12]_i_1_n_1\,
      CO(1) => \count_sawtooth_reg[12]_i_1_n_2\,
      CO(0) => \count_sawtooth_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sawtooth_reg[12]_i_1_n_4\,
      O(2) => \count_sawtooth_reg[12]_i_1_n_5\,
      O(1) => \count_sawtooth_reg[12]_i_1_n_6\,
      O(0) => \count_sawtooth_reg[12]_i_1_n_7\,
      S(3) => \count_sawtooth_reg_n_0_[15]\,
      S(2) => \count_sawtooth_reg_n_0_[14]\,
      S(1) => \count_sawtooth_reg_n_0_[13]\,
      S(0) => \count_sawtooth_reg_n_0_[12]\
    );
\count_sawtooth_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[12]_i_1_n_6\,
      Q => \count_sawtooth_reg_n_0_[13]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[12]_i_1_n_5\,
      Q => \count_sawtooth_reg_n_0_[14]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[12]_i_1_n_4\,
      Q => \count_sawtooth_reg_n_0_[15]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[16]_i_1_n_7\,
      Q => \count_sawtooth_reg_n_0_[16]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sawtooth_reg[12]_i_1_n_0\,
      CO(3) => \count_sawtooth_reg[16]_i_1_n_0\,
      CO(2) => \count_sawtooth_reg[16]_i_1_n_1\,
      CO(1) => \count_sawtooth_reg[16]_i_1_n_2\,
      CO(0) => \count_sawtooth_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sawtooth_reg[16]_i_1_n_4\,
      O(2) => \count_sawtooth_reg[16]_i_1_n_5\,
      O(1) => \count_sawtooth_reg[16]_i_1_n_6\,
      O(0) => \count_sawtooth_reg[16]_i_1_n_7\,
      S(3) => count_sawtooth_reg(19),
      S(2) => \count_sawtooth_reg_n_0_[18]\,
      S(1) => \count_sawtooth_reg_n_0_[17]\,
      S(0) => \count_sawtooth_reg_n_0_[16]\
    );
\count_sawtooth_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[16]_i_1_n_6\,
      Q => \count_sawtooth_reg_n_0_[17]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[16]_i_1_n_5\,
      Q => \count_sawtooth_reg_n_0_[18]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[16]_i_1_n_4\,
      Q => count_sawtooth_reg(19),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[0]_i_1_n_6\,
      Q => \count_sawtooth_reg_n_0_[1]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[20]_i_1_n_7\,
      Q => count_sawtooth_reg(20),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sawtooth_reg[16]_i_1_n_0\,
      CO(3) => \count_sawtooth_reg[20]_i_1_n_0\,
      CO(2) => \count_sawtooth_reg[20]_i_1_n_1\,
      CO(1) => \count_sawtooth_reg[20]_i_1_n_2\,
      CO(0) => \count_sawtooth_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sawtooth_reg[20]_i_1_n_4\,
      O(2) => \count_sawtooth_reg[20]_i_1_n_5\,
      O(1) => \count_sawtooth_reg[20]_i_1_n_6\,
      O(0) => \count_sawtooth_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_sawtooth_reg(23 downto 20)
    );
\count_sawtooth_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[20]_i_1_n_6\,
      Q => count_sawtooth_reg(21),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[20]_i_1_n_5\,
      Q => count_sawtooth_reg(22),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[20]_i_1_n_4\,
      Q => count_sawtooth_reg(23),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[24]_i_1_n_7\,
      Q => count_sawtooth_reg(24),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sawtooth_reg[20]_i_1_n_0\,
      CO(3) => \count_sawtooth_reg[24]_i_1_n_0\,
      CO(2) => \count_sawtooth_reg[24]_i_1_n_1\,
      CO(1) => \count_sawtooth_reg[24]_i_1_n_2\,
      CO(0) => \count_sawtooth_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sawtooth_reg[24]_i_1_n_4\,
      O(2) => \count_sawtooth_reg[24]_i_1_n_5\,
      O(1) => \count_sawtooth_reg[24]_i_1_n_6\,
      O(0) => \count_sawtooth_reg[24]_i_1_n_7\,
      S(3 downto 0) => count_sawtooth_reg(27 downto 24)
    );
\count_sawtooth_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[24]_i_1_n_6\,
      Q => count_sawtooth_reg(25),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[24]_i_1_n_5\,
      Q => count_sawtooth_reg(26),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[24]_i_1_n_4\,
      Q => count_sawtooth_reg(27),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[28]_i_1_n_7\,
      Q => count_sawtooth_reg(28),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sawtooth_reg[24]_i_1_n_0\,
      CO(3 downto 2) => \NLW_count_sawtooth_reg[28]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_sawtooth_reg[28]_i_1_n_2\,
      CO(0) => \count_sawtooth_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_sawtooth_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \count_sawtooth_reg[28]_i_1_n_5\,
      O(1) => \count_sawtooth_reg[28]_i_1_n_6\,
      O(0) => \count_sawtooth_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => count_sawtooth_reg(30 downto 28)
    );
\count_sawtooth_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[28]_i_1_n_6\,
      Q => count_sawtooth_reg(29),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[0]_i_1_n_5\,
      Q => \count_sawtooth_reg_n_0_[2]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[28]_i_1_n_5\,
      Q => count_sawtooth_reg(30),
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[0]_i_1_n_4\,
      Q => \count_sawtooth_reg_n_0_[3]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[4]_i_1_n_7\,
      Q => \count_sawtooth_reg_n_0_[4]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sawtooth_reg[0]_i_1_n_0\,
      CO(3) => \count_sawtooth_reg[4]_i_1_n_0\,
      CO(2) => \count_sawtooth_reg[4]_i_1_n_1\,
      CO(1) => \count_sawtooth_reg[4]_i_1_n_2\,
      CO(0) => \count_sawtooth_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sawtooth_reg[4]_i_1_n_4\,
      O(2) => \count_sawtooth_reg[4]_i_1_n_5\,
      O(1) => \count_sawtooth_reg[4]_i_1_n_6\,
      O(0) => \count_sawtooth_reg[4]_i_1_n_7\,
      S(3) => \count_sawtooth_reg_n_0_[7]\,
      S(2) => \count_sawtooth_reg_n_0_[6]\,
      S(1) => \count_sawtooth_reg_n_0_[5]\,
      S(0) => \count_sawtooth_reg_n_0_[4]\
    );
\count_sawtooth_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[4]_i_1_n_6\,
      Q => \count_sawtooth_reg_n_0_[5]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[4]_i_1_n_5\,
      Q => \count_sawtooth_reg_n_0_[6]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[4]_i_1_n_4\,
      Q => \count_sawtooth_reg_n_0_[7]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[8]_i_1_n_7\,
      Q => \count_sawtooth_reg_n_0_[8]\,
      R => \^reset_sinc_reg[1]\
    );
\count_sawtooth_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sawtooth_reg[4]_i_1_n_0\,
      CO(3) => \count_sawtooth_reg[8]_i_1_n_0\,
      CO(2) => \count_sawtooth_reg[8]_i_1_n_1\,
      CO(1) => \count_sawtooth_reg[8]_i_1_n_2\,
      CO(0) => \count_sawtooth_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sawtooth_reg[8]_i_1_n_4\,
      O(2) => \count_sawtooth_reg[8]_i_1_n_5\,
      O(1) => \count_sawtooth_reg[8]_i_1_n_6\,
      O(0) => \count_sawtooth_reg[8]_i_1_n_7\,
      S(3) => \count_sawtooth_reg_n_0_[11]\,
      S(2) => \count_sawtooth_reg_n_0_[10]\,
      S(1) => \count_sawtooth_reg_n_0_[9]\,
      S(0) => \count_sawtooth_reg_n_0_[8]\
    );
\count_sawtooth_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \out\(0),
      D => \count_sawtooth_reg[8]_i_1_n_6\,
      Q => \count_sawtooth_reg_n_0_[9]\,
      R => \^reset_sinc_reg[1]\
    );
down_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFD00F0"
    )
        port map (
      I0 => up_i_2_n_0,
      I1 => up_i_3_n_0,
      I2 => up_i_4_n_0,
      I3 => up_i_5_n_0,
      I4 => down_reg_n_0,
      O => down_i_1_n_0
    );
down_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => down_i_1_n_0,
      Q => down_reg_n_0,
      R => \^reset_sinc_reg[1]\
    );
\gen_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55F0CC0055F0CC"
    )
        port map (
      I0 => sine_int(0),
      I1 => count_sawtooth_reg(19),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(0),
      O => gen_out_int(0)
    );
\gen_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(10),
      I1 => count_sawtooth_reg(29),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(10),
      O => gen_out_int(10)
    );
\gen_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(11),
      I1 => count_sawtooth_reg(30),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(11),
      O => gen_out_int(11)
    );
\gen_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(1),
      I1 => count_sawtooth_reg(20),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(1),
      O => gen_out_int(1)
    );
\gen_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(2),
      I1 => count_sawtooth_reg(21),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(2),
      O => gen_out_int(2)
    );
\gen_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(3),
      I1 => count_sawtooth_reg(22),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(3),
      O => gen_out_int(3)
    );
\gen_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(4),
      I1 => count_sawtooth_reg(23),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(4),
      O => gen_out_int(4)
    );
\gen_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(5),
      I1 => count_sawtooth_reg(24),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(5),
      O => gen_out_int(5)
    );
\gen_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(6),
      I1 => count_sawtooth_reg(25),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(6),
      O => gen_out_int(6)
    );
\gen_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(7),
      I1 => count_sawtooth_reg(26),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(7),
      O => gen_out_int(7)
    );
\gen_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(8),
      I1 => count_sawtooth_reg(27),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(8),
      O => gen_out_int(8)
    );
\gen_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => plusOp(9),
      I1 => count_sawtooth_reg(28),
      I2 => up_reg_n_0,
      I3 => select_in(1),
      I4 => select_in(0),
      I5 => count_12bits_reg(9),
      O => gen_out_int(9)
    );
\gen_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(0),
      Q => Q(0),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(10),
      Q => Q(10),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(11),
      Q => Q(11),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(1),
      Q => Q(1),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(2),
      Q => Q(2),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(3),
      Q => Q(3),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(4),
      Q => Q(4),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(5),
      Q => Q(5),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(6),
      Q => Q(6),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(7),
      Q => Q(7),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(8),
      Q => Q(8),
      R => \^reset_sinc_reg[1]\
    );
\gen_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gen_out_int(9),
      Q => Q(9),
      R => \^reset_sinc_reg[1]\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => sine_int(0),
      DI(3 downto 0) => sine_int(4 downto 1),
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => plusOp_carry_i_1_n_0,
      S(2) => plusOp_carry_i_2_n_0,
      S(1) => plusOp_carry_i_3_n_0,
      S(0) => plusOp_carry_i_4_n_0
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sine_int(8 downto 5),
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => \plusOp_carry__0_i_1_n_0\,
      S(2) => \plusOp_carry__0_i_2_n_0\,
      S(1) => \plusOp_carry__0_i_3_n_0\,
      S(0) => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(8),
      O => \plusOp_carry__0_i_1_n_0\
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(7),
      O => \plusOp_carry__0_i_2_n_0\
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(6),
      O => \plusOp_carry__0_i_3_n_0\
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(5),
      O => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => sine_int(10 downto 9),
      O(3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(11 downto 9),
      S(3) => '0',
      S(2) => sine_int(11),
      S(1) => \plusOp_carry__1_i_1_n_0\,
      S(0) => \plusOp_carry__1_i_2_n_0\
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(10),
      O => \plusOp_carry__1_i_1_n_0\
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(9),
      O => \plusOp_carry__1_i_2_n_0\
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(4),
      O => plusOp_carry_i_1_n_0
    );
plusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(3),
      O => plusOp_carry_i_2_n_0
    );
plusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(2),
      O => plusOp_carry_i_3_n_0
    );
plusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sine_int(1),
      O => plusOp_carry_i_4_n_0
    );
sine_wave_bloc: entity work.lab4_gen_fun_top_0_0_sin10K
     port map (
      aclk => clk,
      m_axis_data_tdata(15 downto 12) => NLW_sine_wave_bloc_m_axis_data_tdata_UNCONNECTED(15 downto 12),
      m_axis_data_tdata(11 downto 0) => sine_int(11 downto 0),
      m_axis_data_tvalid => NLW_sine_wave_bloc_m_axis_data_tvalid_UNCONNECTED
    );
up_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F2202"
    )
        port map (
      I0 => up_i_2_n_0,
      I1 => up_i_3_n_0,
      I2 => up_i_4_n_0,
      I3 => up_i_5_n_0,
      I4 => up_reg_n_0,
      O => up_i_1_n_0
    );
up_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_12bits_reg(10),
      I1 => count_12bits_reg(9),
      I2 => count_12bits_reg(11),
      I3 => count_12bits_reg(6),
      I4 => count_12bits_reg(7),
      I5 => count_12bits_reg(8),
      O => up_i_2_n_0
    );
up_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => count_12bits_reg(2),
      I1 => count_12bits_reg(0),
      I2 => count_12bits_reg(1),
      I3 => count_12bits_reg(5),
      I4 => count_12bits_reg(3),
      I5 => count_12bits_reg(4),
      O => up_i_3_n_0
    );
up_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => count_12bits_reg(0),
      I1 => count_12bits_reg(11),
      I2 => count_12bits_reg(10),
      I3 => count_12bits_reg(9),
      I4 => count_12bits_reg(7),
      I5 => count_12bits_reg(8),
      O => up_i_4_n_0
    );
up_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_12bits_reg(1),
      I1 => count_12bits_reg(2),
      I2 => count_12bits_reg(3),
      I3 => count_12bits_reg(4),
      I4 => count_12bits_reg(5),
      I5 => count_12bits_reg(6),
      O => up_i_5_n_0
    );
up_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => up_i_1_n_0,
      Q => up_reg_n_0,
      S => \^reset_sinc_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_gen_fun_top_0_0_gen_fun_top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    select_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_out : out STD_LOGIC;
    nsync : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_gen_fun_top_0_0_gen_fun_top : entity is "gen_fun_top";
end lab4_gen_fun_top_0_0_gen_fun_top;

architecture STRUCTURE of lab4_gen_fun_top_0_0_gen_fun_top is
  signal \<const0>\ : STD_LOGIC;
  signal enable_sinc : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of enable_sinc : signal is "true";
  signal gen_fun_bloc_n_0 : STD_LOGIC;
  signal gen_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal reset_sinc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of reset_sinc : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \enable_sinc_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \enable_sinc_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \enable_sinc_reg[1]\ : label is std.standard.true;
  attribute KEEP of \enable_sinc_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reset_sinc_reg[0]\ : label is std.standard.true;
  attribute KEEP of \reset_sinc_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reset_sinc_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reset_sinc_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reset_sinc_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reset_sinc_reg[2]\ : label is "yes";
begin
  D2 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
da_control_unit: entity work.lab4_gen_fun_top_0_0_DA2
     port map (
      D1 => D1,
      E(0) => enable_sinc(1),
      Q(11 downto 0) => gen_out(11 downto 0),
      clk => clk,
      clk_out => clk_out,
      nsync => nsync,
      \out\(1 downto 0) => reset_sinc(2 downto 1),
      \temp1_reg[11]_0\ => gen_fun_bloc_n_0
    );
\enable_sinc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enable,
      Q => enable_sinc(0),
      R => '0'
    );
\enable_sinc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enable_sinc(0),
      Q => enable_sinc(1),
      R => '0'
    );
gen_fun_bloc: entity work.lab4_gen_fun_top_0_0_gen_fun
     port map (
      Q(11 downto 0) => gen_out(11 downto 0),
      clk => clk,
      \out\(0) => enable_sinc(1),
      \reset_sinc_reg[1]\ => gen_fun_bloc_n_0,
      select_in(1 downto 0) => select_in(1 downto 0),
      up_reg_0(1 downto 0) => reset_sinc(2 downto 1)
    );
\reset_sinc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reset,
      Q => reset_sinc(0),
      R => '0'
    );
\reset_sinc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reset_sinc(0),
      Q => reset_sinc(1),
      R => '0'
    );
\reset_sinc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reset_sinc(1),
      Q => reset_sinc(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_gen_fun_top_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    select_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_out : out STD_LOGIC;
    nsync : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lab4_gen_fun_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of lab4_gen_fun_top_0_0 : entity is "lab4_gen_fun_top_0_0,gen_fun_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of lab4_gen_fun_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of lab4_gen_fun_top_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of lab4_gen_fun_top_0_0 : entity is "gen_fun_top,Vivado 2020.2";
end lab4_gen_fun_top_0_0;

architecture STRUCTURE of lab4_gen_fun_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_D2_UNCONNECTED : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN lab4_clk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  D2 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.lab4_gen_fun_top_0_0_gen_fun_top
     port map (
      D1 => D1,
      D2 => NLW_U0_D2_UNCONNECTED,
      clk => clk,
      clk_out => clk_out,
      enable => enable,
      nsync => nsync,
      reset => reset,
      select_in(1 downto 0) => select_in(1 downto 0)
    );
end STRUCTURE;
