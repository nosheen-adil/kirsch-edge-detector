----------------------------------------------------------------------
-- utility functions
----------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package util is

  -- convert a boolean to std_logic
  function to_std_logic( b : boolean ) return std_logic;

end package;

----------------------------------------------------------------------

package body util is

  ------------------------------------------------------------
  
  function to_std_logic ( b : boolean ) return std_logic is
  begin
    if b then
      return '1';
    else
      return '0';
    end if;
  end function;

  
end package body;
