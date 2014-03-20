----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:57:30 03/19/2014 
-- Design Name: 
-- Module Name:    vector_to_ascii - Behavioral 
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

entity vector_to_ascii is
	port(
		clk			:  in std_logic;
		vector		:	in std_logic_vector(7 downto 0);
		ascii			:  out std_logic_vector(3 downto 0)
	);
end vector_to_ascii;

architecture Behavioral of vector_to_ascii is

	signal number_result, letter_result : unsigned(7 downto 0);
	signal output : std_logic_vector(7 downto 0);
	
begin

	number_result <= unsigned(vector) - 48;
	letter_result <= unsigned(vector) - 55;


	output <= std_logic_vector(number_result) when number_result >= 0 and number_result <= 9 else
			std_logic_vector(letter_result);
			
	ascii <= output(3 downto 0);

end Behavioral;

