library ieee;
	use	ieee.std_logic_1164.all;
	use ieee.std_logic_signed.all;
    use STD.textio.all;
    use ieee.numeric_std.all;
    use ieee.std_logic_textio.all;
library work;
        use work.bitwidths.all;
        use work.cnn_types.all;

        
entity final_simulation is
--  Port ( );
end final_simulation;

architecture Behavioral of final_simulation is
 -- Component Declaration for the Unit Under Test (UUT)
 file file_MATRIX : text;
 --file file_RESULTS : text;
 --file file_CONFIRM : text;
 file file_POOL_RESULTS : text;
 file file_POOL_CONFIRM : text;
 
  COMPONENT multi_conv_comb
    
   port(
      clk: in std_logic;
      reset_n: in std_logic;
      enable: in std_logic;
      in_data :in std_logic_vector(7 downto 0);
    --  in_dv : in std_logic_vector(0 to 1);
     -- in_fv : in std_logic_vector(0 to 1);
    --  in_data: in std_logic_vector(PIXEL_SIZE-1 to 0);
     in_dv: in std_logic;
      in_fv: in std_logic;
      --out_data: out pixel_array(0 to 1-1);
      --No activation output--
      out_data      : out final_pixel_array (9 downto 0);
      prediction    : out std_logic_vector (3 downto 0);
      out_fv        : out std_logic ;
      out_step_warning : out std_logic
  );
  END COMPONENT;
  

 --Inputs
 signal clk : std_logic := '0';
 signal reset_n : std_logic := '1';
 signal enable : std_logic := '1';
 signal in_data :std_logic_vector(7 downto 0) ;
 signal in_dv : std_logic := '1';
 signal in_fv : std_logic := '1';
--    signal in_data : pixel_array(0 to 1);
--   signal in_dv : std_logic_vector(0 to 1) := "11";
--   signal in_fv : std_logic_vector(0 to 1) := "11";
  

   --Outputs
signal out_data      :  final_pixel_array (9 downto 0);
signal prediction    :  std_logic_vector (3 downto 0);
signal out_fv        :  std_logic ;
signal out_step_warning :  std_logic;
  
 -- Clock period definitions
constant clk_period : time := 10 ns;
begin
   -- Instantiate the Unit Under Test (UUT)
uut: multi_conv_comb PORT MAP (
      clk =>         clk,
      reset_n =>     reset_n  , 
      enable  =>      enable ,
      in_data   =>    in_data , 
      in_dv       =>  in_dv ,
      in_fv         => in_fv,
      out_data       => out_data,
      prediction   => prediction,
     out_fv         => out_fv,
     out_step_warning => out_step_warning
    );

-- Clock process definitions
clk_process :process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;

stim_process: process
  variable v_linecount : integer := 0;
  variable v_Count     : integer := 0;
  variable v_ILINE     : line;
  variable v_OLINE     : line;
  variable v_MCOEFF    : integer;
  variable v_RESULTS0   : integer;
  variable v_RESULTS1   : integer;
  variable v_RESULTS2   : integer;

  variable v_GOLD0      : integer;
  variable v_GOLD1      : integer;
  variable v_GOLD2      : integer;
 begin        
  file_open(file_MATRIX, "D:\input_matrix.txt",  read_mode);
--  file_open(file_POOL_RESULTS, "D:\test_pool_outputs.txt"    ,  read_mode);
--  file_open(file_POOL_CONFIRM, "D:\pool_confirm.txt"   , write_mode);
  
  reset_n <= '0';
  wait for clk_period;
  reset_n <= '1';
  while (not endfile(file_MATRIX)) loop

    if (v_linecount < 784) then 
        readline(file_MATRIX, v_ILINE);
        read(v_ILINE, v_MCOEFF);
        v_linecount := v_linecount + 1;    
    else
        v_MCOEFF := 0;
    end if;
    in_data <= std_logic_vector(to_signed(v_MCOEFF,8));
--    if (out_dv(0) = '1') then
--        V_RESULTS0 := to_integer(signed(out_data(0)));
--        V_RESULTS1 := to_integer(signed(out_data(1)));
--        V_RESULTS2 := to_integer(signed(out_data(2)));
--        if not endfile(file_POOL_RESULTS) then 
--                 readline(file_POOL_RESULTS, v_ILINE);
--                 read(v_ILINE, v_GOLD0);
--                 readline(file_POOL_RESULTS, v_ILINE);
--                 read(v_ILINE, v_GOLD1);
--                 readline(file_POOL_RESULTS, v_ILINE);
--                 read(v_ILINE, v_GOLD2);
--                 if (v_GOLD0 = V_Results0 AND v_GOLD1 = V_Results1 AND v_GOLD2 = V_Results2) then
--                    write(v_OLINE,v_count);
--                    v_count := v_count + 1;
--                    writeline(file_POOL_CONFIRM, v_OLINE);
--                 else
--                    write(v_OLINE,integer(404));
--                    writeline(file_POOL_CONFIRM, v_OLINE);
--                 end if;
--         end if;           
--    end if;
   wait for clk_period;
--   if (v_count = 169) then
--        in_fv <= '0';
--        reset_n <= '0';
--        wait for clk_period;
--        in_fv <= '1';
--        reset_n <= '1';
--        v_linecount := 0;
--        v_count := 0;
--   end if;
   
  end loop;
--  for i in 1 to 100 loop
--    if (out_dv(0) = '1') then
--           V_RESULTS0 := to_integer(signed(out_data(0)));
--           V_RESULTS1 := to_integer(signed(out_data(1)));
--           V_RESULTS2 := to_integer(signed(out_data(2)));
--           if not endfile(file_POOL_RESULTS) then 
--                    readline(file_POOL_RESULTS, v_ILINE);
--                    read(v_ILINE, v_GOLD0);
--                    readline(file_POOL_RESULTS, v_ILINE);
--                    read(v_ILINE, v_GOLD1);
--                    readline(file_POOL_RESULTS, v_ILINE);
--                    read(v_ILINE, v_GOLD2);
--                    if (v_GOLD0 = V_Results0 AND v_GOLD1 = V_Results1 AND v_GOLD2 = V_Results2) then
--                       write(v_OLINE,v_count);
--                       v_count := v_count + 1;
--                       writeline(file_POOL_CONFIRM, v_OLINE);
--                    else
--                       write(v_OLINE,integer(404));
--                       writeline(file_POOL_CONFIRM, v_OLINE);
--                    end if;
--            end if;           
--      end if;
--      wait for clk_period;
--   end loop;
   wait;
   end process;
end;
