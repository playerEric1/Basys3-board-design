library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity display_driver4 is
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end display_driver4;

architecture Behavioral of display_driver4 is

begin

with inputs select
seg_out <=
"0000110" when x"3" ,
"1000110" when x"4" ,
"0010010" when x"5" ,
"0000110" when x"6" ,
"0100100" when x"7" ,
"1000000" when x"8" ,
"1111001" when x"9" ,
"1000000" when x"A" ,
"1000110" when x"B" ,
"1000000" when x"C" ,
"1000110" when x"D" ,
"1000000" when x"E" ,
"1111111" when others;

end Behavioral;
