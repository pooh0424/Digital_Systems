library verilog;
use verilog.vl_types.all;
entity Lab7_1 is
    port(
        KEY             : in     vl_logic_vector(1 downto 1);
        LEDG            : out    vl_logic_vector(7 downto 0);
        CLOCK_50        : in     vl_logic
    );
end Lab7_1;
