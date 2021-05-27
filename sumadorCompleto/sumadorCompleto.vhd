----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:05:14 09/04/2020 
-- Design Name: 
-- Module Name:    sumadorCompleto - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sumadorCompleto is
	 generic( positive: N:= 3);
    Port ( A_i : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B_i : in  STD_LOGIC_VECTOR (N-1 downto 0);
           s_o : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Ci_i : in  STD_LOGIC_VECTOR(0 downto 0);
           Co_o : in  STD_LOGIC(0 downto 0));
end sumadorCompleto;

architecture Behavioral of sumadorCompleto is
	signal s_aux: std_logic_vector(N downto 0);
begin
			
			s_aux <= '0' & unsigned(A_i) + unsigned(B_i)+ unsigned(Ci_i);
			s_o <= std_logic_vector(s_aux(N-1 downto 0));
			Co_o <= s_aux(N);

end Behavioral;

