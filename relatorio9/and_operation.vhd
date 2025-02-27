library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And_Operation is
    Port (
        A : in STD_LOGIC_VECTOR(2 downto 0);
        B : in STD_LOGIC_VECTOR(2 downto 0);
        And_Result : out STD_LOGIC_VECTOR(7 downto 0)
    );
end And_Operation;

architecture Behavioral of And_Operation is
begin
    process(A, B)
    begin
        And_Result <= "00000" & (A and B);
    end process;
end Behavioral;