library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiplier is
    Port (
        A : in STD_LOGIC_VECTOR(2 downto 0);
        B : in STD_LOGIC_VECTOR(2 downto 0);
        Prod : out STD_LOGIC_VECTOR(7 downto 0);
        Overflow : out STD_LOGIC
    );
end Multiplier;

architecture Behavioral of Multiplier is
begin
    process(A, B)
    variable temp : STD_LOGIC_VECTOR(7 downto 0);
    begin
        temp := ('0' & A) * ('0' & B);
        Prod <= temp;
        if temp(7) = '1' then
            Overflow <= '1';
        else
            Overflow <= '0';
        end if;
    end process;
end Behavioral;