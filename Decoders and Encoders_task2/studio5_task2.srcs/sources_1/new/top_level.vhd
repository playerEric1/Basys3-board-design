----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/16 12:17:33
-- Design Name: 
-- Module Name: top_level - Behavioral
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

entity top_level is
Port (g: in STD_LOGIC;
      g2a: in STD_LOGIC;
      g2b: in STD_LOGIC;
      A: in STD_LOGIC;
      B: in STD_LOGIC;
      C: in STD_LOGIC;
      light: out STD_LOGIC);
end top_level;

architecture Structural of top_level is

COMPONENT fiveinput_NAND is
    Port (input: in STD_LOGIC_VECTOR (4 downto 0);
      output: out STD_LOGIC);
END COMPONENT fiveinput_NAND;

COMPONENT studio5_task1 is
    Port ( g : in STD_LOGIC;
        g2a: in STD_LOGIC;
        g2b: in STD_LOGIC;
         x : in STD_LOGIC_VECTOR (2 downto 0);
        led : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT studio5_task1;

SIGNAL leds: STD_LOGIC_VECTOR (7 downto 0);

begin

decoder74x128: studio5_task1
    PORT MAP(
        g => g,
        g2a => g2a,
        g2b => g2b,
        x(0) => C,
        x(1) => B,
        x(2) => A,
        led => leds
    );

gate_nand: fiveinput_NAND
    PORT MAP(
        input(0) => leds(2),
        input(1) => leds(3),
        input(2) => leds(4),
        input(3) => leds(5),
        input(4) => leds(6),
        output => light
        );

end Structural;
