library ieee ;
use ieee . std_logic_1164 . all ;
-- ------------------------------------
entity teste1 is
port (
a , b: in bit ;
z: out bit
);
end entity ;
-- ------------------------------------
architecture teste1 of teste1 is
begin
z <= a and b;
end architecture ;