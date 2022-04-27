entity decoder3_8 is
port (A,B,C : in bit;
      F0,F1,F2,F3,F4,F5,F6,F7 : out bit);
	  end entity;
	  
architecture flow of decoder3_8 is
signal ABC: bit_vector(2 downto 0);
begin
ABC <=A & B & C;
with (ABC) select
F0 <='1' when "000",'0' when others;


with (ABC) select
F1 <='1' when "001",'0' when others;

with (ABC) select
F2 <='1' when "010",'0' when others;

with (ABC) select
F3 <='1' when "011",'0' when others;

with (ABC) select
F4 <='1' when "100",'0' when others;

with (ABC) select
F5 <='1' when "101",'0' when others;

with (ABC) select
F6 <='1' when "110",'0' when others;

with (ABC) select
F7 <='1' when "111",'0' when others;
end architecture;