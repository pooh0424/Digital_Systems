library verilog;
use verilog.vl_types.all;
entity Lab9_1_vlg_check_tst is
    port(
        LEDG            : in     vl_logic_vector(9 downto 5);
        sampler_rx      : in     vl_logic
    );
end Lab9_1_vlg_check_tst;
