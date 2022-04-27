library IEEE;
use IEEE.std_logic_1164.all;

entity RCAFull is
Port ( X : in std_logic_vector (3 downto 0);
       Y : in std_logic_vector (3 downto 0);
       Z : in std_logic_vector (3 downto 0);
      Sum : out std_logic_vector (4 downto 0);
      Carry : out std_logic);
end entity;

architecture behavior of RCAFull is

component FA is
port(X,Y,Z : in std_logic;
     S,C : out std_logic);
end component;

signal A,B: std_logic_vector(3 downto 0);
signal C1,C2,C3: std_logic;

begin

First_stage : block
begin
FA0: FA PORT MAP(X(0),Y(0),Z(0),Sum(0),A(0));
FA1: FA PORT MAP(X(1),Y(1),Z(1),B(0),A(1));
FA2: FA PORT MAP(X(2),Y(2),Z(2),B(1),A(2));
FA3: FA PORT MAP(X(3),Y(3),Z(3),B(2),A(3));

end block First_stage;
 
 
Second_stage : block
begin
FA0: FA PORT MAP(A(0),B(0),'0',Sum(1),C1);
FA1: FA PORT MAP(A(1),B(1),C1,Sum(2),C2);
FA2: FA PORT MAP(A(2),B(2),C2,Sum(3),C3);
FA3: FA PORT MAP(A(3),'0',C3,Sum(4),Carry);
end block Second_stage;

end architecture;

