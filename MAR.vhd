----------------------------------------------------------------------------------
-- Company:  Benha Faculty of Engineering
-- Engineer: Mariam El-Shakafi

-- Create Date:    18:22:05 05/03/2020 
-- Module Name:    MAR - Behavioral 
-- Project Name:   SAP1-VHDL

-- Description: This is an implementation of memory address register. 

-- Dependencies: None

-- Version: 1.0 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MAR is
    Port ( Lm : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  addr_in : in STD_LOGIC_VECTOR (3 downto 0);
           addr_out : out  STD_LOGIC_VECTOR (3 downto 0));
end MAR;

architecture Behavioral of MAR is

signal MAR_content : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');

begin
process (clk)
begin
	if rising_edge(clk) then
		if Lm = '1' then
			MAR_content <= addr_in;
		end if;
	end if;
end process;
addr_out <= MAR_content;
end Behavioral;

