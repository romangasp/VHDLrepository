----------------------------------------------------------------------------------
-- Company: Roman Gasparini
-- Engineer: 
-- 
-- Create Date:    12:07:47 08/16/2020 
-- Design Name: And2- when-else
-- Module Name:    AND2 - Behavioral 
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

use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-------------------------------------------
entity AND2 is
    Port ( a_i : in  STD_LOGIC;
           b_i : in  STD_LOGIC;
           y_o : in  STD_LOGIC);
end AND2;
-------------------------------------------

--architecture Behavioral of AND2 is
-- begin
--	y_o <= a_i when b_i='1' else
--			 '0';
--
--end Behavioral;

--architecture Behavioral of AND2 is
--signal sel : std_logic_vector(1 downto 0);
-- begin
--	
--	sel <= m & n;
--	
--	
--   with sel select
--      y_o <= a_i when "11",
--                '0' when others;
--	
--
--end Behavioral;

architecture Behavioral of AND2 is

signal entradas : std_logic_vector(1 downto 0);
constant COLUMNA :	std_logic_vector(0 to 3) := "0001";
begin

	entradas <= b_i & a_i;
	y_o 		<= COLUMNA(to_integer(unsigned(entradas)));


end Behavioral;