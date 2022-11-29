----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/06 16:06:18
-- Design Name: 
-- Module Name: Counter_4bit - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_4bit is
  Port (clock: in STD_LOGIC;
        enable: in STD_LOGIC;
        load_n: in STD_LOGIC;
        initial_value: in STD_LOGIC_VECTOR (3 downto 0);
        clear_n: in STD_LOGIC;
        counter_output: out STD_LOGIC_VECTOR (3 downto 0) );
end Counter_4bit;

architecture Behavioral of Counter_4bit is

    signal counter_signal:std_logic_vector(3 downto 0) :="0000";
begin
    process (clock, clear_n)
begin
     if clear_n='0' then
        counter_signal <= (others=>'0');
     elsif (clock'event and clock='1') then
        if load_n = '0' then
        counter_signal <=initial_value;
        else
        if enable ='1' then
        counter_signal <= counter_signal +1;
        else
        counter_signal <= counter_signal;
        end if;
     end if;
     end if;
    end process;
    counter_output <= counter_signal;
    
end Behavioral;
