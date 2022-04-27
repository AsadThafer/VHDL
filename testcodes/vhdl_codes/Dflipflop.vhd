entity Dflipflop is
port(Clock : in bit;
     D     :in bit;
	 Q     :out bit);
end entity;

architecture Dflipflop_arch of Dflipflop is
begin
D_Flip_Flop : process(Clock)
begin
if (Clock'event and Clock = '1') then
Q<=D;
end if;
end process;
end architecture;