----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/02 18:03:43
-- Design Name: 
-- Module Name: decoder_1 - Behavioral
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

entity decoder_1 is
PORt ( g : in STD_LOGIC;
        g2a: in STD_LOGIC;
        g2b: in STD_LOGIC;
         x : in STD_LOGIC_VECTOR (2 downto 0);
        led : out STD_LOGIC_VECTOR (7 downto 0));
end decoder_1;

architecture Behavioral of decoder_1 is

begin

led <= "11111111" when (g='0' or g2a='1' or g2b='1') else
        "01111111" when (x="000") else
        "10111111" when (x="001") else
        "11011111" when (x="010") else
        "11101111" when (x="011") else
        "11110111" when (x="100") else
        "11111011" when (x="101") else                                
        "11111101" when (x="110") else
        "11111110" when (x="111");
    

end Behavioral;
