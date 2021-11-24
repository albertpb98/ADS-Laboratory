library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity VGA_Controller_tb is

end VGA_Controller_tb;


architecture behaviour of VGA_Controller_tb is


signal clk: std_logic:= '0'; 
signal mode: std_logic:= '0'; 
signal resetn: std_logic:= '1'; 


signal red: std_logic_vector(3 downto 0);  
signal green: std_logic_vector(3 downto 0); 
signal blue: std_logic_vector(3 downto 0); 
signal hsync: std_logic; 
signal vsync: std_logic; 


component VGA_Controller
port(
mode: in std_logic; 
clk: in std_logic; 
resetn: in std_logic; 
vsync: out std_logic; 
hsync: out std_logic; 
red: out std_logic_vector(3 downto 0); 
green: out std_logic_vector(3 downto 0); 
blue: out std_logic_vector(3 downto 0) 
);
end component;

begin

    clk_process: process
	   begin
		  wait for 4630 ps;
		  clk <= not clk;
	   end process;
	   resetn <= '0' after 0 ns, '1' after 5 ms;
	   mode <= '1' after 5 ms, '0' after 50 ms; 
	
	vga_instance: VGA_Controller
	port map(
		vsync => vsync,
		red => red,
		green => green,
		blue => blue,
		clk => clk,
		resetn => resetn,
		mode => mode,
		hsync => hsync
	);
	
	
	

end behaviour;

