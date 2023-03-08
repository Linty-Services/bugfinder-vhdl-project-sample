library ieee;
use ieee.std_logic_1164.all;

entity fly is
  port (
    clk : in std_logic;
    rst : in std_logic;
    i1 : in std_logic;
    o1 : out std_logic
  );
end entity;

architecture rtl of fly is
begin
  process (clk) is
  begin
    if rising_edge(clk) then
      if rst = '1' then
        o1 <= '0';
      else
        o1 <= not i1;
      end if;
    end if;
  end process;
end architecture;