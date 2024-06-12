library verilog;
use verilog.vl_types.all;
entity Lab12_1_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        SW              : in     vl_logic_vector(0 downto 0);
        sampler_tx      : out    vl_logic
    );
end Lab12_1_vlg_sample_tst;
