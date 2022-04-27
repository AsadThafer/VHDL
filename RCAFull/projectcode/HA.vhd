library IEEE;
use IEEE.std_logic_1164.all;

entity HA is
port(HAin1,HAin2 :in std_logic;
     HASum,HACout : out std_logic);
end entity;

architecture flow of HA is 
begin
HASum <= HAin1 xor HAin2;
HACout <= HAin1 and HAin2;
end architecture;