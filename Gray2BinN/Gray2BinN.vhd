----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:51:51 08/22/2020 
-- Design Name: 
-- Module Name:    Gray2BinN - Behavioral 
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

entity Gray2BinN is
		generic(N : integer :=4);
		port(g_i : in  std_logic_vector(N-1 downto 0);
			  b_o : out std_logic_vector(N-1 downto 0)
		);

end Gray2BinN;
		
architecture Behavioral of Gray2BinN is
		signal baux : std_logic_vector(N-1 downto 0);
begin
		baux(N-1) <= g_i(N-1);
		baux(N-2 downto 0) <= baux(N-1 downto 1) xor g_i(N-2 downto 0);
		
		b_o <= baux;

end Behavioral;

