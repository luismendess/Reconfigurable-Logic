library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Subtractor is
    Port (
        A : in STD_LOGIC_VECTOR(2 downto 0);
        B : in STD_LOGIC_VECTOR(2 downto 0);
        Diff : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Subtractor;

architecture Behavioral of Subtractor is
begin
    process(A, B)
        variable temp : SIGNED(7 downto 0);
    begin
        temp := RESIZE(SIGNED(A), 8) - RESIZE(SIGNED(B), 8);
        Diff <= STD_LOGIC_VECTOR(temp);
    end process;
end Behavioral;