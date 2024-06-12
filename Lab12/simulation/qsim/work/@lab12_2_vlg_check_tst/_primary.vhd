library verilog;
use verilog.vl_types.all;
entity Lab12_2_vlg_check_tst is
    port(
        Bout            : in     vl_logic_vector(3 downto 0);
        Gout            : in     vl_logic_vector(3 downto 0);
        HOR_SYN         : in     vl_logic;
        Rout            : in     vl_logic_vector(3 downto 0);
        VER_SYN         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Lab12_2_vlg_check_tst;
