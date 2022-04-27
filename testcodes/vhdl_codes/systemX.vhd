entity systemX is
port(A,B,C : in bit;
     F:out bit);

end systemX;

architecture flow of systemX is
signal s1,s2,s3 : bit;
signal nA,nB,nC : bit;
--F = A'B'C' + A'BC' + ABC'
-- s1 = A'B'C'
-- s2 = A'BC'
-- s3 = ABC'
-- F = s1 + s2 + s3
begin
nA <= not A;
nB <= not B;
nC <= not C;

s1 <= nA and nB and nC;
s2 <= nA and B and nC;
s3 <= A and B and nC;

F <= s1 or s2 or s3;
end flow;
