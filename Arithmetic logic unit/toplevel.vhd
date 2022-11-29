----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/02/23 14:26:26
-- Design Name: 
-- Module Name: toplevel - Behavioral
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

entity toplevel is
Port ( SW: in STD_LOGIC_VECTOR (7 downto 0);
        carry_in : in STD_LOGIC;
        clk: in STD_LOGIC;
        control: in STD_LOGIC_VECTOR (1 downto 0);
        segment: out STD_LOGIC_VECTOR (6 downto 0);
        anode: out STD_LOGIC_VECTOR (3 downto 0));
end toplevel;

architecture Structural of toplevel is
    -- Component Declaration
--LED
COMPONENT LEDdisplay IS
    PORT (
        clk : IN STD_LOGIC;
        seg0, seg1, seg2, seg3 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
        seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        an : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT LEDdisplay;

--Display
COMPONENT display_driver IS
    Port ( inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
END COMPONENT display_driver;

COMPONENT adder is 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
        B : in STD_LOGIC_VECTOR (3 downto 0);
        carry_in : in STD_LOGIC;
        c_out: out STD_LOGIC;
        S : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT adder;

COMPONENT ANDer is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
    B : in STD_LOGIC_VECTOR (3 downto 0);
    S : out STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT ANDer;


COMPONENT ORer is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
    B : in STD_LOGIC_VECTOR (3 downto 0);
    S : out STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT ORer;

 
COMPONENT XORer is
    PORt ( A : in STD_LOGIC_VECTOR (3 downto 0);
    B : in STD_LOGIC_VECTOR (3 downto 0);
    S : out STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT XORer;

COMPONENT function_select is
    Port ( Input0 : in  STD_LOGIC_VECTOR (3 downto 0);
           Input1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Input3 : in  STD_LOGIC_VECTOR (4 downto 0);
           control : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC_VECTOR (4 downto 0));
end COMPONENT function_select;

    -- Signal Declaration    
    SIGNAL sig_segments1 : STD_LOGIC_VECTOR (6 downto 0);
    SIGNAL sig_segments2 : STD_LOGIC_VECTOR (6 downto 0);
    SIGNAL out_and : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL out_or : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL out_xor : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL out_adder : STD_LOGIC_VECTOR (4 downto 0);
    SIGNAL out_select : STD_LOGIC_VECTOR (4 downto 0);
    
begin

    ander0: ander
        Port Map (
            A => SW(3 downto 0),
            B => SW(7 downto 4),
            S => out_and); 
        
    orer0: orer
        Port Map (
            A => SW(3 downto 0),
            B => SW(7 downto 4),
            S => out_or);

    xoer0: XORer
        Port Map (
            A => SW(3 downto 0),
            B => SW(7 downto 4),
            S => out_xor);
            
    adder0: adder
        Port Map (
            A => SW(3 downto 0),
            B => SW(7 downto 4),
            carry_in => carry_in,
            S => out_adder(3 downto 0),
            c_out => out_adder(4));
    
    function_select0: function_select
        Port Map(
           Input0 => out_and,
           Input1 => out_or,
           Input2 => out_xor,
           Input3 => out_adder,
           control => control,
           Output => out_select);
        
    display_driver1: display_driver
        Port Map(
            inputs => out_select(3 downto 0),
            seg_out => sig_segments1);
        
    display_driver2: display_driver
        Port Map(
        seg_out => sig_segments2,
        inputs(0) => out_select (4),
        inputs(1) => '0',
        inputs(2) => '0',
        inputs(3) => '0');
     
     LEDdisplay0: LEDdisplay
        Port Map(
        seg0 => sig_segments1,
        seg1 => sig_segments2,
        seg2 => "1111111",
        seg3 => "1111111",
        clk => clk,
        an => anode,
        seg => segment);

end Structural;
