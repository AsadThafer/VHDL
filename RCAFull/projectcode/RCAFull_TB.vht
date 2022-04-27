library IEEE;
use IEEE.std_logic_1164.all;

entity RCAFull_TB is
end RCAFull_TB;
 
architecture behavior of RCAFull_TB is
 

 
component RCAFull is
Port ( X : in std_logic_vector (3 downto 0);
       Y : in std_logic_vector (3 downto 0);
       Z : in std_logic_vector (3 downto 0);
      Sum : out std_logic_vector (4 downto 0);
      Carry : out std_logic);
end component;
 
--Inputs
signal X_TB : std_logic_vector(3 downto 0) := (others => '0');
signal Y_TB : std_logic_vector(3 downto 0) := (others => '0');
signal Z_TB : std_logic_vector(3 downto 0) := (others => '0');
 
--Outputs
signal Sum_TB : std_logic_vector(4 downto 0);
signal Carry_TB : std_logic;

begin

uut:
RCAFull port map (
X => X_TB,
Y => Y_TB,
Z => Z_TB,
Sum => Sum_TB,
Carry => Carry_TB);
 

stim_proc: process
begin


X_TB <= "1100";
Y_TB <= "1101";
Z_TB <= "1110";
wait for 100 ns; 

X_TB <= "1111";
Y_TB <= "1000";
Z_TB <= "1001";
wait for 100 ns; 

X_TB <= "1110";
Y_TB <= "0101";
Z_TB <= "0111"; 
wait for 100 ns; 

end process;
 
end architecture;