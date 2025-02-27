library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Calculator is
    Port (
        SW : in STD_LOGIC_VECTOR(9 downto 0);
        SEG1 : out STD_LOGIC_VECTOR(6 downto 0);
        SEG2 : out STD_LOGIC_VECTOR(6 downto 0);
        Overflow : out STD_LOGIC
    );
end Calculator;

architecture Behavioral of Calculator is
    signal num1, num2 : STD_LOGIC_VECTOR(2 downto 0);
    signal Opcode : STD_LOGIC_VECTOR(2 downto 0);
    signal Sum, Diff, Prod, Quot, And_Result, Or_Result : STD_LOGIC_VECTOR(7 downto 0);
    signal Sum_Overflow, Prod_Overflow : STD_LOGIC;
    signal Div_By_Zero : STD_LOGIC;
    signal Result : STD_LOGIC_VECTOR(7 downto 0);
    signal Result_LSB : STD_LOGIC_VECTOR(3 downto 0);
    signal Result_MSB : STD_LOGIC_VECTOR(3 downto 0);
begin
    -- Mapear entradas
    num1 <= SW(2 downto 0);
    num2 <= SW(5 downto 3);
    Opcode <= SW(8 downto 6);

    -- Instanciar os módulos de operação
    U1: entity work.Adder port map (A => num1, B => num2, Sum => Sum, Overflow => Sum_Overflow);
    U2: entity work.Subtractor port map (A => num1, B => num2, Diff => Diff);
    U3: entity work.Multiplier port map (A => num1, B => num2, Prod => Prod, Overflow => Prod_Overflow);
    U4: entity work.Divider port map (A => num1, B => num2, Quot => Quot, Div_By_Zero => Div_By_Zero);
    U5: entity work.And_Operation port map (A => num1, B => num2, And_Result => And_Result);
    U6: entity work.Or_Operation port map (A => num1, B => num2, Or_Result => Or_Result);

    process(num1, num2, Opcode, Sum, Diff, Prod, Quot, And_Result, Or_Result, Sum_Overflow, Prod_Overflow, Div_By_Zero)
    begin
        Overflow <= '0'; -- Zerar overflow por padrão
        case Opcode is
            when "000" => -- Soma
                Result <= Sum;
                Overflow <= Sum_Overflow;
            when "001" => -- Subtração
                Result <= Diff;
            when "010" => -- Multiplicação
                Result <= Prod;
                Overflow <= Prod_Overflow;
            when "011" => -- Divisão
                if Div_By_Zero = '1' then
                    Result <= (others => 'X'); -- Divisão por zero
                else
                    Result <= Quot;
                end if;
            when "100" => -- AND
                Result <= And_Result;
            when "101" => -- OR
                Result <= Or_Result;
            when others =>
                Result <= (others => '0');
        end case;
    end process;

    -- Dividir o resultado em dígitos menos significativo (LSB) e mais significativo (MSB)
    Result_LSB <= Result(3 downto 0);
    Result_MSB <= Result(7 downto 4);

    -- Instanciar decodificadores de 7 segmentos
    U7: entity work.SevenSegmentDecoder port map (binary_in => Result_LSB, seg => SEG1);
    U8: entity work.SevenSegmentDecoder port map (binary_in => Result_MSB, seg => SEG2);
end Behavioral;