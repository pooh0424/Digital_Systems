library verilog;
use verilog.vl_types.all;
entity Lab7_1_vlg_check_tst is
    port(
        LEDG            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Lab7_1_vlg_check_tst;
