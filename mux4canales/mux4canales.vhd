----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:40 08/17/2020 
-- Design Name: 
-- Module Name:    mux4canales - Behavioral 
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

entity mux4canales is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC ; );
end mux4canales;

architecture Behavioral of mux4canales is

begin


		with sel select
			Y  <=   A(0) when "00",
                 A(1) when "01",
					  A(2) when "10",
					  A(3) when "11",
                 '0' when others;

end Behavioral;

