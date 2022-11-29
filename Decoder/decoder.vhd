----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/02 18:34:55
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder is
  Port ( g : in STD_LOGIC;
       g2a: in STD_LOGIC;
       g2b: in STD_LOGIC;
        A: in STD_LOGIC;
        B: in STD_LOGIC;
        C: in STD_LOGIC;
        F: out STD_LOGIC);
end decoder;

architecture Behavioral of decoder is

begin

F <= '0' when (g='0' or g2a='1' or g2b='1') else
     '1' when (A='0' and B='1') else
     '1' when (A='1' and B='0') else
     '1' when (B='1' and C='0');

end Behavioral;
