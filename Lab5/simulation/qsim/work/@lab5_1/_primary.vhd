library verilog;
use verilog.vl_types.all;
entity Lab5_1 is
    port(
        SW              : in     vl_logic_vector(7 downto 0);
        KEY             : in     vl_logic_vector(2 downto 0);
        HEX0            : out    vl_logic_vector(0 to 6);
        HEX1            : out    vl_logic_vector(0 to 6);
        LEDG            : out    vl_logic_vector(9 downto 9)
    );
end Lab5_1;
