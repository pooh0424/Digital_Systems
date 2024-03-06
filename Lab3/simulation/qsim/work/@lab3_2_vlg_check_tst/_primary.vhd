library verilog;
use verilog.vl_types.all;
entity Lab3_2_vlg_check_tst is
    port(
        sevensegement0  : in     vl_logic_vector(0 to 6);
        sevensegement1  : in     vl_logic_vector(0 to 6);
        sevensegement2  : in     vl_logic_vector(0 to 6);
        sevensegement3  : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Lab3_2_vlg_check_tst;
