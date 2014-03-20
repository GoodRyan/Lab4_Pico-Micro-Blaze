----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:45 03/18/2014 
-- Design Name: 
-- Module Name:    nibble_to_ascii - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity nibble_to_ascii is
	port(
		clk			:  in std_logic;
		nibble		:	in std_logic_vector(3 downto 0);
		ascii			:  out std_logic_vector(7 downto 0)
	);
end nibble_to_ascii;

architecture Behavioral of nibble_to_ascii is
begin

ascii <= std_logic_vector(x"30" + unsigned(nibble)) when unsigned(nibble) >= 0 and unsigned(nibble) <= 9 else
			std_logic_vector(x"37" + unsigned(nibble));

end Behavioral;

