library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity AD_Converter is
port ( 
    clk : in std_logic; 
    resetn : in std_logic; 
    sdata1 : in std_logic; 
    sdata2 : in std_logic;
    ncs : out std_logic; 
    sclk : out std_logic;  
    leds : out std_logic_vector(7 downto 0) 
);
end AD_Converter;

architecture Behavioral of AD_Converter is

signal int_sclk : std_logic; 
signal int_ncs : std_logic; 
signal count_clk : integer range 0 to 10; -- podriem fer de 0 a 5 no?
signal count_ncs : integer range 0  to 200; -- 
signal enable : std_logic; 
signal data : std_logic_vector(11 downto 0); 
signal int_leds : std_logic_vector(7 downto 0);
begin
    sclk_process: process(resetn,clk)
    begin 
        if (resetn = '0') then 
            int_sclk <= '1';
            int_ncs <= '1';
            count_clk <= 0;
            count_ncs <= 0;
            enable <= '1';
            
            data <= (others=>'0');
        

        elsif clk'event and clk='1' then
  


-- NCS CODE	EL CS baixa quan el count és 1 no 0!!!!!!???? seguim complint el t2 així que chill, i són dos periodes :D

            if (count_ncs = 0) then
                count_ncs <= count_ncs+1;
            elsif (count_ncs < 98 and count_ncs > 0) then -- per a que al principi, per a que abans de que baixi el sclk ja es posi a 0 I comenci a comptar
                count_ncs <= count_ncs + 1;
                int_ncs <= '0'; -- To bring it down after the reset when count_ncs es posa a 1
            elsif (count_ncs < 100) then  --(16*6+6)-1(perquè comença en 0?) -
				count_ncs <= count_ncs + 1;
                int_ncs <= '1';
                
            

            else
                count_ncs <= 0; 
            end if;
            


 -- SCLK CODE 
            if(count_ncs>0 and count_ncs<97) then
                if (count_clk = 2) then -- Després de dos periodes, me'l baixes (Durant dos dels quals el NCS está abaix)
                    int_sclk <= not(int_sclk); 	-- down
                    count_clk <= count_clk + 1; 	-- i sumo clk
                    if (enable='0') then -- Si no m'equivoco,podem truer el int_ncs='0', perquè traiem aquesta vaina fora :D
                        data(11 downto 1) <= data(10 downto 0); -- desplaço data
                        data(0) <= sdata1; -- llegeixo data
                    end if;
            

                elsif (count_clk = 5) then 
                    int_sclk <= not(int_sclk); -- Rising edge at 5 and reset if the count sclk 
                    count_clk <= 0;
                else
                    count_clk <= count_clk + 1; -- If not rising edge nor falling we also add 1 to count clk
                end if;
            else
            count_clk <= 0;
            end if;
       
       
        -- ENABLE
		if (count_ncs >= 100) then 
                enable <= '1';
                int_leds <= data(11 downto 4);
             

        else 
               enable <= '0';
        end if;
       end if;
    end process;
    

            leds<=int_leds; 
            ncs<=int_ncs;
            sclk<=int_sclk;    
    end Behavioral;