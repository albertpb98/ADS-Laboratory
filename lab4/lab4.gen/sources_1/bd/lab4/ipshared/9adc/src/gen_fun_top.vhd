library ieee;
use ieee.std_logic_1164.all;

entity gen_fun_top is
port(
		clk: in std_logic;                                -- clock input, 100 MHz
		reset: in std_logic;                              -- reset input
		enable: in std_logic;                             -- enable input
		select_in: in std_logic_vector(1 downto 0);       -- inputs that select the type of waveform to be generated
														  -- from most to least significant bit, the output waveform
														  -- generated will be:
														  --    sawtooth with a period of 5 seconds
														  --	sine
														  --	triangular
														  --	square
														  --	pulses (50 clock cycles high)
														  --	lfsr
		clk_out: out std_logic;                           -- clock signal for the DAC
		nsync: out std_logic;                             -- Chip select for the DAC
		D1: out std_logic;                                -- First serial data line for the DAC
		D2: out std_logic                                 -- Second serail data line for the DAC
);
end gen_fun_top;

architecture estructural of gen_fun_top is

component gen_fun
port(
		clk: in std_logic;									-- clock input, 100 MHz
		enable: in std_logic;								-- enable input
		reset: in std_logic;								-- reset input
		select_in: in std_logic_vector(1 downto 0); 		-- inputs that select the type of waveform to be generated
															-- from most to least significant bit, the output waveform
															-- generated will be:
															--  sawtooth with a period of 5 seconds 
															--	sine
															--	triangular
															--	square
															--	pulses (50 clock cycles high)
															--	lfsr
		gen_out: out std_logic_vector(11 downto 0)			-- output signal generated
);
end component;

component DA2
  Port ( 
          
     --General usage
       CLK      : in std_logic;    -- System Clock (50 MHz)     
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
end component;


-- output from the function generator unit
signal gen_out: std_logic_vector(11 downto 0);
-- senyal per sincronitzar el senyal d'habilitació
signal enable_sinc: std_logic_vector(1 downto 0);
-- senyal per sincronitzar el senyal de reset
signal reset_sinc: std_logic_vector(2 downto 0);
attribute ASYNC_REG : string;
-- assignment of the attribute to the synchronizing registers
attribute ASYNC_REG of reset_sinc: signal is "TRUE";
attribute ASYNC_REG of enable_sinc: signal is "TRUE";
-- signal that is activated for one clock cycle whenever there is a rising edge on the reset input
signal reset_rising: std_logic;


begin

	-- generació del senyal d'habilitació intern
	enable_sinc_gen: process(clk)
	begin
		if (clk'event and clk = '1') then
			enable_sinc <= enable_sinc(0)&enable;
		end if;
	end process;
	
	-- generació del senyal de reset intern
	reset_sinc_gen: process(clk)
	begin
		if (clk'event and clk='1') then
			reset_sinc <= reset_sinc(1 downto 0)&reset;
		end if;
	end process;
	
	reset_rising <=	'1' when reset_sinc(2 downto 1) = "01"
					else '0';
	
	-- instanciació del bloc generador de funcions
	gen_fun_bloc: gen_fun
	port map(
				clk => clk,
				enable => enable_sinc(1),
				reset => reset_rising,
				select_in => select_in,
				gen_out => gen_out
	);
	
	-- instanciació del bloc convertidor D/A
	da_control_unit: DA2
	port map(
				CLK => clk,
				RST => reset_rising,
				enable => enable_sinc(1),
				D1 => D1,
				D2 => D2,
				CLK_OUT => clk_out,
				nSYNC => nsync,
				DATA1 => gen_out,
				DATA2 => (others => '0')
	);

end estructural;

		