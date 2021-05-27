--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:20:48 08/12/2020
-- Design Name:   
-- Module Name:   C:/Users/Roman Gasparini/Documents/xilink/projectsVhdl/ejercicio_FSM/simFSM1.vhd
-- Project Name:  ejercicio_FSM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ejercicio_FSM
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
 
ENTITY simFSM1 IS
END simFSM1;
 
ARCHITECTURE behavior OF simFSM1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ejercicio_FSM
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sm : IN  std_logic;
         sf : IN  std_logic;
         E : OUT  std_logic;
         P : OUT  std_logic;
         A : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sm : std_logic := '0';
   signal sf : std_logic := '0';

 	--Outputs
   signal E : std_logic;
   signal P : std_logic;
   signal A : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ejercicio_FSM PORT MAP (
          clk => clk,
          reset => reset,
          sm => sm,
          sf => sf,
          E => E,
          P => P,
          A => A
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		reset <= '1';
      wait for clk_period;
		
		reset <= '0';
      wait for clk_period;
		
		sf <=  '1';
		sm <=  '1';
		wait for clk_period*4;
		
		sf <= '0';
		sm <= '0';
		wait for clk_period*4;
		
		sf <= '1';
		sm <= '0';
		wait for clk_period*4;

		reset <= '1';
      wait for clk_period;
		
		reset <= '0';
      wait for clk_period;
      -- insert stimulus here 

      wait;
   end process;

END;
