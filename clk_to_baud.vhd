----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:48:58 03/13/2014 
-- Design Name: 
-- Module Name:    clk_to_baud - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;


entity clk_to_baud is
    port ( clk         : in std_logic;  -- 100 MHz
           reset       : in std_logic;
           baud_16x_en : out std_logic 
        );
end clk_to_baud;

architecture baud_arch of clk_to_baud is

constant BAUD_COUNT	: natural := 651; --count to 1/(16*9600)*100MHz = 651

signal counter_reg, counter_next : unsigned(10 downto 0);

begin

--counter
counter_next <= counter_reg + 1 when (counter_next <= BAUD_COUNT) else
					 (others => '0');

process(clk, reset)
begin
if rising_edge(clk) then

	if reset = '1' then
		counter_reg <= (others => '0');
		baud_16x_en <= '0';
	elsif counter_reg = BAUD_COUNT then
			baud_16x_en <= '1';
	else  counter_reg <= counter_next;
			baud_16x_en <= '0';
	end if;
	
end if;
end process;

end baud_arch;

