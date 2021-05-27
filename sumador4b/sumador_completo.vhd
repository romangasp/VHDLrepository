----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:14:00 08/01/2020 
-- Design Name: 
-- Module Name:    sumador_completo - Behavioral 
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

entity sumador_completo is
    Port ( Cin : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Suma : out  STD_LOGIC);
end sumador_completo;

architecture Behavioral of sumador_completo is

begin
	Cout <= (A and B) or ((A xor B) and Cin);
	Suma <= (A xor B) xor Cin;

end Behavioral;

