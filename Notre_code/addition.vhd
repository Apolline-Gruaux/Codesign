library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity addition is
  port(
    Clk : in std_logic;
    opr_1   : in std_logic_vector(63 downto 0);
    opr_2   : in std_logic_vector(63 downto 0);
    Y  : out std_logic_vector(63 downto 0)
    );
end entity;

architecture addition_arch of addition is
begin
  process (Clk)
  begin
    if Clk'event and Clk = '1' then      
      Y <= opr_1 + opr_2;      
    end if;
  end process;
end architecture;
