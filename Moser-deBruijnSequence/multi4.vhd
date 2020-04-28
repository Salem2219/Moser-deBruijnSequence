library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity multi4 is
    port (a : in std_logic_vector(7 downto 0);
    y : out std_logic_vector(7 downto 0));
end multi4;

architecture rtl of multi4 is
begin
y <= a(5 downto 0) & "00";
end rtl;
