------- Componente: --------------------------------
entity full_adder is
    port(a, b, cin: in bit;
         s, cout: out bit);
end full_adder;
----------------------------------------------------
architecture full_adder of full_adder is
begin
    s <= a xor b xor cin;
    cout <= (a and b) or (a and cin) or (b and cin);
end;
----------------------------------------------------

---------- Código principal: -----------------------
entity aula11exemplo3 is
    generic (N: integer := 8); -- Número de bits
    port (a, b: in bit_vector(N-1 downto 0);
          cin: in bit;
          s: out bit_vector(N-1 downto 0);
          cout: out bit);
end;
----------------------------------------------------
architecture aula11exemplo3 of aula11exemplo3 is
    signal carry: bit_vector(n downto 0);
    ------------------------------------------------
    component full_adder is
        port (a, b, cin: in bit; s, cout: out bit);
    end component;
    ------------------------------------------------
begin
    carry(0) <= cin;
    gen_adder: for i in a'range generate
        fa: full_adder port map (a(i), b(i), carry(i), s(i), carry(i+1));
    end generate;
    cout <= carry(N);
end architecture;
----------------------------------------------------