entity RCA is port (
 A,B : in bit_vector (3 downto 0);
 Sum : out bit_vector (3 downto 0);
 Cout : out bit);
 end entity;
 
 architecture flow of RCA is 
 component FA is 
 port(
   A,B,Cin : in bit;
   Sum,Cout : out bit);
 end component;
 
 signal C1,C2,C3:bit;
 
begin
 FA0:FA port map (A(0),B(0),'0',Sum(0),C1);
 FA1:FA port map (A(1),B(1),C1,Sum(1),C2);
 FA2:FA port map (A(2),B(2),C2,Sum(2),C3);
 FA3:FA port map (A(3),B(3),C3,Sum(3),Cout);
 end architecture;