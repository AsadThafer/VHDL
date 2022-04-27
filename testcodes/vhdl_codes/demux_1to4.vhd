entity demux_1to4 is
port(A : in bit;
     Sel : in bit_vector (1 downto 0);
	 W,X,Y,Z : out bit);
end entity;

architecture demux_1to4_arc of demux_1to4 is 
begin
with(Sel) select
W <= A when"00",'0' when others;

with(Sel) select
X <= A when"01",'0' when others;

with(Sel) select
Y <= A when"10",'0' when others;

with(Sel) select
Z <= A when"11",'0' when others;
end architecture;