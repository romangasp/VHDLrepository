----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:49 08/10/2020 
-- Design Name: 
-- Module Name:    RAM1 - Behavioral 
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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM1 is
    Port ( clk : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           address : in  STD_LOGIC_VECTOR (3 downto 0);
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end RAM1;

architecture Behavioral of RAM1 is


type ram_type is array (15 downto 0) of std_logic_vector (7 downto 0);
signal myRam: ram_type;

begin


process (clk)
begin
   if (clk'event and clk = '1') then
         if (WR = '1') then
            myRam(conv_integer(address)) <= data_in;
         else
            data_out <= myRam(conv_integer(address));
         end if;
   end if;
end process;


end Behavioral;

