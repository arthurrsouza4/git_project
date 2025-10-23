module ent (
  input clock
);
  // Sinal interno. Deve ser 'reg' porque é atribuído 
  // dentro de um bloco 'always' (processo síncrono).
  reg sig;

  // Bloco síncrono, sensível à borda de subida (posedge) do clock.
  // Equivalente ao 'process(clock)' com 'if rising_edge(clock)'.
  always @(posedge clock) begin
    // Atribuição não-bloqueante (<=)
    // '~' é o operador 'not' em Verilog.
    sig <= ~sig;
  end

endmodule