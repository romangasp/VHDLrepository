--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:05:35 08/10/2020
-- Design Name:   
-- Module Name:   C:/Users/Roman Gasparini/Documents/xilink/projectsVhdl/memoria_ram/sim1.vhd
-- Project Name:  memoria_ram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM1
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
 
ENTITY sim1 IS
END sim1;
 
ARCHITECTURE behavior OF sim1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM1
    PORT(
         clk : IN  std_logic;
         WR : IN  std_logic;
         address : IN  std_logic_vector(3 downto 0);
         data_in : IN  std_logic_vector(7 downto 0);
         data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal WR : std_logic := '0';
   signal address : std_logic_vector(3 downto 0) := (others => '0');
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM1 PORT MAP (
          clk => clk,
          WR => WR,
          address => address,
          data_in => data_in,
          data_out => data_out
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

      --wait for clk_period*10;
		
		WR <= '1';
		address <= "1001";
		data_in <= "11110000";
		
		wait for clk_period;
		
		WR <= '1';
		address <= "0110";
		data_in <= "00001111";
		
		wait for clk_period;
      
		WR <= '0';
		address <= "1001";
		
		wait for clk_period*3;
		
		WR <= '0';
		address <= "0110";
		
		wait for clk_period*3;
		
		WR <= '0';
		address <= "1111";
		
		wait for clk_period*3;
		-- insert stimulus here 

      wait;
   end process;

END;
