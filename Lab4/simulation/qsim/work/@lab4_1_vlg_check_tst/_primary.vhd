library verilog;
use verilog.vl_types.all;
entity Lab4_1_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(0 to 6);
        HEX1            : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Lab4_1_vlg_check_tst;
