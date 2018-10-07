library ieee;
  use	ieee.std_logic_1164.all;
  use	ieee.numeric_std.all;
package bitwidths is
  constant PIXEL_CONST	: integer := 8;
  constant SUM_WIDTH     : integer := 4*PIXEL_CONST;
end bitwidths;
