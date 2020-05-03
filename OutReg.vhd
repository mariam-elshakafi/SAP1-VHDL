----------------------------------------------------------------------------------
-- Company:  Benha Faculty of Engineering
-- Engineer: Mariam El-Shakafi

-- Create Date:    18:57:06 05/03/2020 
-- Module Name:    OutReg - Behavioral 
-- Project Name:   SAP1-VHDL

-- Description: This is an implementation of output register

-- Dependencies: None

-- Version: 1.0 
----------------------------------------------------------------------------------




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity OutReg is
    Port ( clk : in  STD_LOGIC;
           Lo : in  STD_LOGIC;
           datain : in  STD_LOGIC_VECTOR (7 downto 0);
           dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end OutReg;

architecture Behavioral of OutReg is


signal OUT_content : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

begin
process (clk)
begin
	if rising_edge(clk) then
		if Lo = '1' then
			OUT_content <= datain;
		end if;
	end if;
end process;
dataout <= OUT_content;
end Behavioral;

