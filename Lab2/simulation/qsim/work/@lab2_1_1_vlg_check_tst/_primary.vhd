library verilog;
use verilog.vl_types.all;
entity Lab2_1_1_vlg_check_tst is
    port(
        prime           : in     vl_logic;
        sevensegement   : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Lab2_1_1_vlg_check_tst;
