----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:36 08/02/2020 
-- Design Name: 
-- Module Name:    sumador4b_alto_nivel - Behavioral 
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

entity sumador4b_alto_nivel is
    Port ( Ent1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Ent2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC;
           Resultado : out  STD_LOGIC_VECTOR (3 downto 0));
end sumador4b_alto_nivel;

architecture Behavioral of sumador4b_alto_nivel is

	COMPONENT sumador_medio
		PORT(
			A : IN std_logic;
			B : IN std_logic;          
			Cout : OUT std_logic;
			suma : OUT std_logic
			);
	END COMPONENT;
	
	COMPONENT sumador_completo
	PORT(
		Cin : IN std_logic;
		A : IN std_logic;
		B : IN std_logic;          
		Cout : OUT std_logic;
		Suma : OUT std_logic
		);
	END COMPONENT;

	signal C1, C2, C3 : STD_LOGIC;
	
begin

	Inst_sumador_medio: sumador_medio PORT MAP(
		A => Ent1(0),
		B => Ent2(0),
		Cout => C1,
		suma => Resultado(0)
	);
	
	
	Inst_sumador_completo1: sumador_completo PORT MAP(
		Cin => C1,
		A => Ent1(1),
		B => Ent2(1),
		Cout => C2,
		suma => Resultado(1)
	);
	
		Inst_sumador_completo2: sumador_completo PORT MAP(
		Cin => C2,
		A => Ent1(2),
		B => Ent2(2),
		Cout => C3,
		suma => Resultado(2)
	);

	Inst_sumador_completo3: sumador_completo PORT MAP(
		Cin => C3,
		A => Ent1(3),
		B => Ent2(3),
		Cout => Carry,
		suma => Resultado(3)
	);


end Behavioral;

