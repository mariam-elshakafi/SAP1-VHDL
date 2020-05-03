----------------------------------------------------------------------------------
-- Company:  Benha Faculty of Engineering
-- Engineer: Mariam El-Shakafi

-- Create Date:    18:00:22 05/03/2020 
-- Module Name:    MEM - Behavioral 
-- Project Name:   SAP1-VHDL

-- Description: This is an implementation of SAP1 memory (16 x 8 RAM). 
-- It contains a pre-loaded program that does a simple arithmetic operation.

-- Dependencies: None

-- Version: 1.0 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MEM is
    Port ( address : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (7 downto 0);
           CE : in  STD_LOGIC);
end MEM;

architecture Behavioral of MEM is
type memory is array(0 to 15) of std_logic_vector (7 downto 0);
signal RAM : memory := (
0  => "00001001" , --LDA @9h
1  => "11101111" , --OUT
2  => "00011010" , --ADD @Ah
3  => "11101111" , --OUT
4  => "00101011" , --SUB @Bh
5  => "11101111" , --OUT
6  => "11111111" , --HLT
7  => "00000000" ,
8  => "00000000" ,
9  => "00000110" , --6
10 => "00001000" , --8
11 => "00000011" , --3
12 => "00000000" ,
13 => "11111111" ,
14 => "11111111" , 
15 => "11111111" );

begin

dataout <= RAM(conv_integer(unsigned(address))) when CE = '1' else (others => 'Z');

end Behavioral;

