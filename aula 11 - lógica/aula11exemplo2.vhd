---------------------------------------------------------
use work.my_package.all;
---------------------------------------------------------
entity aula11exemplo2 is
    port(a, b: in integer range -128 to 127;
         x, y: out integer range -128 to 127);
end;
---------------------------------------------------------
architecture aula11exemplo2 of aula11exemplo2 is
begin
    sort_data(a, b, x, y);
end;
---------------------------------------------------------