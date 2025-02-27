library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LuzesPiscando is
    Port (
        clock : in STD_LOGIC;
        enable : in STD_LOGIC;
        botaoVelocidade : in STD_LOGIC;
        botaoReset : in STD_LOGIC; -- Botão de reset
        LEDs : out STD_LOGIC_VECTOR (9 downto 0)
    );
end entity;

architecture LuzesPiscando of LuzesPiscando is
    signal indiceLED : INTEGER range 0 to 9 := 0;
    signal direcao : STD_LOGIC := '1'; -- '1' para frente, '0' para trás
    signal velocidade : INTEGER range 0 to 2 := 0;
    signal contador : INTEGER := 0;
    signal botaoVelocidadePrev : STD_LOGIC := '0';
    signal botaoResetPrev : STD_LOGIC := '0'; -- Para detectar borda de subida no botão de reset
    signal pausado : BOOLEAN := false;
    signal resetAtivado : BOOLEAN := false; -- Indica se o reset foi ativado
begin
    process (clock)
    begin
        if rising_edge(clock) then
            -- Detectar borda de subida do botão de reset
            if botaoReset = '1' and botaoResetPrev = '0' then
                resetAtivado <= true; -- Ativar o reset
            end if;
            botaoResetPrev <= botaoReset;

            -- Lógica de Reset
            if resetAtivado then
                -- Reinicia todas as variáveis
                indiceLED <= 0;
                direcao <= '1';
                velocidade <= 0;
                contador <= 0;
                pausado <= false;
                LEDs <= (others => '0');
                LEDs(0) <= '1'; -- O LED inicial é aceso
                resetAtivado <= false; -- Reset concluído
            elsif enable = '1' then
                pausado <= false; -- O circuito está ativo

                -- Controle do botão de velocidade
                if botaoVelocidade = '1' and botaoVelocidadePrev = '0' then
                    velocidade <= velocidade + 1;
                    if velocidade > 2 then
                        velocidade <= 0;
                    end if;
                end if;
                botaoVelocidadePrev <= botaoVelocidade;

                -- Incremento do contador baseado na velocidade
                contador <= contador + 1;
                if contador >= (5000000 / (2**(velocidade - 1))) then
                    contador <= 0;
                    LEDs <= (others => '0');
                    LEDs(indiceLED) <= '1';

                    -- Controle da direção e movimentação do índice do LED
                    if direcao = '1' then
                        if indiceLED = 9 then
                            direcao <= '0';
                            indiceLED <= indiceLED - 1;
                        else
                            indiceLED <= indiceLED + 1;
                        end if;
                    else
                        if indiceLED = 0 then
                            direcao <= '1';
                            indiceLED <= indiceLED + 1;
                        else
                            indiceLED <= indiceLED - 1;
                        end if;
                    end if;
                end if;
            elsif enable = '0' then
                pausado <= true; -- O circuito está em pausa
            end if;

            -- Se estiver pausado, mantém o último estado dos LEDs
            if pausado then
                LEDs <= (others => '0');
                LEDs(indiceLED) <= '1';
            end if;
        end if;
    end process;
end architecture;
