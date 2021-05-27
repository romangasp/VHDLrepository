----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:59 07/28/2020 
-- Design Name: 
-- Module Name:    holaMundo - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity circuito1 is
	Port ( a : in STD_LOGIC;
			 b : in STD_LOGIC;
			 f 	 : out STD_LOGIC);
end circuito1;

architecture Behavioral of circuito1 is
signal auxiliar1 : std_logic;

begin

auxiliar1 <= a or b;
f <= auxiliar1 and b;

end Behavioral;

-- with select

with variable_seleccion select
salida <= valor1 when valor_variable1,
			 valor2 when valor_variable2,
			 valor3 when others;
			 

--ALU

			 entity ALU is
	Port ( SEL : in STD_LOGIC_VECTOR(1 downto 0);
			 ent_1 : in STD_LOGIC(1 downto 0);
			 ent_2 : out STD_LOGIC(1 downto 0);
			 salida	: STD_LOGIC_VECTOR(1 downto 0);
end ALU;


architecture Behavorial of ALU is

begin 

with SEL select 
	
	salida <= ent_1 + ent_2 when "00",
				 ent_1 - ent_2 when "01",
				 ent_1 or ent_2 when "11",
				 ent_1 and ent_2 when others;
end Behavioral;


