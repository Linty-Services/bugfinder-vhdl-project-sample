library ieee;
use ieee.std_logic_1164.all;

entity dream is
  port (
    clk : in std_logic;
    rst : in std_logic;
    i1 : in std_logic;
    i2 : in std_logic;
    o1 : out std_logic;
    o2 : out std_logic_vector(0 to 3);
    o3 : out std_logic
  );
end entity;

architecture rtl of dream is
begin
  fly_i1 : entity work.fly(rtl)
    port map(clk, rst, i1, o3);

  process (clk) is
  begin
    if rising_edge(clk) then
      if rst = '1' then
        o1 <= '0';
      else
        o1 <= i1 and i2;
        o2(0) <= i1 or i2;
        o2(1) <= '1';
      end if;
    end if;
  end process;

  o2(3) <= i1;
end architecture;