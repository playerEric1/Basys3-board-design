----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/06 16:17:04
-- Design Name: 
-- Module Name: Display_Driver - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display_driver1 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end display_driver1;

architecture Behavioral of display_driver1 is

begin

with inputs select
seg_out <=
"0000110" when x"0" ,
"1000110" when x"1" ,
"0010010" when x"2" ,
"0000110" when x"3" ,
"0100100" when x"4" ,
"1000000" when x"5" ,
"1111001" when x"6" ,
"1000000" when x"7" ,
"1000110" when x"8" ,
"1000000" when x"9" ,
"1000110" when x"A" ,
"1000000" when x"B" ,
"1111111" when others;

end Behavioral;