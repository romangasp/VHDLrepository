--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:44:21 08/03/2020
-- Design Name:   
-- Module Name:   C:/Users/Roman Gasparini/Documents/xilink/projectsVhdl/diseno1/pruebaProcess.vhd
-- Project Name:  diseno1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: diseno1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pruebaProcess IS
END pruebaProcess;
 
ARCHITECTURE behavior OF pruebaProcess IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT diseno1
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: diseno1 PORT MAP (
          a => a,
          b => b,
          y => y
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
			
				a <= "0011";
				b <= "0001";
				y <= a + b;
				wait for 100 ns;
				
				a <= "0011";
				b <= "0100";
				y <= a + b;
				wait for 100 ns;
				
				a <= "0011";
				b <= "0000";
				y <= a + b;				
				wait for 100 ns;
      wait;
   end process;

END;
