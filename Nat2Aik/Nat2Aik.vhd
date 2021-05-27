----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:12:03 08/20/2020 
-- Design Name: 
-- Module Name:    Nat2Aik - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--entity Nat2Aik is
--		--Port ( n_i : in  STD_LOGIC_VECTOR (3 downto 0);
--      --   a_o : out  STD_LOGIC_VECTOR (3 downto 0));
--		end Nat2Aik;

--architecture WhenElse of Nat2Aik is
--
--begin
--			a_o <= n_i when unsigned(n_i) < 5 
--						  else std_logic_vector(unsigned(n_i) + 6);
--
--end WhenElse;
	
	
	entity comparator is
	generic(N : positive :=4);
		Port( a_i : in std_logic_vector(N-1 downto 0);
				b_i : in std_logic_vector(N-1 downto 0);
				may_o : out std_logic;
				men_o : out std_logic;
				igu_o : out std_logic);
		end comparator;

architecture WhenElse of comparator is
			begin 
			may_o <= '1' when signed(a_i) > signed(b_i) else
						'0';
			men_o <= '1' when signed(a_i) < signed(b_i) else
						'0';	
			igu_o <= '1' when signed(a_i) = signed(b_i) else
						'0';

end architecture WhenElse;


