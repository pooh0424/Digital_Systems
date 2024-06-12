library verilog;
use verilog.vl_types.all;
entity Lab12_2_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(0 downto 0);
        PS2_KBCLK       : in     vl_logic;
        PS2_KBDAT       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Lab12_2_vlg_sample_tst;
