--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: sumador_medio_synthesis.vhd
-- /___/   /\     Timestamp: Fri Jul 31 21:50:55 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm sumador_medio -w -dir netgen/synthesis -ofmt vhdl -sim sumador_medio.ngc sumador_medio_synthesis.vhd 
-- Device	: xc3s200-4-ft256
-- Input file	: sumador_medio.ngc
-- Output file	: C:\Users\Roman Gasparini\Documents\xilink\projectsVhdl\sumador4b\netgen\synthesis\sumador_medio_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: sumador_medio
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity sumador_medio is
  port (
    suma : out STD_LOGIC; 
    Cout : out STD_LOGIC; 
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X' 
  );
end sumador_medio;

architecture Structure of sumador_medio is
  signal A_IBUF_1 : STD_LOGIC; 
  signal B_IBUF_3 : STD_LOGIC; 
  signal Cout_OBUF_5 : STD_LOGIC; 
  signal suma_OBUF_7 : STD_LOGIC; 
begin
  Cout1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_IBUF_1,
      I1 => B_IBUF_3,
      O => Cout_OBUF_5
    );
  Mxor_suma_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => B_IBUF_3,
      I1 => A_IBUF_1,
      O => suma_OBUF_7
    );
  A_IBUF : IBUF
    port map (
      I => A,
      O => A_IBUF_1
    );
  B_IBUF : IBUF
    port map (
      I => B,
      O => B_IBUF_3
    );
  suma_OBUF : OBUF
    port map (
      I => suma_OBUF_7,
      O => suma
    );
  Cout_OBUF : OBUF
    port map (
      I => Cout_OBUF_5,
      O => Cout
    );

end Structure;

