--------------------------------------------------------------------------------
--    DA1 Reference Component
--------------------------------------------------------------------------------
--    Author    :    Ioana Dabacan
--    CopyRight 2008 Digilent Ro.
--------------------------------------------------------------------------------
--    Desription : This file is the VHDL code for a DA1 controller.
--
--------------------------------------------------------------------------------
--    Revision History:
--    Feb/29/2008 (Created)    Ioana Dabacan
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


--------------------------------------------------------------------------------
--
-- Title      : DA1 Reference Component
--
-- Inputs     : 5
-- Outputs    : 5
--
-- Description: This is the DA1 Reference Component entity. The input ports are 
--              a 50 MHz clock and and an asynchronous reset button along with
--              the data to be serially shifted in the 2 AD7303 chips on a DA1
--              Pmod on each clock cycle.There is also a signal to start a
--              conversion. 
--              The outputs of this entity are: a output clock signal, two serial
--              output signals D1 and D2, a sync signal to synchronize the data in
--              the AD7303 chip, a done signal to tell the user that the chip is 
--              done converting the data and another set of data can be sent.
-- 
---------------------------------------------------------------------------------

entity DA2 is
  Port ( 
          
     --General usage
       CLK      : in std_logic;    -- System Clock (100 MHz)     
       RST      : in std_logic;
	   enable	: in std_logic;
     
     --Pmod interface signals
       D1       : out std_logic;
       D2       : out std_logic;
       CLK_OUT  : out std_logic;
       nSYNC    : out std_logic;
        
     --User interface signals
       DATA1    : in std_logic_vector(11 downto 0);
       DATA2    : in std_logic_vector(11 downto 0)
              
        );
end DA2;

architecture comportament of DA2 is



--      control constant: Update DAC A DAC register from shift register.Both
--          DACs active.Internal reference.
          constant control     : std_logic_vector(3 downto 0) := "0000";
------------------------------------------------------------------------------------
--    Title      : signal assignments
--
-- Description: The following signals are enumerated signals for the 
--              finite state machine,2 temporary vectors to be shifted out to the 
--              AD7303 chips, a divided clock signal to drive the AD7303 chips,
--              a counter to divide the internal 50 MHz clock signal,
--              a 4-bit counter to be used to shift out the 16-bit register,
--              and 2 enable signals for the paralel load and shift of the 
--              shift register.
-- 
------------------------------------------------------------------------------------ 

          type states is (Idle, ShiftOut, SyncData);
                 
          signal current_state : states;
          signal next_state : states;
          signal temp1         : std_logic_vector(15 downto 0);
          signal temp2         : std_logic_vector(15 downto 0);           
          signal clk_counter   : std_logic_vector(1 downto 0);    
          signal shiftCounter  : std_logic_vector(3 downto 0); 
          signal enShiftCounter: std_logic;
		  signal enParalelLoad : std_logic;
		  -- senyal d'habilitació del sistema (freqüència de rellotge dividida per 4)
		  signal enable_div_4: std_logic;

begin


------------------------------------------------------------------------------------
--
-- Title      : Clock Divider
--
-- Description: The following process takes a 50 MHz clock and divides it down to a
--             12 MHz clock signal by assigning the signals clk_out and clk_div 
--                   to the 2nd bit of the clk_counter vector. clk_div is used by
--             the Finite State Machine and clk_out is used by the AD7303 chips.
--
------------------------------------------------------------------------------------



	-- comptador utilitzat per dividir freqüència
	clock_divide: process(clk)
	begin
		if (clk'event and clk= '1') then
			if (RST = '1') then
				clk_counter <= (others => '0');
			elsif (enable = '1') then
				clk_counter <= clk_counter + 1;
			end if;
		end if;
	end process;
	
	-- generació dels senyal d'habilitació del sistema (freqüència de rellotge dividida per 4)
	enable_div_4 <=	'1' when (clk_counter = "11")
						else '0';

	-- generació del senyal de rellotge pel DAC
	gen_clk_out: process(clk)
	begin
		if (clk'event and clk = '1') then
			if (RST = '1' or clk_counter = "10") then
				clk_out <= '0';
			elsif (clk_counter = "00") then
				clk_out <= '1';
			end if;
		end if;
	end process;


	-- procés que genera els senyals de sortida cap al DAC
	shift_out_bloc: process(clk)
	begin
		if (clk'event and clk = '1') then
			if (RST = '1') then
				shiftCounter <= "0000";
				temp1 <= (others => '0');
				temp2 <= (others => '0');
			elsif (enable_div_4 = '1') then
				if (enParalelLoad = '1') then
					shiftCounter <= "0000";
					temp1 <= control & DATA1;
					temp2 <= control & DATA2;
				elsif (enShiftCounter = '1') then
					temp1 <= temp1(14 downto 0)&temp1(15);
					temp2 <= temp2(14 downto 0)&temp2(15);
					shiftCounter <= shiftCounter + 1;
				end if;
			end if;
		end if;
	end process;
				
	-- generació de les sortides cap al DAC
    D1 <= temp1(15);                             
    D2 <= temp2(15);

        
---------------------------------------------------------------------------------
--
-- Title      : Finite State Machine
--
-- Description: This 3 processes represent the FSM that contains three states. The first 
--              state is the Idle state in which a temporary registers are 
--              assigned the updated value of the input "DATA1" and "DATA2". The next state 
--              is the ShiftOut state which is the state where the 16-bits of 
--              temporary registers are shifted out left from the MSB to the two serial outputs,
--              D1 and D2. Immediately following the second state is the third 
--              state SyncData. This state drives the output signal sync high for
--              2 clock signals telling the AD7303 to latch the 16-bit data it 
--              just recieved in the previous state. 
-- Notes:         The data will change on the lower edge of the clock signal. Their 
--                is also an asynchronous reset that will reset all signals to their 
--                original state.
--
-----------------------------------------------------------------------------------        
        
-----------------------------------------------------------------------------------
--
-- Title      : SYNC_PROC
--
-- Description: This is the process were the states are changed synchronously. At 
--              reset the current state becomes Idle state.
--    
-----------------------------------------------------------------------------------            
SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (RST = '1') then
            current_state <= Idle;
         elsif (enable_div_4 = '1') then
            current_state <= next_state;
         end if;        
      end if;
   end process;
    
-----------------------------------------------------------------------------------
--
-- Title      : OUTPUT_DECODE
--
-- Description: This is the process were the output signals are generated
--              unsynchronously based on the state only (Moore State Machine).
--    
-----------------------------------------------------------------------------------        
OUTPUT_DECODE: process (current_state)
   begin
      if current_state = Idle then
            enShiftCounter <='0';
            nSYNC <='1';
            enParalelLoad <= '1';
        elsif current_state = ShiftOut then
            enShiftCounter <='1';
            nSYNC <='0';
            enParalelLoad <= '0';
        else
            enShiftCounter <='0';
            nSYNC <='1';
            enParalelLoad <= '0';
        end if;
   end process;
    
-----------------------------------------------------------------------------------
--
-- Title      : NEXT_STATE_DECODE
--
-- Description: This is the process were the next state logic is generated 
--              depending on the current state and the input signals.
--    
-----------------------------------------------------------------------------------    
    NEXT_STATE_DECODE: process (current_state, shiftCounter)
   begin
      
      next_state <= current_state;  --default is to stay in current state
     
      case (current_state) is
         when Idle =>
               next_state <= ShiftOut;
         when ShiftOut =>
            if shiftCounter = x"F" then
               next_state <= SyncData;
            end if;
         when SyncData =>
            next_state <= Idle;
         when others =>
            next_state <= Idle;
      end case;      
   end process;
    
end comportament;
            
          
