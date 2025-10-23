entity ent is
  port (
    clock : in std_logic
  ) ;
end ent;

architecture arch of ent is
    signal sig : std_logic;
begin
  process(clock)
  begin
    if rising_edge(clock) then
      sig <= not sig;
    end if;
  end process;
end arch;
