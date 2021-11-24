----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Xavier Manyosa and Albert Poblador
-- 
-- Create Date: 10/20/2021 04:57:40 PM
-- Design Name: VGA Controller
-- Module Name: VGA_Controller - Behavioral
-- Project Name: lab3
-- Description: VHDL base code to set the required timings and functions to make the VGA
-- work, and to set two different display modes. One with vertical stripes and one with 
--horizontal ones
--
-- Revision: 0.03
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

entity VGA_Controller is
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
end VGA_Controller;

architecture Behavioral of VGA_Controller is

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

signal pixel_count : std_logic_vector(10 downto 0); -- Counter to keep track of the pixels
signal line_count : std_logic_vector(10 downto 0); -- Counter to keep track of the lines

begin
    
    VGA_process: process(clk)
        begin
        if (clk'event and clk='1') then -- In order to sync the actions to the rising edge
            if (resetn = '0') then --We restart
            	
		-- restart procedure
                pixel_count <= "00000000001";
                line_count <= "00000000001";
                red <= "0000";
                green <= "0000";
                blue <= "0000";
                vsync <= '0';
                hsync <= '0';
     
            elsif (resetn='1') then  
                if (pixel_count < H_TOTAL_BITS) then -- If we have not finished all the pixels we go for the next one
                    pixel_count <= pixel_count+1;
				else --If  we have finished all pixels, return to the first one
                    pixel_count <= "00000000001";
                    if (line_count < V_TOTAL_BITS) then --If we finished all pixel, but not lines, we advance a line
                        line_count <= line_count + 1;
                    else				--If all lines have been finished, return to the first one
                        line_count <= "00000000001";
                    end if;
                end if;
                if (line_count > V_RETRACE) then	--If the line count is bigger than the V_retrace, the sync is "on", If not, it is set to 0
                    vsync <= '1';
                else  -- Read previous comment
                    vsync <= '0';
                end if;
                if (pixel_count > H_RETRACE) then	--If the line count is bigger than the V_retrace, the sync is "on", If not, it is set to 0
                    hsync <= '1';
                else  -- Read previous comment
                    hsync <= '0';
                end if;
                if (line_count > (V_RETRACE + V_PORCH_BACK) and line_count <= (V_TOTAL_BITS - V_PORCH_FRONT) and pixel_count > (H_RETRACE + H_PORCH_BACK) and pixel_count <= (H_TOTAL_BITS - H_PORCH_FRONT)) then
			--If we are in the active area of the lines and pixels:
                    if mode = '0' then  -- If mode = 0
                        red <= '0' & pixel_count(10 downto 8); -- Red gets assigned the heavy bits of the pixel count
                        green <= pixel_count(7 downto 4); -- Green gets assigned the  middle bits of the pixel count
                        blue <= pixel_count(3 downto 0); -- blu gets assigned the smallest bits of the pixel count 
                    else 		--If mode equals 1
                        if line_count < 382 then --In function of the line count, we set different values for red, green and blue
                            red <= "1111";
                            green <= "0000";
                            blue <= "0000";
                        elsif line_count < 724 then --In function of the line count, we set different values for red, green and blue
                            red <= "0000";
                            green <= "1111";
                            blue <= "0000";
                        else		--In function of the line count, we set different values for red, green and blue
                            red <= "0000";
                            green <= "0000";
                            blue <= "1111";
                        end if;
                    end if;
                
                else			-- If we are not in the active region, we set red, green and blue to 0
                    red <= "0000";
                    green <= "0000";
                    blue <= "0000";  
                 end if;
            end if; 
       end if; 
end process;

end Behavioral;