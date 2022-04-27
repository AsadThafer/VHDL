library IEEE;
use IEEE.std_logic_1164.all;

entity Dflipflopstd is 
  port(Clock : in std_logic;
       D     : in std_logic;
	   Q     : out logic);
end entity;

architecture behavior of Dflipflopstd is
begin
D_Flipfloppr : process(Clock)
begin
if (Clock'event and Clock ='1') then
  Q <= D;
 end if;
 end process;
end architecture;


-- architecture behavior of Dflipflop is
-- begin
-- D_Flipfloppr : process(Clock)
-- begin
-- if (rising_edge(Clock)) then                in std_logic
  -- Q <= D;
 -- end if;
 -- end process;
-- end architecture;
