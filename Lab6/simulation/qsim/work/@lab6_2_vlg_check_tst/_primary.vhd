library verilog;
use verilog.vl_types.all;
entity Lab6_2_vlg_check_tst is
    port(
        LEDG            : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end Lab6_2_vlg_check_tst;
