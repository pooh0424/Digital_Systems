library verilog;
use verilog.vl_types.all;
entity Lab6_1 is
    port(
        KEY             : in     vl_logic_vector(2 downto 1);
        HEX0            : out    vl_logic_vector(0 to 6);
        HEX3            : out    vl_logic_vector(0 to 6)
    );
end Lab6_1;
