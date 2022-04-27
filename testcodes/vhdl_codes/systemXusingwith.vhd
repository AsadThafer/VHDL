entity systemX is
port(A,B,C : in bit;
     F: out bit);
end entity;

architecture flow of systemX is
signal ABC : bit_vector(2 downto 0);
begin
ABC <= A&B&C;  --concatenate (not and)
with (ABC) select
F <= '1' when "000"|"010"|"110", -- we use | (or conditions) 
     '0' when others;
end architecture;