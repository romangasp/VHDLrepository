----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:49:48 08/22/2020 
-- Design Name: 
-- Module Name:    muxGenerico - Behavioral 
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
------------------------------------------------
entity muxGenerico is
		generic(N : positive := 2);
		port(	i_i   : in std_logic_vector(2**N-1 downto 0);
				sel_i : in std_logic_vector(N-1 downto 0);
				ena_i : in std_logic;
				y_o   : out std_logic);
				
end muxGenerico;
------------------------------------------------

architecture Behavioral of muxGenerico is

begin
				y_o <= i_i(to_integer(unsigned(sel_i))) and ena_i = '1';
				
end Behavioral;

