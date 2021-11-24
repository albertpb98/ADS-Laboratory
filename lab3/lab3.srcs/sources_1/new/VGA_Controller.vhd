----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2021 04:57:40 PM
-- Design Name: 
-- Module Name: VGA_Controller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA_Controller is
--  Port ( );
port(
mode: in std_logic;
clk: in std_logic;
resetn: in std_logic; -- active low
vsync: out std_logic;
hsync: out std_logic;
red: out std_logic_vector(3 downto 0);
green: out std_logic_vector(3 downto 0);
blue: out std_logic_vector(3 downto 0)
);
end VGA_Controller;

architecture Behavioral of VGA_Controller is

begin


end Behavioral;
