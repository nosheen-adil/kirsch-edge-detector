----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use work.util.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      clk  : in STD_LOGIC
    ; reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in UNSIGNED (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out STD_LOGIC_VECTOR (2 downto 0)
    ; o_mode  : out STD_LOGIC_VECTOR (1 downto 0)
    ; o_row  : out UNSIGNED (7 downto 0)
    ; o_col  : out UNSIGNED (7 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.kirsch_gate
    port map (
        clk => clk
      , reset => reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , o_col(7) => o_col(7)
      , o_col(6) => o_col(6)
      , o_col(5) => o_col(5)
      , o_col(4) => o_col(4)
      , o_col(3) => o_col(3)
      , o_col(2) => o_col(2)
      , o_col(1) => o_col(1)
      , o_col(0) => o_col(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use work.util.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      clk  : in STD_LOGIC
    ; reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in UNSIGNED (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out STD_LOGIC_VECTOR (2 downto 0)
    ; o_mode  : out STD_LOGIC_VECTOR (1 downto 0)
    ; o_row  : out UNSIGNED (7 downto 0)
    ; o_col  : out UNSIGNED (7 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.kirsch_gate
    port map (
        clk => clk
      , reset => reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , o_col(7) => o_col(7)
      , o_col(6) => o_col(6)
      , o_col(5) => o_col(5)
      , o_col(4) => o_col(4)
      , o_col(3) => o_col(3)
      , o_col(2) => o_col(2)
      , o_col(1) => o_col(1)
      , o_col(0) => o_col(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use work.util.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      clk  : in STD_LOGIC
    ; reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in UNSIGNED (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out STD_LOGIC_VECTOR (2 downto 0)
    ; o_mode  : out STD_LOGIC_VECTOR (1 downto 0)
    ; o_row  : out UNSIGNED (7 downto 0)
    ; o_col  : out UNSIGNED (7 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.kirsch_gate
    port map (
        clk => clk
      , reset => reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , o_col(7) => o_col(7)
      , o_col(6) => o_col(6)
      , o_col(5) => o_col(5)
      , o_col(4) => o_col(4)
      , o_col(3) => o_col(3)
      , o_col(2) => o_col(2)
      , o_col(1) => o_col(1)
      , o_col(0) => o_col(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use work.util.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      clk  : in STD_LOGIC
    ; reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in UNSIGNED (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out STD_LOGIC_VECTOR (2 downto 0)
    ; o_mode  : out STD_LOGIC_VECTOR (1 downto 0)
    ; o_row  : out UNSIGNED (7 downto 0)
    ; o_col  : out UNSIGNED (7 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.kirsch_gate
    port map (
        clk => clk
      , reset => reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , o_col(7) => o_col(7)
      , o_col(6) => o_col(6)
      , o_col(5) => o_col(5)
      , o_col(4) => o_col(4)
      , o_col(3) => o_col(3)
      , o_col(2) => o_col(2)
      , o_col(1) => o_col(1)
      , o_col(0) => o_col(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use work.util.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      clk  : in STD_LOGIC
    ; reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in UNSIGNED (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out STD_LOGIC_VECTOR (2 downto 0)
    ; o_mode  : out STD_LOGIC_VECTOR (1 downto 0)
    ; o_row  : out UNSIGNED (7 downto 0)
    ; o_col  : out UNSIGNED (7 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.kirsch_gate
    port map (
        clk => clk
      , reset => reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , o_col(7) => o_col(7)
      , o_col(6) => o_col(6)
      , o_col(5) => o_col(5)
      , o_col(4) => o_col(4)
      , o_col(3) => o_col(3)
      , o_col(2) => o_col(2)
      , o_col(1) => o_col(1)
      , o_col(0) => o_col(0)
    );
end architecture;

----------------------------------------------------------------------
-- begin uw-generated entity for gate shim 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use work.util.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      clk  : in STD_LOGIC
    ; reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in UNSIGNED (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out STD_LOGIC_VECTOR (2 downto 0)
    ; o_mode  : out STD_LOGIC_VECTOR (1 downto 0)
    ; o_row  : out UNSIGNED (7 downto 0)
    ; o_col  : out UNSIGNED (7 downto 0)
  );
end entity;

----------------------------------------------------------------------
-- begin uw-generated architecture for gate shim
----------------------------------------------------------------------

architecture gate_shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  gate : entity work.kirsch_gate
    port map (
        clk => clk
      , reset => reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , o_col(7) => o_col(7)
      , o_col(6) => o_col(6)
      , o_col(5) => o_col(5)
      , o_col(4) => o_col(4)
      , o_col(3) => o_col(3)
      , o_col(2) => o_col(2)
      , o_col(1) => o_col(1)
      , o_col(0) => o_col(0)
    );
end architecture;

