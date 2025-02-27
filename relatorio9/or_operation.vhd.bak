library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or_Operation is
    Port (
        A : in STD_LOGIC_VECTOR(2 downto 0);
        B : in STD_LOGIC_VECTOR(2 downto 0);
        Or_Result : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Or_Operation;

architecture Behavioral of Or_Operation is
begin
    process(A, B)
    begin
        Or_Result <= "00000" & (A or B);
    end process;
end Behavioral;