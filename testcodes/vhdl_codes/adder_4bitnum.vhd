library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder_4bitnum is
port(A,B : in std_logic_vector(3 downto 0); 
     Sum : out std_logic_vector(3 down to 0);
	 Cout : out std_logic);
end entity;
architecture behavior of adder_4bitnum is
signal Sum_uns : unsigned (4 downto 0);
begin
Sum_uns <= unsigned (('0' & A)) + unsigned ('0' & B));
Sum <= std_logic_vector(Sum_uns(3 downto 0));
Cout <= Sum_uns(4);

end architecture;