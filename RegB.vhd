----------------------------------------------------------------------------------
-- Company:  Benha Faculty of Engineering
-- Engineer: Mariam El-Shakafi

-- Create Date:    18:27:02 05/03/2020 
-- Module Name:    RegB - Behavioral 
-- Project Name:   SAP1-VHDL

-- Description: This is an implementation of secondary data register (Register B).
--
-- Dependencies: None
--
-- Version: 1.0 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RegB is
    Port ( Lb : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           datain : in  STD_LOGIC_VECTOR (7 downto 0);
           dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end RegB;

architecture Behavioral of RegB is

signal B_content : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

begin
process (clk)
begin
	if rising_edge(clk) then
		if Lb = '1' then
			B_content <= datain;
		end if;
	end if;
end process;
dataout <= B_content;
end Behavioral;

