library verilog;
use verilog.vl_types.all;
entity Lab8_2_vlg_check_tst is
    port(
        GPIO_0          : in     vl_logic_vector(21 downto 9);
        GPIO_1          : in     vl_logic_vector(21 downto 9);
        sampler_rx      : in     vl_logic
    );
end Lab8_2_vlg_check_tst;
