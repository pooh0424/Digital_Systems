library verilog;
use verilog.vl_types.all;
entity Lab2_1 is
    port(
        switch          : in     vl_logic_vector(3 downto 0);
        sevensegement   : out    vl_logic_vector(0 to 6)
    );
end Lab2_1;
