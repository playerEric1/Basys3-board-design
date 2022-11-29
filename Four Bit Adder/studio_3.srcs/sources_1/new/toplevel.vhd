----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/02/09 16:44:15
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
    Port ( sw : in STD_LOGIC_VECTOR (0 to 7);
            carry_in : in STD_LOGIC;
            clk : in STD_LOGIC;
            segment : out STD_LOGIC_VECTOR (0 to 6);
            anode : out STD_LOGIC_VECTOR (0 to 3));
end toplevel;

architecture  Structural of toplevel is
    
-- Component Declaration
--LED
	component LEDdisplay IS
	PORT (
		  clk					: IN  STD_LOGIC;
		  seg0,seg1,seg2,seg3		: IN  STD_LOGIC_VECTOR(6 downto 0);
        seg       		: OUT  STD_LOGIC_VECTOR(6  downto 0);
		  an					: OUT STD_LOGIC_VECTOR(3 downto 0));		  
    END component LEDdisplay;

    --Display
    component Display_driver IS
	Port (switch : in STD_LOGIC_VECTOR (3 downto 0);
          AN : out STD_LOGIC_VECTOR (3 downto 0);
          Seg : out STD_LOGIC_VECTOR (0 to 6));
    END component Display_driver;


    --adder
    COMPONENT bit_full_adder IS
    PORT (     
    A,B,Cin : IN STD_LOGIC;     
    S,Cout   : OUT STD_LOGIC
    );    
    END COMPONENT bit_full_adder;

    -- Signal Declaration    
    SIGNAL s0: STD_LOGIC; 
    SIGNAL s1: STD_LOGIC;
    SIGNAL s2: STD_LOGIC;
    SIGNAL s3: STD_LOGIC;
    SIGNAL c0: STD_LOGIC;
    SIGNAL c1: STD_LOGIC;
    SIGNAL c2: STD_LOGIC;
    SIGNAL c3: STD_LOGIC;
    SIGNAL sig_segments1: STD_LOGIC_VECTOR (0 to 6);
    SIGNAL sig_segments2: STD_LOGIC_VECTOR (0 to 6);
    


begin
    -- Component Instantiation
    bit_full_adder0: bit_full_adder
        Port Map (
            A => sw(0),
            B => sw(4),
            Cin => carry_in,
            Cout => c0,
            S => s0); 
        
    bit_full_adder1: bit_full_adder
        Port Map (
            A => sw(1),
            B => sw(5),
            Cin => c0,
            Cout => c1,
            S => s1);

    bit_full_adder2: bit_full_adder
        Port Map (
            A => sw(2),
            B => sw(6),
            Cin => c1,
            Cout => c2,
            S => s2);
            
    bit_full_adder3: bit_full_adder
        Port Map (
            A => sw(3),
            B => sw(7),
            Cin => c2,
            Cout => c3,
            S => s3);

    display_driver1: display_driver
        Port Map(
        Seg => sig_segments1,
        switch(0) => s0,
        switch(1) => s1,
        switch(2) => s2,
        switch(3) => s3);
        
    display_driver2: display_driver
        Port Map(
        Seg => sig_segments2,
        switch(0) => c3,
        switch(1) => '0',
        switch(2) => '0',
        switch(3) => '0');
     
     LEDdisplay0: LEDdisplay
        Port Map(
        seg0 => sig_segments1,
        seg1 => sig_segments2,
        seg2 => "1111111",
        seg3 => "1111111",
        clk => clk,
        an => anode,
        seg => segment);

end  Structural;
