library verilog;
use verilog.vl_types.all;
entity Lab12_2 is
    port(
        CLOCK_50        : in     vl_logic;
        PS2_KBDAT       : in     vl_logic;
        PS2_KBCLK       : in     vl_logic;
        KEY             : in     vl_logic_vector(0 downto 0);
        VGA_R           : out    vl_logic_vector(3 downto 0);
        VGA_G           : out    vl_logic_vector(3 downto 0);
        VGA_B           : out    vl_logic_vector(3 downto 0);
        VGA_HS          : out    vl_logic;
        VGA_VS          : out    vl_logic
    );
end Lab12_2;
