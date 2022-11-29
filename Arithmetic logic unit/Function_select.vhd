----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:18 10/29/2012 
-- Design Name: 
-- Module Name:    function_select - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity function_select is
    Port ( Input0 : in  STD_LOGIC_VECTOR (3 downto 0);
           Input1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  Input2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Input3 : in  STD_LOGIC_VECTOR (4 downto 0);
           control : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC_VECTOR (4 downto 0));
end function_select;


ARCHITECTURE Procedural of function_select IS

BEGIN

	PROCESS (Input0, Input1, Input2, control)
	BEGIN
		CASE control is
			when "00"   => Output <= '0' & Input0;
			when "01"   => Output <= '0' & Input1;
			when "10"   => Output <= '0' & Input2;
			when others => Output <= Input3;
		END CASE;
	END PROCESS;

END Procedural;

