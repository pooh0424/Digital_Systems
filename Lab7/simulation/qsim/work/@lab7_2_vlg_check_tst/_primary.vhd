library verilog;
use verilog.vl_types.all;
entity Lab7_2_vlg_check_tst is
    port(
        HEX2            : in     vl_logic_vector(0 to 6);
        HEX3            : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Lab7_2_vlg_check_tst;
