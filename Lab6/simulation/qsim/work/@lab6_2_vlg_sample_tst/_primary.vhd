library verilog;
use verilog.vl_types.all;
entity Lab6_2_vlg_sample_tst is
    port(
        KEY             : in     vl_logic_vector(2 downto 1);
        SW              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Lab6_2_vlg_sample_tst;
