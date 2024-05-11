library verilog;
use verilog.vl_types.all;
entity Lab10_2_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(2 downto 1);
        sampler_tx      : out    vl_logic
    );
end Lab10_2_vlg_sample_tst;
