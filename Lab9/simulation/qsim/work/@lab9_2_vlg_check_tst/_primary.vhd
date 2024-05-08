library verilog;
use verilog.vl_types.all;
entity Lab9_2_vlg_check_tst is
    port(
        LEDG            : in     vl_logic_vector(9 downto 4);
        sampler_rx      : in     vl_logic
    );
end Lab9_2_vlg_check_tst;
