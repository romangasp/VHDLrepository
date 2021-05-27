
library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ejercicio_FSM is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sm : in  STD_LOGIC;
           sf : in  STD_LOGIC;
           E : out  STD_LOGIC;
           P : out  STD_LOGIC;
           A : out  STD_LOGIC);
end ejercicio_FSM;

architecture Behavioral of ejercicio_FSM is
type my_states is (waiting, on_E,off_E,open_P, alarma); 
signal D_bus, Q_bus : my_states;
signal salidas : std_logic_vector(2 downto 0);

begin

----------- Registro de Estado
process (clk)
begin
   if clk'event and clk='1' then  
      if reset='1' then   
         Q_bus <= waiting;
      else
         Q_bus <= D_bus;
      end if;
   end if;
end process;
 
----------- Logica del estado siguiente


process (Q_bus,sm,sf)
begin
   
   case (Q_bus) is 
      when waiting =>
         if(sm and sf) = '1' then
			D_bus <= on_E;
			else
			D_bus <= waiting;
			end if;
			when on_E =>
				if(sm and sf) = '1' then
				D_bus <= on_E;
				elsif(sm = '0') then
				D_bus <= alarma;
				else 
				D_bus <= off_E;
				end if;
			when off_E =>
				if(sm and (not sf)) = '1' then
				D_bus <= off_E;
				elsif(sf = '1') then
				D_bus <= alarma;
				else
				D_bus <= open_P;
				end if;
			when open_P =>
				D_bus <= waiting;
			
			when alarma =>
				D_bus <=alarma;	
     when others =>
   
   end case;
				
	
end process;
			
-----logica de salida			
   with Q_bus select
      salidas <= "000" when waiting,
                 "100" when on_E,
					  "000" when off_E,
					  "010" when open_P,
					  "001" when alarma,
                "000" when others;
E <= salidas(2);
P <= salidas(1);
A <= salidas(0);
			
end Behavioral;

