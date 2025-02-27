library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Declaração da entidade principal do sistema
entity atividade7 is
    Port (
        clk      : in  STD_LOGIC;  -- Clock de entrada (50 MHz assumido)
        rst_n    : in  STD_LOGIC;  -- Reset assíncrono ativo em nível baixo
        time_sel : in  STD_LOGIC;  -- Seleção do tempo (0 = 1Hz/10s, 1 = 0.5Hz/20s)
        pause    : in  STD_LOGIC;  -- Sinal de pausa (ativo em nível alto)
        led      : out STD_LOGIC;  -- LED que acende ao final da contagem
        ssd_seg  : out STD_LOGIC_VECTOR(6 downto 0)  -- Saída para display de 7 segmentos
    );
end atividade7;

architecture Behavioral of atividade7 is
    -- Declaração de sinais internos
    signal counter       : integer := 10;       -- Contador inicializado com 10 segundos
    signal clk_timer     : STD_LOGIC := '0';    -- Clock ajustado pelo divisor
    signal bcd           : STD_LOGIC_VECTOR(7 downto 0) := (others => '0'); -- Valor BCD do contador
    signal divisor_value : integer := 50000000; -- Valor padrão do divisor para 1 Hz (50 MHz)

    -- Função para converter um número inteiro em BCD (2 dígitos, 0-99)
    function to_bcd (num : integer) return STD_LOGIC_VECTOR is
        variable unidades : integer;
        variable dezenas  : integer;
    begin
        unidades := num mod 10;
        dezenas  := (num / 10) mod 10;
        return std_logic_vector(to_unsigned(dezenas, 4)) & std_logic_vector(to_unsigned(unidades, 4));
    end function;

    -- Função para converter um dígito BCD para a saída do display de 7 segmentos
    function bcd_to_ssd(digit : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
    begin
        case digit is
            when "0000" => return "1000000"; -- 0
            when "0001" => return "1111001"; -- 1
            when "0010" => return "0100100"; -- 2
            when "0011" => return "0110000"; -- 3
            when "0100" => return "0011001"; -- 4
            when "0101" => return "0010010"; -- 5
            when "0110" => return "0000010"; -- 6
            when "0111" => return "1111000"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0010000"; -- 9
            when others => return "1111111"; -- Desligado
        end case;
    end function;

begin
    -- Define o valor do divisor com base na seleção de tempo
    divisor_value <= 50000000 when time_sel = '0' else  -- 1 Hz (10s)
                     15000000 when time_sel = '1';      -- 3.33 Hz (0.3s por ciclo, 0.6s total)

    -- Processo para gerar um clock mais lento baseado no clock principal
    process(clk)
        variable count : integer := 0;
    begin
        if rising_edge(clk) then
            count := count + 1;
            if count = divisor_value then
                clk_timer <= not clk_timer; -- Inverte o clock ajustado
                count := 0;
            end if;
        end if;
    end process;

    -- Processo principal do timer
    process(clk_timer, rst_n)
    begin
        if rst_n = '0' then
            counter <= 10;          -- Reinicializa o contador para 10 segundos
            led <= '0';             -- Apaga o LED
        elsif rising_edge(clk_timer) then
            if pause = '0' then  -- Apenas decrementa se o pause estiver desativado
                if counter > 0 then
                    counter <= counter - 1; -- Decrementa o contador
                else
                    led <= '1';     -- Acende o LED quando o contador chega a zero
                    counter <= 10;  -- Reinicia a contagem
                end if;
            end if;
        end if;
    end process;

    -- Atualiza os sinais BCD e display de 7 segmentos
    bcd <= to_bcd(counter);
    ssd_seg <= bcd_to_ssd(bcd(3 downto 0)); -- Mostra apenas as unidades no display

end Behavioral;
