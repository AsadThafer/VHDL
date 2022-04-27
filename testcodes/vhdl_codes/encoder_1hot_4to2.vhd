entity encoder_1hot_4to2 is
port(ABCD : in bit_vector(3 downto 0);
     YZ : out bit_vector(1 downto 0));
	end entity;
architecture behavior of encoder_1hot_4to2 is
begin
YZ(1) <= ABCD(3) or ABCD(2);
YZ(0) <= ABCD(3) or ABCD(1);
end behavior;


--using bit_vector
-- y = 1 when index 3 and index 2 = 1 (AB)
-- z = 1 when index 2 and index 3 = 1 (AC) 

-- yz(1) means y
-- yz(0) means z
-- ABCD(3) means A000 ABCD(1) means 0010
-- ABCD(3) + ABCD(2) = YZ(1) 