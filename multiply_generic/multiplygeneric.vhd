----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:14 09/05/2020 
-- Design Name: 
-- Module Name:    multiplygeneric - Behavioral 
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

entity multiplygeneric is
			
			generic( N : positive := 3);
		PORT( a_i : in std_logic_vector(N-1 downto 0);
				b_i : in std_logic_vector(N-1 downto 0);
				m_i : out std_logic_vector(N*2-1 downto 0)
		);
end multiplygeneric;
		 

architecture Behavioral of multiplygeneric is

begin			

			m_i <= std_logic_vector(signed(a_i) * signed(b_i));

end Behavioral;

