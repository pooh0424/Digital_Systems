library verilog;
use verilog.vl_types.all;
entity Lab9_2 is
    port(
        KEY             : in     vl_logic_vector(2 downto 1);
        SW              : in     vl_logic_vector(0 downto 0);
        LEDG            : out    vl_logic_vector(9 downto 4)
    );
end Lab9_2;
