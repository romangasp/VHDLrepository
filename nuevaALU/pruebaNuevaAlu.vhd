--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:16:04 08/01/2020
-- Design Name:   
-- Module Name:   C:/Users/Roman Gasparini/Documents/xilink/projectsVhdl/nuevaALU/pruebaNuevaAlu.vhd
-- Project Name:  nuevaALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nuevaALU
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pruebaNuevaAlu IS
END pruebaNuevaAlu;
 
ARCHITECTURE behavior OF pruebaNuevaAlu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nuevaALU
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         operacion : IN  std_logic_vector(1 downto 0);
         resultado : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal operacion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal resultado : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nuevaALU PORT MAP (
          A => A,
          B => B,
          operacion => operacion,
          resultado => resultado
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
		A <= X"07";
		B <= X"02";
		operacion <= "00";
		wait for 100ns;
		
		A <= X"07";
		B <= X"02";
		operacion <= "01";
		wait for 100ns; 
		
		A <= X"07";
		B <= X"02";
		operacion <= "10";
		wait for 100ns; 
		
		A <= X"07";
		B <= X"02";
		operacion <= "11";
		wait for 100ns; 
      wait;
   end process;

END;
