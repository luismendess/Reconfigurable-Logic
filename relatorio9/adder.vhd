library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Adder is
    Port (
        A : in STD_LOGIC_VECTOR(2 downto 0);
        B : in STD_LOGIC_VECTOR(2 downto 0);
        Sum : out STD_LOGIC_VECTOR(7 downto 0);
        Overflow : out STD_LOGIC
    );
end Adder;

architecture Behavioral of Adder is
begin
    process(A, B)
        variable temp : UNSIGNED(7 downto 0);
    begin
        temp := RESIZE(UNSIGNED(A), 8) + RESIZE(UNSIGNED(B), 8);
        Sum <= STD_LOGIC_VECTOR(temp);
        if temp(7) = '1' then
            Overflow <= '1';
        else
            Overflow <= '0';
        end if;
    end process;
end Behavioral;