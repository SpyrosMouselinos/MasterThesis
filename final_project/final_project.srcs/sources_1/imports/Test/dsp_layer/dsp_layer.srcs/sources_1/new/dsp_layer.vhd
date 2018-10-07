library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;
    use work.bitwidths.all;
entity dsp_layer is
      generic(
      MY_MATRIX     :   int_matrix;
      MY_MATRIX_BIAS :  int_array;
      IMAGE_WIDTH   :   integer := 13;
      NB_IN_FLOWS   :   integer := 2
  );

      port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;
        in_data       : in  no_a_pixel_array (0 to NB_IN_FLOWS - 1);
        in_dv         : in  std_logic_vector (0 to NB_IN_FLOWS - 1);
        in_fv         : in  std_logic_vector (0 to NB_IN_FLOWS - 1);
        out_data      : out final_pixel_array (9 downto 0);
        prediction    : out std_logic_vector (3 downto 0);
        out_fv        : out std_logic ;
        out_step_warning : out std_logic
    );
end entity;
architecture Behavioral of dsp_layer is
signal v_sum : final_pixel_array (9 downto 0);
signal warning : std_logic  := '0';
signal available : std_logic;
signal fv : std_logic;
signal pindex : std_logic_vector (3 downto 0);
attribute use_dsp : string;
attribute use_dsp of v_sum : signal is "yes";
begin

available <= in_dv(0) and in_dv(1) and in_fv(1)  and in_fv(0) and enable ;
 main: process(clk,reset_n)
 variable step : integer := -2;
 --CPU compatibility
 --variable max : signed (2*SUM_WIDTH-1 downto 0);
 variable mult : unsigned (2*SUM_WIDTH-1 downto 0) ;
 variable max : unsigned (63 downto 0);
 begin
 if (reset_n = '0') then
    v_sum <= (others => (others => '0'));
    fv  <=  '0';
    warning <= '0';
 elsif (rising_edge(clk)) then
 if (available = '1' and warning = '0') then
    step := step + 2;
    if (step > 338) then
        warning <= '1';
        v_sum <= (others => (others => '0'));
        fv  <=  '0';
    else 
        if (step < 338) then
            dsp_loop: for i in 0 to 9 loop
                 mult:=  unsigned(in_data(0)) * to_unsigned(MY_MATRIX(step,i),SUM_WIDTH) + unsigned(in_data(1)) * to_unsigned(MY_MATRIX((step+1),i),SUM_WIDTH);
           --     mult:=  signed(in_data(0)) * signed(MY_MATRIX(step*10+i)) + signed(in_data(1)) * signed(MY_MATRIX((step+168)*10+i)) + signed(in_data(2))* signed(MY_MATRIX((step+168*2)*10+i));
                v_sum(i) <= v_sum(i) + mult;
            end loop;
         end if;
         if (step = 338) then
            fv <= '1';
            max := to_unsigned(0,64);
            max_loop:for i in 0 to 9 loop
                if (v_sum(i)+ to_unsigned(MY_MATRIX_BIAS(i),64) > max) then
                    max := v_sum(i);
                    pindex <= std_logic_vector(to_unsigned(i,4));
                end if;
            end loop;
        end if;
    end if;
 else
    warning <= '0';
 end if;
 end if;
 end process;
 --------------------------
out_fv <= fv;
out_step_warning <= warning;
out_data <= v_sum;
prediction <= pindex;
---------------------------
end Behavioral;
