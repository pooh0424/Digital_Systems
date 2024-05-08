library verilog;
use verilog.vl_types.all;
entity Lab9_2_vlg_sample_tst is
    port(
        KEY             : in     vl_logic_vector(2 downto 1);
        SW              : in     vl_logic_vector(0 downto 0);
        sampler_tx      : out    vl_logic
    );
end Lab9_2_vlg_sample_tst;
