library verilog;
use verilog.vl_types.all;
entity Lab3_2_vlg_sample_tst is
    port(
        switch          : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Lab3_2_vlg_sample_tst;
