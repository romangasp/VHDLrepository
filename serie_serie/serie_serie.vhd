
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity serie_serie is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR(3 downto 0));
end serie_serie;

architecture Behavioral of serie_serie is

signal D_bus,Q_bus : std_logic_vector(3 downto 0):=(others => '0');

begin

--Registro de estado


process (clk)
begin
   if clk'event and clk='1' then 
		if reset='1' then   
         Q_bus <= (others => '0');
      else
         Q_bus <= D_bus;
      end if;
   end if;
end process;
 
--Logica del estado siguiente
	--D_bus <= Q_bus + '1'; para contador ascendente 
	
	
   D_bus <= (others => '0') when Q_bus = "1010" else
             Q_bus + '1';
			
--Logica de salida
	salida <= Q_bus;
	
end Behavioral;

