----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/16 12:20:25
-- Design Name: 
-- Module Name: fiveinput_NAND - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fiveinput_NAND is
Port (input: in STD_LOGIC_VECTOR (4 downto 0);
      output: out STD_LOGIC);
end fiveinput_NAND;

architecture Behavioral of fiveinput_NAND is

begin

output <= NOT (input(0) AND input(1) AND input(2) AND input(3) AND input(4));

end Behavioral;
