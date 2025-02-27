library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity semaforos is
    port (
        clock       : in std_logic;                    -- Sinal de clock principal (50 MHz na DE10-Lite)
        reset       : in std_logic;                    -- Botão de reset (ativo em baixo na placa)
        mode_select : in std_logic_vector(1 downto 0); -- Seleção de modo: 00-Normal, 01-Teste, 10-Standby
        semaforo1   : out std_logic_vector(2 downto 0); -- Saídas para o primeiro semáforo (G,Y,R)
        semaforo2   : out std_logic_vector(2 downto 0)  -- Saídas para o segundo semáforo (G,Y,R)
    );
end entity semaforos;

architecture semaforos of semaforos is
    -- Definição dos estados das luzes dos semáforos
    -- Atenção: Na DE10-Lite, os LEDs acendem com '0', então invertemos a lógica
    constant GREEN  : std_logic_vector(2 downto 0) := "100"; -- Verde (bit 2 ativo baixo)
    constant YELLOW : std_logic_vector(2 downto 0) := "010"; -- Amarelo (bit 1 ativo baixo)
    constant RED    : std_logic_vector(2 downto 0) := "001"; -- Vermelho (bit 0 ativo baixo)
    constant OFF    : std_logic_vector(2 downto 0) := "000"; -- Todas as luzes apagadas
    -- Estados da máquina de estados principal
    type estado_t is (S1_GREEN_S2_RED, S1_YELLOW_S2_RED, S1_RED_S2_GREEN, S1_RED_S2_YELLOW, STANDBY_ON, STANDBY_OFF);
    signal estado_atual, proximo_estado : estado_t;
    -- Divisor de frequência para tornar a contagem visível
    constant DIVISOR : integer := 25000000; -- Divide por 25M para ter períodos de 0,5 segundo
    -- Tempos para o modo normal (em períodos de 0,5 segundo)
    constant TEMPO_VERDE_S1   : integer := 10;  -- 5 segundos no verde para semáforo 1
    constant TEMPO_AMARELO    : integer := 4;   -- 2 segundos no amarelo (ambos semáforos)
    constant TEMPO_VERDE_S2   : integer := 8;   -- 4 segundos no verde para semáforo 2 (tempo diferente)
    -- Tempos para o modo teste (5x mais rápido)
    constant TEMPO_VERDE_S1_TESTE   : integer := 2;  -- 1 segundo
    constant TEMPO_AMARELO_TESTE    : integer := 1;  -- 0,5 segundo
    constant TEMPO_VERDE_S2_TESTE   : integer := 2;  -- 1 segundo
    -- Tempo para o standby (piscar a cada 0.5 segundos)
    constant TEMPO_STANDBY    : integer := 1;   -- 0,5 segundo
    -- Sinais internos
    signal contador : integer range 0 to TEMPO_VERDE_S1 := 0;
    signal tempo_atual : integer range 0 to TEMPO_VERDE_S1 := 0;
    signal clock_div : std_logic := '0';
    signal contador_div : integer range 0 to DIVISOR := 0;
    
begin
    -- Processo para divisão do clock (torna a operação visível)
    process(clock, reset)
    begin
        if reset = '0' then  -- Reset ativo em baixo na DE10-Lite
            contador_div <= 0;
            clock_div <= '0';
        elsif rising_edge(clock) then
            if contador_div = DIVISOR-1 then
                contador_div <= 0;
                clock_div <= not clock_div;
            else
                contador_div <= contador_div + 1;
            end if;
        end if;
    end process;
    -- Processo para atualizar o estado atual e o contador
    process(clock_div, reset)
    begin
        if reset = '0' then -- Reset ativo em baixo na DE10-Lite
            -- Reset: inicializa estado e contador
            estado_atual <= S1_GREEN_S2_RED;
            contador <= 0;
        elsif rising_edge(clock_div) then
            -- Incrementa contador e verifica transições de estado
            if contador >= tempo_atual - 1 then
                estado_atual <= proximo_estado;
                contador <= 0;
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;
    -- Processo para determinar o próximo estado e o tempo necessário
    process(estado_atual, mode_select, contador)
    begin
        -- Valores padrão (serão sobrescritos conforme necessário)
        proximo_estado <= estado_atual;
        tempo_atual <= TEMPO_VERDE_S1;
        
        case mode_select is
            when "00" =>  -- Modo Normal
                case estado_atual is
                    when S1_GREEN_S2_RED =>
                        tempo_atual <= TEMPO_VERDE_S1;
                        if contador >= TEMPO_VERDE_S1 - 1 then
                            proximo_estado <= S1_YELLOW_S2_RED;
                        end if;
                    
                    when S1_YELLOW_S2_RED =>
                        tempo_atual <= TEMPO_AMARELO;
                        if contador >= TEMPO_AMARELO - 1 then
                            proximo_estado <= S1_RED_S2_GREEN;
                        end if;
                    
                    when S1_RED_S2_GREEN =>
                        tempo_atual <= TEMPO_VERDE_S2;
                        if contador >= TEMPO_VERDE_S2 - 1 then
                            proximo_estado <= S1_RED_S2_YELLOW;
                        end if;
                    
                    when S1_RED_S2_YELLOW =>
                        tempo_atual <= TEMPO_AMARELO;
                        if contador >= TEMPO_AMARELO - 1 then
                            proximo_estado <= S1_GREEN_S2_RED;
                        end if;
                    
                    when others =>
                        proximo_estado <= S1_GREEN_S2_RED;
                end case;
            
            when "01" =>  -- Modo Teste (mais rápido)
                case estado_atual is
                    when S1_GREEN_S2_RED =>
                        tempo_atual <= TEMPO_VERDE_S1_TESTE;
                        if contador >= TEMPO_VERDE_S1_TESTE - 1 then
                            proximo_estado <= S1_YELLOW_S2_RED;
                        end if;
                    
                    when S1_YELLOW_S2_RED =>
                        tempo_atual <= TEMPO_AMARELO_TESTE;
                        if contador >= TEMPO_AMARELO_TESTE - 1 then
                            proximo_estado <= S1_RED_S2_GREEN;
                        end if;
                    
                    when S1_RED_S2_GREEN =>
                        tempo_atual <= TEMPO_VERDE_S2_TESTE;
                        if contador >= TEMPO_VERDE_S2_TESTE - 1 then
                            proximo_estado <= S1_RED_S2_YELLOW;
                        end if;
                    
                    when S1_RED_S2_YELLOW =>
                        tempo_atual <= TEMPO_AMARELO_TESTE;
                        if contador >= TEMPO_AMARELO_TESTE - 1 then
                            proximo_estado <= S1_GREEN_S2_RED;
                        end if;
                    
                    when others =>
                        proximo_estado <= S1_GREEN_S2_RED;
                end case;
            
            when "10" =>  -- Modo Standby (LEDs amarelos piscando)
                tempo_atual <= TEMPO_STANDBY;
                case estado_atual is
                    when STANDBY_ON =>
                        if contador >= TEMPO_STANDBY - 1 then
                            proximo_estado <= STANDBY_OFF;
                        end if;
                    
                    when STANDBY_OFF =>
                        if contador >= TEMPO_STANDBY - 1 then
                            proximo_estado <= STANDBY_ON;
                        end if;
                    
                    when others =>
                        proximo_estado <= STANDBY_ON;
                end case;
            
            when others =>  -- Modo inválido, usa o normal
                case estado_atual is
                    when S1_GREEN_S2_RED =>
                        tempo_atual <= TEMPO_VERDE_S1;
                        if contador >= TEMPO_VERDE_S1 - 1 then
                            proximo_estado <= S1_YELLOW_S2_RED;
                        end if;
                    
                    when S1_YELLOW_S2_RED =>
                        tempo_atual <= TEMPO_AMARELO;
                        if contador >= TEMPO_AMARELO - 1 then
                            proximo_estado <= S1_RED_S2_GREEN;
                        end if;
                    
                    when S1_RED_S2_GREEN =>
                        tempo_atual <= TEMPO_VERDE_S2;
                        if contador >= TEMPO_VERDE_S2 - 1 then
                            proximo_estado <= S1_RED_S2_YELLOW;
                        end if;
                    
                    when S1_RED_S2_YELLOW =>
                        tempo_atual <= TEMPO_AMARELO;
                        if contador >= TEMPO_AMARELO - 1 then
                            proximo_estado <= S1_GREEN_S2_RED;
                        end if;
                    
                    when others =>
                        proximo_estado <= S1_GREEN_S2_RED;
                end case;
        end case;
    end process;
    -- Processo para definir as saídas dos semáforos
    process(estado_atual, mode_select)
    begin
        -- Valores padrão (todos apagados)
        semaforo1 <= OFF;
        semaforo2 <= OFF;
        
        case mode_select is
            when "00" | "01" =>  -- Modos Normal e Teste (lógica de semáforo padrão)
                case estado_atual is
                    when S1_GREEN_S2_RED =>
                        semaforo1 <= GREEN;
                        semaforo2 <= RED;
                    
                    when S1_YELLOW_S2_RED =>
                        semaforo1 <= YELLOW;
                        semaforo2 <= RED;
                    
                    when S1_RED_S2_GREEN =>
                        semaforo1 <= RED;
                        semaforo2 <= GREEN;
                    
                    when S1_RED_S2_YELLOW =>
                        semaforo1 <= RED;
                        semaforo2 <= YELLOW;
                    
                    when others =>
                        semaforo1 <= RED;
                        semaforo2 <= RED;
                end case;
            
            when "10" =>  -- Modo Standby (LEDs amarelos piscando)
                case estado_atual is
                    when STANDBY_ON =>
                        semaforo1 <= YELLOW;
                        semaforo2 <= YELLOW;
                    
                    when STANDBY_OFF =>
                        semaforo1 <= OFF;
                        semaforo2 <= OFF;
                    
                    when others =>
                        semaforo1 <= YELLOW;
                        semaforo2 <= YELLOW;
                end case;
            
            when others =>  -- Modo inválido ou não definido
                semaforo1 <= RED;
                semaforo2 <= RED;
        end case;
    end process;
    
end architecture semaforos;