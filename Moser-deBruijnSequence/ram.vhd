library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ram is
port(clk, wr1, wr2 : in std_logic;
i, n : in std_logic_vector(3 downto 0);
y : out std_logic_vector(7 downto 0));
end ram;
architecture rtl of ram is
type ram_type is array (0 to 15) of
std_logic_vector(7 downto 0);
signal program: ram_type := (
    "00000000",
    "00000001",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000"

);
signal idiv2 : std_logic_vector(3 downto 0);
signal S, Sx4, add : std_logic_vector(7 downto 0);

component adder is
    port (a, b : in std_logic_vector(7 downto 0);
    y : out std_logic_vector(7 downto 0));
end component;
component div2 is
    port (a : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0));
end component;
component multi4 is
    port (a : in std_logic_vector(7 downto 0);
    y : out std_logic_vector(7 downto 0));
end component;
begin
S <= program(conv_integer(unsigned(idiv2)));
u1 : adder port map (Sx4, "00000001", add);
u2 : multi4 port map (S, Sx4);
u3 : div2 port map (i, idiv2);
process(clk)
begin
if (rising_edge(clk)) then
if (wr1 = '1') then
program(conv_integer(unsigned(i))) <= Sx4;
elsif (wr2 = '1') then
program(conv_integer(unsigned(i))) <= add;
end if;
end if;
end process;
y <= program(conv_integer(unsigned(n)));
end rtl;