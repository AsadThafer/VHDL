library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
port(X,Y,Z : in std_logic;
     S,C : out std_logic);
end entity;
architecture flow of FA is 

component HA is
port(HAin1,HAin2 :in std_logic;
     HASum,HACout : out std_logic);
end component;

signal HA1_Sum,HA1_Cout,HA2_Cout : std_logic;

begin
HA1 : HA port map (X,Y,HA1_Sum,HA1_Cout);     --positional HAin1,HAin2,HASum,HACout of HA1
HA2 : HA port map (HA1_Sum,Z,S,HA2_Cout); --positional HAin1,HAin2,HASum,HACout of HA2
C <= HA1_Cout or HA2_Cout;

end architecture;