library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Divider is
    Port (
        A : in STD_LOGIC_VECTOR(2 downto 0);
        B : in STD_LOGIC_VECTOR(2 downto 0);
        Quot : out STD_LOGIC_VECTOR(7 downto 0);
        Div_By_Zero : out STD_LOGIC
    );
end Divider;

architecture Behavioral of Divider is
begin
    process(A, B)
        variable int_A : INTEGER;
        variable int_B : INTEGER;
        variable int_Quot : INTEGER;
    begin
        int_A := TO_INTEGER(UNSIGNED(A));
        int_B := TO_INTEGER(UNSIGNED(B));

        if int_B = 0 then
            Div_By_Zero <= '1';
            Quot <= (others => 'X'); -- Divisão por zero
        else
            Div_By_Zero <= '0';
            int_Quot := int_A / int_B;
            Quot <= STD_LOGIC_VECTOR(TO_UNSIGNED(int_Quot, 8));
        end if;
    end process;
end Behavioral;