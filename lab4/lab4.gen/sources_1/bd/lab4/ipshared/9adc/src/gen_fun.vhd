-- lfsr 12 bits: x11 + x9 +1

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity gen_fun is
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
		gen_out: out std_logic_vector(11 downto 0)			-- output signal generated
);
end gen_fun;

architecture comportament of gen_fun is

component sin10K is
	port (
	aclk: IN std_logic;
	m_axis_data_tvalid : OUT STD_LOGIC;
	m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;

-- senyal de sortida del generador sinusidal
signal sin_out: std_logic_vector(11 downto 0);
-- comptador ascendent/descendet d'12 bits
signal count_12bits: std_logic_vector(11 downto 0);
-- senyals de control del comptador ascendent/descendent
signal up, down: std_logic;
-- senyal de realimentació per a l'lfsr
signal feedback_lfsr: std_logic;
-- senyal de sortida auxiliar
signal gen_out_int: std_logic_vector(11 downto 0);
-- senyal auxiliar per generar els senyals que depenen del comptador
signal triang_quadrada: std_logic_vector(11 downto 0);
-- senyal auxiliar pel generador sinusoidal
signal sine_int: std_logic_vector(15 downto 0);
-- senyal pel comptador que genera el dent de serra amb un període de 5 segons
signal count_sawtooth: std_logic_vector(30 downto 0);

begin
	
	-- bloc que genera el senyal sinusoidal
	sine_wave_bloc: sin10K
	port map(
				aclk => clk,
				m_axis_data_tdata => sine_int
	);
	
	-- compensació de l'amplitud del senyal sinusoidal
	sin_out <= sine_int(11 downto 0) + X"7FF";
	
	-- comptador ascendent/descendent per generar els senyals triangular, quadrat i de polsos
	count_11_bits_up_down: process(clk)
	begin
		if (clk'event and clk='1') then
			if (reset = '1') then
				count_12bits <= (others => '0');
			elsif (enable = '1') then
				if (up = '1') then
					count_12bits <= count_12bits + 1;
				elsif (down = '1') then
					count_12bits <= count_12bits - 1;
				end if;
			end if;
		end if;
	end process;
	
	-- generació dels senyals de control del comptador
	gen_up_down: process(clk)
	begin
		if (clk'event and clk = '1') then
		    if (reset = '1') then
		      up <= '1';
		      down <= '0';
			elsif (count_12bits = "111111111110") then
				up <= '0';
				down <= '1';
			elsif ((count_12bits = "000000000001") or (reset = '1')) then
				up <= '1';
				down <= '0';
			end if;
		end if;
	end process;
	
	triang_quadrada <=		count_12bits when select_in = "11"
							else (others => '1') when (select_in= "10") and (up = '1')
							else (others => '0') when (select_in= "10") and (down = '1')
							else (others => '0');


	-- generació del senyal en dent de serra amb període de 10 segons
	gen_sawtooth_10_seconds: process(clk)
	begin
		if (clk'event and clk = '1') then
			if (reset = '1') then
				count_sawtooth <= (others => '0');
			elsif (enable = '1') then 
				count_sawtooth <= count_sawtooth + 1;
			end if;
		end if;
	end process;

	
	-- senyal de sortida auxiliar
	gen_out_int <=	count_sawtooth(30 downto 19) when (select_in = "00")
					else sin_out when (select_in = "01")
					else triang_quadrada;
	
	-- senyal de sortida registrat
	reg_out: process(clk)
	begin
		if (clk'event and clk = '1') then
			if (reset = '1') then
				gen_out <= (others => '0');
			else
				gen_out <= gen_out_int;
			end if;
		end if;
	end process;

end comportament;