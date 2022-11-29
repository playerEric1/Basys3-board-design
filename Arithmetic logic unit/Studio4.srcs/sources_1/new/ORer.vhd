----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/02/23 14:20:18
-- Design Name: 
-- Module Name: ORer - Behavioral
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

entity ORer is
Port ( A: in STD_LOGIC_VECTOR (3 downto 0);
        B: in STD_LOGIC_VECTOR (3 downto 0);
        S: out STD_LOGIC_VECTOR (3 downto 0));
end ORer;

architecture Behavioral of ORer is

begin
    S(0) <= A(0) OR B(0);
    S(1) <= A(1) OR B(1);
    S(2) <= A(2) OR B(2);
    S(3) <= A(3) OR B(3);
    
end Behavioral;
