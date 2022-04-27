entity HA is
port(A,B :in bit;
     Sum,Cout : out bit);
end entity;

architecture flow of HA is 
begin
Sum <= A xor B;
Cout <= A and B;
end architecture;