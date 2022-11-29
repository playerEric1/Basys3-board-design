library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity display_driver is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end display_driver;

architecture Behavioral of display_driver is

begin

with inputs select
seg_out <=
"1000000" when x"0" ,
"1111001" when x"1" ,
"0100100" when x"2" ,
"0110000" when x"3" ,
"0011001" when x"4" ,
"0010010" when x"5" ,
"0000010" when x"6" ,
"1111000" when x"7" ,
"0000000" when x"8" ,
"0010000" when x"9" ,
"0001000" when x"A" ,
"0000011" when x"B" ,
"1000110" when x"C" ,
"0100001" when x"D" ,
"0000110" when x"E" ,
"0001110" when others;

end Behavioral;

