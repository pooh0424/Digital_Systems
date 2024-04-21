library verilog;
use verilog.vl_types.all;
entity Lab7_1_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(1 downto 1);
        sampler_tx      : out    vl_logic
    );
end Lab7_1_vlg_sample_tst;
