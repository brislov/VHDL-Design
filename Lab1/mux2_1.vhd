library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is -- multiplexer
	port(
		i_bit1 : in std_logic;
		i_bit2 : in std_logic;
		i_sel  : in std_logic;
		o_out  : out std_logic
	);
end entity;

architecture behavior of mux2_1 is
	begin
	process(i_bit1, i_bit2, i_sel)
		begin
		if i_sel = '0' then
			o_out <= i_bit1 after 4 ns;
		else
			o_out <= i_bit2 after 4 ns;
		end if;
	end process;
end architecture;
