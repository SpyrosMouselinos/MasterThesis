library ieee;
  use	ieee.std_logic_1164.all;
  use	ieee.numeric_std.all;
  use  ieee.math_real.all;
package bitwidths is
  constant PIXEL_CONST	: integer :=5;
  constant SUM_WIDTH     : integer := 3*PIXEL_CONST;
end bitwidths;
