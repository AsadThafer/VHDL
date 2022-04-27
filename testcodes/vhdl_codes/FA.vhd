entity FA is
port(A,B,Cin : in bit;
     Sum,Cout : out bit);
end entity;
architecture flow of FA is 

component HA is
port(A,B : in bit;
     Sum,Cout : out bit);
end component;

signal HA1_Sum,HA1_Cout,HA2_Cout : bit;

begin
HA1 : HA port map (A,B,HA1_Sum,HA1_Cout);     --positional a,b,sum,cout of HA1
HA2 : HA port map (HA1_Sum,Cin,Sum,HA2_Cout); --positional a,b,sum,cout of HA2
Cout <= HA1_Cout or HA2_Cout;

end architecture;