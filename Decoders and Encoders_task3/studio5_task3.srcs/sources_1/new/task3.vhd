----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/16 16:35:07
-- Design Name: 
-- Module Name: task3 - Behavioral
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

entity task3 is
Port (EI: in STD_LOGIC;
      I: in STD_LOGIC_VECTOR (7 downto 0);
      A: out STD_LOGIC_VECTOR (2 downto 0);
      GS: out STD_LOGIC;
      EO: out STD_LOGIC);
end task3;
architecture Behavioral of task3 is
begin

EO <= EI or (NOT (I(0) AND I(1) AND I(2) AND I(3) AND I(4) AND I(5) AND I(6) AND I(7)));
GS <= EI or (I(0) AND I(1) AND I(2) AND I(3) AND I(4) AND I(5) AND I(6) AND I(7));
A(0) <= EI or (I(0) AND I(1) AND I(2) AND I(3) AND I(4) AND I(5) AND I(6) AND I(7)) or (I(7) and NOT I(6)) or (I(7) AND I(6) AND I(5) and NOT I(4)) 
    or (I(7) AND I(6) AND I(5) AND I(4) AND I(3) and NOT I(2)) or (I(7) AND I(6) AND I(5) AND I(4) AND I(3) AND I(2) AND I(1) and NOT I(0));
A(1) <= EI or (I(0) AND I(1) AND I(2) AND I(3) AND I(4) AND I(5) AND I(6) AND I(7)) or (I(7) AND I(6) and NOT I(5)) or (I(7) AND I(6) AND I(5) and NOT I(4)) 
    or (I(7) AND I(6) AND I(5) AND I(4) AND I(3) AND I(2) and NOT I(1)) or (I(7) AND I(6) AND I(5) AND I(4) AND I(3) AND I(2) AND I(1) and NOT I(0));
A(2) <= EI or (I(0) AND I(1) AND I(2) AND I(3) AND I(4) AND I(5) AND I(6) AND I(7)) or (I(7) AND I(6) AND I(5) AND I(4) and NOT I(3)) 
    or (I(7) AND I(6) AND I(5) AND I(4) AND I(3) and NOT I(2)) or (I(7) AND I(6) AND I(5) AND I(4) AND I(3) AND I(2) and NOT I(1)) 
    or (I(7) AND I(6) AND I(5) AND I(4) AND I(3) AND I(2) AND I(1) and NOT I(0));

end Behavioral;
