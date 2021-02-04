library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

use work.vivado_pkg.ALL;

entity top is
end entity top;

architecture RTL of top is
    attribute LOC : string;
    attribute LOC of lut_inst : label is "SLICE_X0Y0";

    signal emio_gpio_i : std_logic_vector (63 downto 0);
    signal emio_gpio_o : std_logic_vector (63 downto 0);
begin
    ps7_stub_inst : entity work.ps7_stub
    port map (
        emio_gpio_i => emio_gpio_i,
        emio_gpio_o => emio_gpio_o );

    lut_inst : entity work.lut
    port map (
        x => emio_gpio_o(3 downto 0),
        f => emio_gpio_i(4) 
    );

end architecture RTL;
