----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/02/23 13:57:02
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
        B : in STD_LOGIC_VECTOR (3 downto 0);
        carry_in : in STD_LOGIC;
        c_out: out STD_LOGIC;
        S : out STD_LOGIC_VECTOR (3 downto 0));
end adder;

architecture Structural of adder is

-- Component Declaration
-- bit_full_adder
COMPONENT bit_full_adder IS
    PORT (     
    A,B,Cin : IN STD_LOGIC;     
    S,Cout   : OUT STD_LOGIC
    );    
    END COMPONENT bit_full_adder;

-- Signal Declaration
    SIGNAL c0: STD_LOGIC;
    SIGNAL c1: STD_LOGIC;
    SIGNAL c2: STD_LOGIC;

begin

-- Component Instantiation
    bit_full_adder0: bit_full_adder
        Port Map (
            A => A(0),
            B => B(0),
            Cin => carry_in,
            Cout => c0,
            S => S(0)); 

    bit_full_adder1: bit_full_adder
        Port Map (
            A => A(1),
            B => B(1),
            Cin => c0,
            Cout => c1,
            S => S(1));
            
    bit_full_adder2: bit_full_adder
        Port Map (
            A => A(2),
            B => B(2),
            Cin => c1,
            Cout => c2,
            S => S(2));           

    bit_full_adder3: bit_full_adder
        Port Map (
            A => A(3),
            B => B(3),
            Cin => c2,
            Cout => c_out,
            S => S(3)); 
            
end Structural;
