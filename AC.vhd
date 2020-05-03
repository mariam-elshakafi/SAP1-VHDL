----------------------------------------------------------------------------------
-- Company:  Benha Faculty of Engineering
-- Engineer: Mariam El-Shakafi

-- Create Date:    18:32:09 05/03/2020 
-- Module Name:    AC - Behavioral 
-- Project Name:   SAP1-VHDL

-- Description: This is an implementation of accumulator register

-- Dependencies: None

-- Version: 1.0 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AC is
    Port ( clk : in  STD_LOGIC;
           La : in  STD_LOGIC;
           Ea : in  STD_LOGIC;
           datain : in  STD_LOGIC_VECTOR (7 downto 0);
           dataout_bus : out  STD_LOGIC_VECTOR (7 downto 0);
           dataout_alu : out  STD_LOGIC_VECTOR (7 downto 0));
end AC;

architecture Behavioral of AC is

signal AC_content : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

begin
process (clk)
begin
	if rising_edge(clk) then
		if La = '1' then
			AC_content <= datain;
		end if;
	end if;
end process;
dataout_alu <= AC_content;
dataout_bus <= AC_content when Ea = '1' else (others => 'Z');
end Behavioral;

