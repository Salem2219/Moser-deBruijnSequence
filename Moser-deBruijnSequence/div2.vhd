library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity div2 is
    port (a : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0));
end div2;

architecture rtl of div2 is
begin
y <= '0' & a(3 downto 1);
end rtl;
