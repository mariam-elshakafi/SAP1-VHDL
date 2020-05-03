----------------------------------------------------------------------------------
-- Company:  Benha Faculty of Engineering
-- Engineer: Mariam El-Shakafi

-- Create Date:    18:51:49 05/03/2020 
-- Module Name:    IR - Behavioral 
-- Project Name:   SAP1-VHDL

-- Description: This is an implementation of instruction register.

-- Dependencies: None

-- Version: 1.0 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IR is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           Li : in  STD_LOGIC;
           Ei : in  STD_LOGIC;
           inst_in : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode_out : out  STD_LOGIC_VECTOR (3 downto 0);
           addr_out : out  STD_LOGIC_VECTOR (3 downto 0));
end IR;

architecture Behavioral of IR is

signal IR_content : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

begin

process (clk, clr)
begin
	if clr = '0' then
		IR_content <= (others => '0');
	elsif falling_edge(clk) then
		if Li = '1' then
			IR_content <= inst_in;
		end if;
	end if;
end process;
opcode_out <= IR_content(7 downto 4);
addr_out <= IR_content(3 downto 0) when Ei = '1' else (others => 'Z');
end Behavioral;

