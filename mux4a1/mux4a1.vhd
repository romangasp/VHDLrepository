----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:48:22 08/03/2020 
-- Design Name: 
-- Module Name:    mux4a1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4a1 is
    Port ( E1 : in  STD_LOGIC;
           E2 : in  STD_LOGIC;
           E3 : in  STD_LOGIC;
           E4 : in  STD_LOGIC;
           seleccion : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC);
end mux4a1;

architecture Behavioral of mux4a1 is

begin


process (E1,E2,E3,E4,seleccion)
begin
  

   case seleccion is 
      when "00" =>
         salida <= E1;
      when "01" =>
         salida <= E2;
      when "10" =>
         salida <= E3;
      when others =>
         salida <= E4;
			
		
end process;
			

end Behavioral;

