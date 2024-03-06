library verilog;
use verilog.vl_types.all;
entity Lab3_1 is
    port(
        switch          : in     vl_logic_vector(1 downto 0);
        sevensegement   : out    vl_logic_vector(0 to 6)
    );
end Lab3_1;
