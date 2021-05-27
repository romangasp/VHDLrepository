----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:13:19 08/04/2020 
-- Design Name: 
-- Module Name:    ffd - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ffd is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           J,K : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end ffd;

architecture Behavioral of ffd is

signal D_bus, Q_bus: std_logic;
signal JK : std_logic_vector(1 downto 0);

begin

process (clk, reset)
begin
      if clk'event and clk='1' then 
			if reset='1' then 		
				Q_bus <= '0';
			else
				Q_bus <= D_bus;
			end if;
		end if;
		
end process;

--Logica del estado siguiente
	JK <= J & K;

	with JK select
      D_bus <= Q_bus  when "00",
               '0' when "01",
					'1' when "10",
					not Q_bus when others;


--Logica de salida

	Q <= Q_bus;
end Behavioral;

