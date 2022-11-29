----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/02/23 14:21:15
-- Design Name: 
-- Module Name: XORer - Behavioral
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

entity XORer is
Port ( A: in STD_LOGIC_VECTOR (3 downto 0);
        B: in STD_LOGIC_VECTOR (3 downto 0);
        S: out STD_LOGIC_VECTOR (3 downto 0));
end XORer;

architecture Behavioral of XORer is

begin
    S(0) <= A(0) XOR B(0);
    S(1) <= A(1) XOR B(1);
    S(2) <= A(2) XOR B(2);
    S(3) <= A(3) XOR B(3);
    
end Behavioral;
