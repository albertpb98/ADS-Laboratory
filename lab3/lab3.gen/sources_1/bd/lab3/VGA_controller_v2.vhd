----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Xavier Manyosa and Albert Poblador
-- 
-- Create Date: 10/20/2021 04:57:40 PM
-- Design Name: VGA Controller
-- Module Name: VGA_Controller - Behavioral
-- Project Name: lab3
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA_controller_v2 is
--  Port ( );
port(
mode: in std_logic; -- image selector
clk: in std_logic; -- clock
resetn: in std_logic; -- active low
vsync: out std_logic; -- vertical sync
hsync: out std_logic; -- horizontal sync
red: out std_logic_vector(3 downto 0); -- red color
green: out std_logic_vector(3 downto 0); -- green color
blue: out std_logic_vector(3 downto 0) -- blue color
);
end VGA_controller_v2;

architecture Behavioral of VGA_controller_v2 is

-- Horizontal Constants
constant H_PIXEL_ACTIVE : integer := 1280; --  Horizontal Active Pixels
constant H_PORCH_BACK : integer := 248; -- Horizontal Back Porch
constant H_PORCH_FRONT : integer := 48; -- Horizontal Front Porch
constant H_RETRACE : integer := 112;  -- Horizontal retrace
constant H_TOTAL_BITS : integer := 1688; -- Total bits horizontal signal
-- Vertical Constants
constant V_LINES_ACTIVE : integer := 1024; --  Vertical Active Lines
constant V_PORCH_BACK : integer := 38; -- Vertical Back Porch
constant V_PORCH_FRONT : integer := 1; -- Vertical Front Porch
constant V_RETRACE : integer := 3;  -- Vertical retrace
constant V_TOTAL_BITS : integer := 1066 ; -- Total bits vertical signal

-- Signals

signal pixel_count : std_logic_vector(10 downto 0);
signal line_count : std_logic_vector(10 downto 0); 

begin
    
    VGA_process: process(clk)
        begin
        if (clk'event and clk='1') then -- In order to sync the actions to the rising edge
            if (resetn = '0') then --We restart
            
                pixel_count <= "00000000001";
                line_count <= "00000000001";
                red <= "0000";
                green <= "0000";
                blue <= "0000";
                vsync <= '0';
                hsync <= '0';
     
            elsif (resetn='1') then  
                if (pixel_count < H_TOTAL_BITS) then
                pixel_count <= pixel_count+1;
                end if;
                if (pixel_count >= H_TOTAL_BITS) then
                    pixel_count <= "00000000001";
                    if (line_count < V_TOTAL_BITS) then
                        line_count <= line_count + 1;
                    else
                        line_count <= "00000000001";
                    end if;
                end if;
                if (line_count > V_RETRACE) then
                    vsync <= '1';
                end if;
                if (line_count <= V_RETRACE) then
                    vsync <= '0';
                end if;
                if (line_count > (V_RETRACE + V_PORCH_BACK) and line_count <= (V_TOTAL_BITS - V_PORCH_FRONT) and pixel_count > (H_RETRACE + H_PORCH_BACK) and pixel_count <= (H_TOTAL_BITS - H_PORCH_FRONT)) then
                    if mode = '0' then 
                        red <= '0' & pixel_count(10 downto 8);
                        green <= pixel_count(7 downto 4);
                        blue <= pixel_count(3 downto 0);
                    else 
                        if line_count < 382 then 
                            red <= "1111";
                            green <= "0000";
                            blue <= "0000";
                        elsif line_count < 724 then 
                            red <= "0000";
                            green <= "1111";
                            blue <= "0000";
                        else
                            red <= "0000";
                            green <= "0000";
                            blue <= "1111";
                        end if;
                    end if;
                
                else
                    red <= "0000";
                    green <= "0000";
                    blue <= "0000";  
                 end if;
            end if; 
       end if; 
end process;

end Behavioral;