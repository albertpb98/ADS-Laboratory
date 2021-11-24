library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity count_28 is
port(
		clk: in std_logic; 							-- clock input, active by rising edge
		resetn: in std_logic; 						-- synchronous reset input, active low
		enable: in std_logic; 						-- enable input, active high
		output: out std_logic_vector(3 downto 0) 	-- 4 most significant bits of the counter
);
end count_28;


architecture comportament of count_28 is

signal count_28: std_logic_vector(27 downto 0);

begin

	count_process: process(clk)
	begin
		if (clk'event and clk= '1') then
			if (resetn = '0') then
				count_28 <= (others => '0');
			elsif (enable = '1') then
				count_28 <= count_28 + 1;
			end if;
		end if;
	end process;
	
	output <= count_28(27 downto 24);
	
end comportament;
