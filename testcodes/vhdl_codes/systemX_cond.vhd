entity systemX_cond is
port(A,B,C :in bit;
     F:out bit);
end entity;
architecture behavior of systemX is
begin
F<= '1' when (A='0' and B='0' and C='0') else
    '1' when (A='0' and B'1' and C='0') else
	'1' when (A='1' and B='1' and C'0') else
	'0';
end architecture;

-- this is a simplified systemX using when and else conditions
--values are from the trurth table