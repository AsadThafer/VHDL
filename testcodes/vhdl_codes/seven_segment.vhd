entity seven_segment is
port(A,B,C: in bit;
     Fa,Fb,Fc,Fd,Fe,Ff,Fg : out bit);
	 architecture flow of seven_segment is 
	 signal nA,nB,nC : bit;
begin
nA <= not A;
nB <= not B;
nC <= not C;

Fa <=((nA) and (nC)) or B or (A and C);
Fb <= ((nB) and (nC)) or (not A) or (B and C);
Fc <= A or (not B) or C;
Fd <= ((nA) and (nC)) or ((nA) and B) or (B and (nC)) or (A and (nB) and C);
Fe <= ((nA) and (nC)) or (B and (nC));
Ff <=((nB) and (nC)) or (A and (nC)) or (A and (nB));
Fg <= ((nA) and B) or (A and (nC)) or (A and (nB));
end flow;