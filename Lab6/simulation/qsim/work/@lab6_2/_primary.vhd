library verilog;
use verilog.vl_types.all;
entity Lab6_2 is
    port(
        KEY             : in     vl_logic_vector(2 downto 1);
        SW              : in     vl_logic_vector(7 downto 0);
        LEDG            : out    vl_logic_vector(9 downto 0)
    );
end Lab6_2;
