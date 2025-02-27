------------------------------------------------------------
use work.subprograms_pkg.all;
------------------------------------------------------------
entity aula11exemplo1 is
    generic (
        bits: natural := 8);
    port (
        inp: in positive range 1 to 2**bits-1;
        outp: out natural range 0 to bits);
end entity;

architecture aula11exemplo11 of aula11exemplo1 is
begin
    outp <= ceil_log2(inp);
end architecture;
------------------------------------------------------------