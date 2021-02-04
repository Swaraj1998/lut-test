library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity lut is
    port (
        x : in std_logic_vector (3 downto 0);
        --
        f : out std_logic );
end entity lut;

architecture RTL of lut is
begin
    process (x)
    begin
        case x is
            when "0000" => f <= '1';
            when others => f <= '0';
        end case;
    end process;
end architecture RTL;
