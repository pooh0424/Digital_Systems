library verilog;
use verilog.vl_types.all;
entity Lab3_2 is
    port(
        switch          : in     vl_logic_vector(1 downto 0);
        sevensegement0  : out    vl_logic_vector(0 to 6);
        sevensegement1  : out    vl_logic_vector(0 to 6);
        sevensegement2  : out    vl_logic_vector(0 to 6);
        sevensegement3  : out    vl_logic_vector(0 to 6)
    );
end Lab3_2;
