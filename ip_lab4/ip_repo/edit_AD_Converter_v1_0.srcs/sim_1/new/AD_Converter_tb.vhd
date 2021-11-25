library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

-- TESTBENCH

entity AD_Converter_tb is
end AD_Converter_tb;

architecture Behavioural of AD_Converter_tb is

signal clk: std_logic := '0';
signal resetn: std_logic := '0';
signal sclk: std_logic;
signal ncs: std_logic;
signal sdata1: std_logic := '0';
signal sdata2: std_logic := '0';
signal leds: std_logic_vector(7 downto 0);

component AD_Converter
port(
	clk: in std_logic;
	resetn: in std_logic;
	sclk: out std_logic;
	ncs: out std_logic;
	sdata1: in std_logic;
	sdata2: in std_logic;
	leds: out std_logic_vector(7 downto 0)
);
end component;

begin
	clk_process: process
	begin
		wait for 4.63 ns;
		clk <= not clk;
	end process;
	
	process
	begin
		wait for 40 ns;
		sdata1 <= not sdata1;
	end process;
	
	resetn <= '1';


converter_instance: AD_Converter
port map(
	clk => clk,
	resetn => resetn,
	sclk => sclk,
	ncs => ncs,
	sdata1 => sdata1,
	sdata2 => sdata2,
	leds => leds
);
end Behavioural;
