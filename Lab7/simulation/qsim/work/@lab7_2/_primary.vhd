library verilog;
use verilog.vl_types.all;
entity Lab7_2 is
    port(
        KEY             : in     vl_logic_vector(1 downto 1);
        CLOck_50_2      : in     vl_logic;
        HEX2            : out    vl_logic_vector(0 to 6);
        HEX3            : out    vl_logic_vector(0 to 6)
    );
end Lab7_2;
