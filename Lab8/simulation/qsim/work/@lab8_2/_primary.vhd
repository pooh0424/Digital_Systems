library verilog;
use verilog.vl_types.all;
entity Lab8_2 is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(2 downto 2);
        GPIO_0          : out    vl_logic_vector(21 downto 9);
        GPIO_1          : out    vl_logic_vector(21 downto 9)
    );
end Lab8_2;
