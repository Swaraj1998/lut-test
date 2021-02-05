library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

use work.vivado_pkg.ALL;

entity top is
end entity top;

architecture RTL of top is
    attribute LOC : string;
    attribute LOC of LUT5_inst : label is "SLICE_X0Y0";

    signal emio_gpio_i : std_logic_vector (63 downto 0);
    signal emio_gpio_o : std_logic_vector (63 downto 0);
begin
    ps7_stub_inst : entity work.ps7_stub
    port map (
        emio_gpio_i => emio_gpio_i,
        emio_gpio_o => emio_gpio_o );

    LUT5_inst : LUT5
    generic map (
        INIT => X"00000001" )
    port map (
        I0 => emio_gpio_o(0),
        I1 => emio_gpio_o(1),
        I2 => emio_gpio_o(2),
        I3 => emio_gpio_o(3),
        I4 => emio_gpio_o(4),
        O => emio_gpio_i(5) );

end architecture RTL;
