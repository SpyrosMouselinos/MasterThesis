------------------------------------------------------------------------------
-- Title      : sumElement
-- Description: Genericly sized adder. Accumulation of KxK inputs followed by the application
--              of apprximate TanH function
-------------------------------------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.cnn_types.all;
    use work.bitwidths.all;

--
--                    ----------------
--                   |                |
-- in_data(0)________|                |______ out_data
-- in_data(1)________|                |______ out_dv
-- in_data(2)________|   sumElement   |______ ou_fv
--   ...             |                |
--                   |   sum + TanH   |
-- in_dv(0)__________|                |
-- in_dv(1)__________|                |
-- ...               |                |
-- in_fv(0)__________|                |
-- in_fv(1)__________|                |
--                    ----------------



entity sumElement is

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
        --no activation output--
        out_data        :   out std_logic_vector (SUM_WIDTH-1 downto 0);
        out_dv          :   out std_logic;
        out_fv          :   out std_logic
    );
end entity;
--
architecture bhv of sumElement is

    type sum_array_signed is array ( integer range <> )  of unsigned (SUM_WIDTH -1 downto 0);

    constant THIS_SUM_WIDTH    :   integer := SUM_WIDTH;

    signal  data_s      :   sum_array_signed (0 to NB_IN_FLOWS - 1) := (others=>(others=>'0'));
    signal  sum_s       :   unsigned (THIS_SUM_WIDTH - 1 downto 0):= (others=>'0');
    signal  tmp_dv      :   std_logic := '0';
    signal  tmp_fv      :   std_logic := '0';

    signal  tmp1        :   unsigned (THIS_SUM_WIDTH-1 downto 0):= (others=>'0');
    signal  tmp2        :   unsigned (THIS_SUM_WIDTH-1 downto 0):= (others=>'0');
    signal  s_bias      :   unsigned (2*PIXEL_SIZE  -1 downto 0):= (others=>'0');

    begin
    -- Cast Pixels in unsigned
    CAST : for i in 0 to (NB_IN_FLOWS - 1) generate
        data_s(i)      <=  unsigned(in_data(i));
    end generate;

    s_bias    <= unsigned(in_bias)*SCALE_FACTOR;
    process(clk,reset_n)

        variable sum    :  unsigned  (THIS_SUM_WIDTH - 1 downto 0);
        begin
            if (reset_n ='0') then
                sum := (others=>'0');
                out_dv <= '0';
                out_fv <= '0';
            elsif (RISING_EDGE(clk)) then
                if (enable='1') then

                    -- Compute sum
                    SUM_LOOP : for i in 0 to (NB_IN_FLOWS - 1) loop
                        sum := sum + data_s(i);
                    end loop;

                    -- Add bias term
                    sum := sum + s_bias;
                    sum_s <= sum;

                    sum := (others=>'0');
                end if;
                -- DataValid and FrameValid Management :
                out_dv <= in_dv(0);
                out_fv <= in_fv(0);
            end if;
        end process;


    --------------------------------------------------------------------------
    -- Apply Activation function : TanH (approx)
    --------------------------------------------------------------------------
    -- out_data   <=   std_logic_vector(to_signed(LOWER_TANH_VALUE,PIXEL_SIZE))   when (sum_s < to_signed(LOWER_THRESHHOLD,THIS_SUM_WIDTH)) else
    --                 std_logic_vector(to_signed(UPPER_TANH_VALUE,PIXEL_SIZE))   when (sum_s > to_signed(UPPER_THRESHHOLD,THIS_SUM_WIDTH)) else
    --                 std_logic_vector(SHIFT_RIGHT(sum_s,PIXEL_SIZE)(PIXEL_SIZE-1 downto 0));

--    tmp1       <=   (to_signed(-V1,PIXEL_SIZE) + SHIFT_RIGHT(sum_s,A2));
--    tmp2       <=   (to_signed( V1,PIXEL_SIZE) + SHIFT_RIGHT(sum_s,A2));

--    out_data   <=   std_logic_vector( to_signed(-V2,PIXEL_SIZE))                        when ( sum_s <= to_signed(-T2,THIS_SUM_WIDTH)) else
--                    std_logic_vector(tmp1(PIXEL_SIZE-1 downto 0))                       when ((sum_s >  to_signed(-T2,THIS_SUM_WIDTH)) and (sum_s <  to_signed(-T1,THIS_SUM_WIDTH))) else
--                    std_logic_vector((SHIFT_RIGHT(sum_s,A1)(PIXEL_SIZE-1 downto 0)))    when ((sum_s >= to_signed(-T1,THIS_SUM_WIDTH)) and (sum_s <= to_signed( T1,THIS_SUM_WIDTH))) else
--                    std_logic_vector(tmp2(PIXEL_SIZE-1 downto 0))                       when ((sum_s >  to_signed( T1,THIS_SUM_WIDTH)) and (sum_s <= to_signed( T2,THIS_SUM_WIDTH))) else
--                    std_logic_vector( to_signed( V2,PIXEL_SIZE));
    --------------------------------------------------------------------------
    --------------------------------------------------------------------------
    -- Dont apply Activation --
    --------------------------------------------------------------------------
    out_data <= std_logic_vector(sum_s);
end bhv;
