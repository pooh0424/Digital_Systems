library verilog;
use verilog.vl_types.all;
entity Lab4_2_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(0 to 6);
        HEX1            : in     vl_logic_vector(0 to 6);
        LEDG            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Lab4_2_vlg_check_tst;
