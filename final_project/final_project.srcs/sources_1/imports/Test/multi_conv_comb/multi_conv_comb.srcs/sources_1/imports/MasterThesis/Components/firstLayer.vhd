------------------------------------------------------------------------------
-- Title      : firstLayer
-- Description: Implementation of the first convolutional layer of a CNN
-----------------------------------------------------------------------------
library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;


library work;
	use work.cnn_types.all;
	use work.bitwidths.all;


entity firstLayer is
    generic(
        PIXEL_SIZE    :   integer ;
        IMAGE_WIDTH   :   integer ;
        KERNEL_SIZE   :   integer ;
        KERNEL_VALUE_1  :   pixel_array;
        KERNEL_VALUE_2   :  pixel_array;
--        KERNEL_VALUE_3   :  pixel_array;
        NB_IN_FLOWS   :   integer ;
        NB_OUT_FLOWS  :   integer ;
        BIAS_VALUE_1   :   std_logic_vector;
        BIAS_VALUE_2   :   std_logic_vector
--        BIAS_VALUE_3   :   std_logic_vector
    );

    port(
        clk	          :   in  std_logic;
        reset_n	      :   in  std_logic;
        enable        :   in  std_logic;
        in_data       :   in  std_logic_vector (PIXEL_SIZE-1 downto 0);
        in_dv         :   in  std_logic;
        in_fv         :   in  std_logic; 

        --out_data      :   out pixel_array      (0 to NB_OUT_FLOWS - 1);
        ---No activation output----
        out_data      :   out no_a_pixel_array  (0 to NB_OUT_FLOWS -1);
        out_dv        :   out std_logic_vector (0 to NB_OUT_FLOWS - 1);
        out_fv        :   out std_logic_vector (0 to NB_OUT_FLOWS - 1)
    );
end entity;

architecture STRUCTURAL of firstLayer is
type pixel_array_2d is array ( integer range <> ) of pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
    constant  BIAS_VAL_1 :
           STD_LOGIC_VECTOR := BIAS_VALUE_1;
       constant  BIAS_VAL_2 :
                    STD_LOGIC_VECTOR := BIAS_VALUE_2;
--        constant  BIAS_VAL_3 :
--                    STD_LOGIC_VECTOR := BIAS_VALUE_3;
   
    constant KERNEL_VAL_1:
        pixel_array := KERNEL_VALUE_1;
    constant KERNEL_VAL_2:
        pixel_array := KERNEL_VALUE_2;
--    constant KERNEL_VAL_3:
--        pixel_array := KERNEL_VALUE_3;
     --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component neighExtractor
    generic(
		PIXEL_SIZE      :   integer ;
		IMAGE_WIDTH     :   integer ;
		KERNEL_SIZE     :   integer 
	);

    port(
		clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable	        :	in	std_logic;
        in_data         :	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
        in_dv	        :	in	std_logic;
        in_fv	        :	in	std_logic;
        out_data        :	out	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
        out_dv			:	out std_logic;
        out_fv			:	out std_logic
    );
    end component;

    --------------------------------------------------------------------------------
    component convElement
    generic (
      PIXEL_SIZE   : integer ;
      KERNEL_SIZE  : integer ;
      KERNEL_VALUE : pixel_array 
    );
    port (
      clk      : in  std_logic;
      reset_n  : in  std_logic;
      enable   : in  std_logic;
      in_data  : in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
      in_dv    : in  std_logic;
      in_fv    : in  std_logic;
      out_data : out std_logic_vector(SUM_WIDTH - 1 downto 0);
      out_dv   : out std_logic;
      out_fv   : out std_logic
    );
    end component convElement;

    --------------------------------------------------------------------------------

    component sumElement
    generic(
        PIXEL_SIZE      :   integer;
        NB_IN_FLOWS     :   integer
    );

    port(
        clk             :   in  std_logic;
        reset_n         :   in  std_logic;
        enable          :   in  std_logic;
        in_data         :   in  sum_array        (0 to NB_IN_FLOWS - 1);
        in_dv           :   in  std_logic_vector (0 to NB_IN_FLOWS - 1);
        in_fv           :   in  std_logic_vector (0 to NB_IN_FLOWS - 1);
        in_bias         :   in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
        --out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        --No activation output--------
        out_data        :   out std_logic_vector (SUM_WIDTH - 1 downto 0);
        out_dv          :   out std_logic;
        out_fv          :   out std_logic
    );
    end component;

    --------------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------------
    -- Output of the neighborhood extractor

    

    signal s_ne_data : pixel_array (0 to KERNEL_SIZE*KERNEL_SIZE-1);
    signal s_ne_dv   : std_logic;
    signal s_ne_fv   : std_logic;

    signal s_ce_data : sum_array        (0 to NB_IN_FLOWS*NB_OUT_FLOWS - 1);
    signal s_ce_dv   : std_logic_vector (0 to NB_IN_FLOWS * NB_OUT_FLOWS -1):= (others=>'0');
    signal s_ce_fv   : std_logic_vector (0 to NB_IN_FLOWS * NB_OUT_FLOWS -1):= (others=>'0');

-- temporary signal for "easy" indexation purpose
    type   tmp_array_2d is array ( integer range <> ) of sum_array (0 to NB_IN_FLOWS - 1);
    signal ce_data_2d: tmp_array_2d (0 to NB_OUT_FLOWS -1);
-- Each ce_data_2d(i) will contain NB_IN_FLOWS elements

    signal tmp_w : pixel_array (0 to NB_IN_FLOWS * NB_OUT_FLOWS * KERNEL_SIZE * KERNEL_SIZE - 1):= (others=>(others=>'0'));


    
   
    --------------------------------------------------------------------------------
    -- BEGIN
    --------------------------------------------------------------------------------
-- Generate N neighborhood extractors
    begin

            NEs_inst : neighExtractor
            generic map(
                PIXEL_SIZE   => PIXEL_SIZE,
                IMAGE_WIDTH  => IMAGE_WIDTH,
                KERNEL_SIZE  => KERNEL_SIZE
            )
            port map(
                clk          => clk,
                reset_n      => reset_n,
                enable       => enable,
                in_data      => in_data,
                in_dv        => in_dv,
                in_fv        => in_fv,
                out_data     => s_ne_data,
                out_dv       => s_ne_dv,
                out_fv       => s_ne_fv
            );
    

    -----------------------------------------------------------------------
 CEs_loop : for i in 0 to (NB_OUT_FLOWS * NB_IN_FLOWS - 1) generate
            CE_inst_1: if i = 0 generate
            CEs_inst : convElement
            generic map(
                PIXEL_SIZE   => PIXEL_SIZE,
                KERNEL_SIZE  => KERNEL_SIZE,
                KERNEL_VALUE => KERNEL_VAL_1
            )
            port map(
                clk         => clk,
                reset_n     => reset_n,
                enable      => enable,
                in_data     => s_ne_data ,
                in_dv       => s_ne_dv  ,
                in_fv       => s_ne_fv  ,
                out_data    => s_ce_data(i),
                out_dv      => s_ce_dv (i) ,
                out_fv      => s_ce_fv (i)
            );
            end generate CE_inst_1;
            CE_inst_2: if i =1 generate
                  CEs_inst : convElement
                        generic map(
                            PIXEL_SIZE   => PIXEL_SIZE,
                            KERNEL_SIZE  => KERNEL_SIZE,
                            KERNEL_VALUE => KERNEL_VAL_2
                        )
                        port map(
                            clk         => clk,
                            reset_n     => reset_n,
                            enable      => enable,
                            in_data     => s_ne_data ,
                            in_dv       => s_ne_dv   ,
                            in_fv       => s_ne_fv   ,
                            out_data    => s_ce_data (i),
                            out_dv      => s_ce_dv   (i),
                            out_fv      => s_ce_fv   (i)
                        );
           end generate CE_inst_2;
--               CE_inst_3: if i =2 generate
--                 CEs_inst : convElement
--                       generic map(
--                           PIXEL_SIZE   => PIXEL_SIZE,
--                           KERNEL_SIZE  => KERNEL_SIZE,
--                           KERNEL_VALUE => KERNEL_VAL_3
--                       )
--                       port map(
--                           clk         => clk,
--                           reset_n     => reset_n,
--                           enable      => enable,
--                           in_data     => s_ne_data ,
--                           in_dv       => s_ne_dv   ,
--                           in_fv       => s_ne_fv   ,
--                           out_data    => s_ce_data (i),
--                           out_dv      => s_ce_dv   (i),
--                           out_fv      => s_ce_fv   (i)
--                       );
--          end generate CE_inst_3;                
        end generate CEs_loop;

    --------------------------------------------------------------------------------
    -- Reorganize data : Each ce_data_2d(i) will contain C elements
        reorg_i : for i in 0 to (NB_OUT_FLOWS - 1) generate
            reorg_j : for j in 0 to (NB_IN_FLOWS - 1) generate

                ce_data_2d(i)(j) <= s_ce_data( i + NB_OUT_FLOWS * j);
            end generate reorg_j;
        end generate reorg_i;

    --------------------------------------------------------------------------      

    SEs_loop : for i in 0 to (NB_OUT_FLOWS - 1) generate
    SE_inst_1: if i = 0 generate
        SEs_inst : sumElement
        generic map (
            PIXEL_SIZE   => PIXEL_SIZE,
            NB_IN_FLOWS  => NB_IN_FLOWS
        )
        port map(
            clk          => clk,
            reset_n      => reset_n,
            enable       => enable,
            in_data      => ce_data_2d(i),
            in_dv        => s_ce_dv (0 to (NB_IN_FLOWS-1)),
            in_fv        => s_ce_fv (0 to (NB_IN_FLOWS-1)),
            in_bias      => BIAS_VAL_1,
            out_data     => out_data(i),
            out_dv       => out_dv(i),
            out_fv       => out_fv(i)
        );
        end generate SE_inst_1;
        SE_inst_2: if i = 1 generate
                SEs_inst : sumElement
        generic map (
            PIXEL_SIZE   => PIXEL_SIZE,
            NB_IN_FLOWS  => NB_IN_FLOWS
        )
        port map(
            clk          => clk,
            reset_n      => reset_n,
            enable       => enable,
            in_data      => ce_data_2d(i),
            in_dv        => s_ce_dv (0 to (NB_IN_FLOWS-1)),
            in_fv        => s_ce_fv (0 to (NB_IN_FLOWS-1)),
            in_bias      => BIAS_VAL_2,
            out_data     => out_data(i),
            out_dv       => out_dv(i),
            out_fv       => out_fv(i)
        );
        end generate SE_inst_2;
--            SE_inst_3: if i = 2 generate
--                SEs_inst : sumElement
--        generic map (
--            PIXEL_SIZE   => PIXEL_SIZE,
--            NB_IN_FLOWS  => NB_IN_FLOWS
--        )
--        port map(
--            clk          => clk,
--            reset_n      => reset_n,
--            enable       => enable,
--            in_data      => ce_data_2d(i),
--            in_dv        => s_ce_dv (0 to (NB_IN_FLOWS-1)),
--            in_fv        => s_ce_fv (0 to (NB_IN_FLOWS-1)),
--            in_bias      => BIAS_VAL_3,
--            out_data     => out_data(i),
--            out_dv       => out_dv(i),
--            out_fv       => out_fv(i)
--        );
--        end generate SE_inst_3;
    end generate SEs_loop;
    
end STRUCTURAL;
