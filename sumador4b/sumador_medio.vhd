----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:45:20 07/31/2020 
-- Design Name: 
-- Module Name:    sumador_medio - Behavioral 
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

entity sumador_medio is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           suma : out  STD_LOGIC);
end sumador_medio;

architecture Behavioral of sumador_medio is

begin

Cout<= A and B;
suma <= A xor B;

end Behavioral;

