entity seven_segmentdecoder is
port(ABC : in bit_vector(2 downto 0);
     F: out bit_vector(6 downto 0));
end entity;
architecture flow of seven_segmentdecoder is 
begin
with (ABC) select 
F <= "1111110" WHEN "000",
     "0110000" WHEN "001",
	 "1101101" WHEN "010",
	 "1111001" WHEN "011",
	 "0110011" WHEN "100",
	 "1011011" WHEN "101",
	 "1011111" WHEN "110",
	 "1110000" WHEN "111";
end architecture;
     
	 