library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mult_virgule_fixe is
  port(
    Clk : in std_logic;
    opr_1 : in std_logic_vector(31 downto 0);
    opr_2 : in std_logic_vector(31 downto 0);
    Y : out std_logic_vector(63 downto 0)
    );
end entity;

architecture multiplication_arch of multiplication is
begin
  process (Clk)
  begin
    if Clk'event and Clk = '1' then      
      Y <= opr_1 * opr_2;      
    end if;
  end process;
end architecture;
