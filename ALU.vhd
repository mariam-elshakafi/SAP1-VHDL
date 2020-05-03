----------------------------------------------------------------------------------
-- Company:  Benha Faculty of Engineering
-- Engineer: Mariam El-Shakafi

-- Create Date:    03:23:22 05/06/2019 
-- Module Name:    ALU - Behavioral 
-- Project Name:   SAP1-VHDL

-- Description: This is an implementation of arithmetic logic unit. 
-- It can only do 2 operations (Add, Sub) based on value of selection (Su)

-- Dependencies: None

-- Version: 1.0 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
			  Su : in STD_LOGIC;
			  Eu : in STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

begin

dataout <= 	a+b when Eu = '1' and Su = '0' else
				a-b when Eu = '1' and Su = '1' else
				(others => 'Z');
end Behavioral;

