----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/06 16:30:44
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
  Port (clk: in STD_LOGIC;
        enable: in STD_LOGIC;
        load_n: in STD_LOGIC;
        initial_value: in STD_LOGIC_VECTOR (3 downto 0);
        clear_n: in STD_LOGIC;
        segment: out STD_LOGIC_VECTOR (6 downto 0);
        anode: out STD_LOGIC_VECTOR (3 downto 0) );
end toplevel;

architecture Structural of toplevel is
    -- Component Declaration
    COMPONENT clock_divider IS
        PORT(clk: in STD_LOGIC;
            message_clk: out STD_LOGIC);
    END COMPONENT clock_divider;
    
    COMPONENT Counter_4bit IS
        PORT(clock: in STD_LOGIC;
            enable: in STD_LOGIC;
            load_n: in STD_LOGIC;
            initial_value: in STD_LOGIC_VECTOR (3 downto 0);
            clear_n: in STD_LOGIC;
            counter_output: out STD_LOGIC_VECTOR (3 downto 0) );
    END COMPONENT Counter_4bit;
    
    COMPONENT display_driver1 IS
        PORT (inputs : in  STD_LOGIC_VECTOR (3 downto 0);
               seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
    END COMPONENT display_driver1;
    
    COMPONENT display_driver2 IS
            PORT (inputs : in  STD_LOGIC_VECTOR (3 downto 0);
                   seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
    END COMPONENT display_driver2;
    
    COMPONENT display_driver3 IS
            PORT (inputs : in  STD_LOGIC_VECTOR (3 downto 0);
                   seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
    END COMPONENT display_driver3;
        
    COMPONENT display_driver4 IS
            PORT (inputs : in  STD_LOGIC_VECTOR (3 downto 0);
                   seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
    END COMPONENT display_driver4;
    
    COMPONENT LEDdisplay is
        PORT(clk: IN  STD_LOGIC;
             seg0,seg1,seg2,seg3: IN  STD_LOGIC_VECTOR(6 downto 0);
             seg: OUT  STD_LOGIC_VECTOR(6  downto 0);
             an: OUT STD_LOGIC_VECTOR(3 downto 0));
    END COMPONENT LEDdisplay;
    
    -- Signal Declaration
    SIGNAL m_clk: STD_LOGIC;
    SIGNAL cnt_out: STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL sig_segments0: STD_LOGIC_VECTOR (6 downto 0);
    SIGNAL sig_segments1: STD_LOGIC_VECTOR (6 downto 0);
    SIGNAL sig_segments2: STD_LOGIC_VECTOR (6 downto 0);
    SIGNAL sig_segments3: STD_LOGIC_VECTOR (6 downto 0);
    
begin
    clock_divider0: clock_divider
        PORT MAP (
            clk => clk,
            message_clk => m_clk);
            
    counter_4bit0: Counter_4bit
        PORT MAP (
            clock => m_clk,
            enable => enable,
            load_n => load_n,
            initial_value => initial_value,
            clear_n => clear_n,
            counter_output => cnt_out);
            
    display_driver10: display_driver1
        PORT MAP (
            inputs => cnt_out,
            seg_out => sig_segments0);
            
    display_driver20: display_driver2
        PORT MAP (
            inputs => cnt_out,
            seg_out => sig_segments1);
                
    display_driver30: display_driver3
        PORT MAP (
            inputs => cnt_out,
            seg_out => sig_segments2);
                        
    display_driver40: display_driver4
        PORT MAP (
            inputs => cnt_out,
            seg_out => sig_segments3);
            
    LEDdisplay0: LEDdisplay
        PORT MAP (
            clk => clk,
            seg0 => sig_segments0,
            seg1 => sig_segments1,
            seg2 => sig_segments2,
            seg3 => sig_segments3,
            seg => segment,
            an => anode);
    
    
    

end  ARCHITECTURE Structural;
