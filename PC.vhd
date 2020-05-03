----------------------------------------------------------------------------------
-- Company:  Benha Faculty of Engineering
-- Engineer: Mariam El-Shakafi

-- Create Date:    18:14:08 05/03/2020 
-- Module Name:    PC - Behavioral 
-- Project Name:   SAP1-VHDL

-- Description: This is an implementation of program counter register.

-- Dependencies: None

-- Version: 1.0 
----------------------------------------------------------------------------------




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC is
    Port ( Cp : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           Ep : in  STD_LOGIC;
           addr_out : out  STD_LOGIC_VECTOR (3 downto 0));
end PC;

architecture Behavioral of PC is

signal PC_content : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');

begin
process (clk, clr)
begin
	if clr = '0' then
		PC_content <= (others => '0');
	elsif falling_edge(clk) then
		if Cp = '1' then
			PC_content <= PC_content + 1;
		end if;
	end if;
end process;
addr_out <= PC_content when Ep = '1' else (others => 'Z');
end Behavioral;

