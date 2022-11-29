library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity display_driver3 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end display_driver3;

architecture Behavioral of display_driver3 is

begin

with inputs select
seg_out <=
"0000110" when x"2" ,
"1000110" when x"3" ,
"0010010" when x"4" ,
"0000110" when x"5" ,
"0100100" when x"6" ,
"1000000" when x"7" ,
"1111001" when x"8" ,
"1000000" when x"9" ,
"1000110" when x"A" ,
"1000000" when x"B" ,
"1000110" when x"C" ,
"1000000" when x"D" ,
"1111111" when others;

end Behavioral;
