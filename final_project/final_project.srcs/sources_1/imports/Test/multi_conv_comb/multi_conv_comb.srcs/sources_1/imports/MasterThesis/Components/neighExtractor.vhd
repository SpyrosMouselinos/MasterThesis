library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.cnn_types.all;

entity neighExtractor is

  generic(
        PIXEL_SIZE      :   integer;
        IMAGE_WIDTH     :   integer;
        KERNEL_SIZE     :   integer
    );
   
    port(
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  std_logic_vector((PIXEL_SIZE -1) downto 0);
        in_dv       :   in  std_logic;
        in_fv       :   in  std_logic;
      --  out_x       :   out unsigned(2 downto 0);
      --  out_y       :   out unsigned(2 downto 0);
        out_data    :   out pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
        out_dv      :   out std_logic;
        out_fv      :   out std_logic
    );
end neighExtractor;

architecture rtl of neighExtractor is

    -- signals
    signal pixel_out   :  pixel_array(0 to KERNEL_SIZE-1);
    signal tmp_data    :  pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
    signal all_valid   :  std_logic;
    signal s_valid     :  std_logic;
    signal buffer_fv   :  std_logic_vector(KERNEL_SIZE-1 downto 0);
    signal tmp_dv      :  std_logic;
    signal tmp_fv      :  std_logic;
    signal delay_dv    :  std_logic;
    signal delay_fv    :  std_logic;
    

    -- components
    component taps
    generic (
        PIXEL_SIZE  :   integer;
        TAPS_WIDTH  :   integer;
        KERNEL_SIZE :   integer
    );

    port (
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  std_logic_vector (PIXEL_SIZE-1 downto 0);
        taps_data   :   out pixel_array (0 to KERNEL_SIZE -1 );
        out_data    :   out std_logic_vector (PIXEL_SIZE-1 downto 0)
    );
    end component;


    begin

     
   
    s_valid      <=    in_dv and in_fv and enable;





    ----------------------------------------------------
    -- Instantiates taps
    ----------------------------------------------------


        taps_inst   :   for i in 0 to KERNEL_SIZE-1 generate
            -- First line
            gen_1 : if i=0 generate
                gen1_inst : taps
                generic map(
                    PIXEL_SIZE  => PIXEL_SIZE,
                    TAPS_WIDTH  => IMAGE_WIDTH-1,
                    KERNEL_SIZE => KERNEL_SIZE
                )
                port map(
                    clk         => clk,
                    reset_n     => reset_n,
                    enable      => s_valid,
                    in_data     => in_data,
                    taps_data   => tmp_data(0 to KERNEL_SIZE-1),
                    out_data    => pixel_out(0)
                );
            end generate gen_1;

            -- line i
            gen_i : if i>0 AND i < KERNEL_SIZE -1 generate
                geni_inst : taps
                generic map(
                    PIXEL_SIZE   => PIXEL_SIZE,
                    TAPS_WIDTH   => IMAGE_WIDTH-1,
                    KERNEL_SIZE  => KERNEL_SIZE
                )
                port map(
                    clk         => clk,
                    reset_n     => reset_n,
                    enable      => s_valid,
                    in_data     => pixel_out(i-1),
                    taps_data   => tmp_data(i * KERNEL_SIZE to KERNEL_SIZE*(i+1)-1),
                    out_data    => pixel_out(1)
                );
            end generate gen_i;

            -- Last line
            gen_last : if i= (KERNEL_SIZE-1) AND KERNEL_SIZE > 1 generate
                gen_last_inst : taps
                generic map(
                    PIXEL_SIZE  => PIXEL_SIZE,
                    TAPS_WIDTH  => KERNEL_SIZE,
                    KERNEL_SIZE => KERNEL_SIZE
                )
                port map(
                    clk         => clk,
                    reset_n     => reset_n,
                    enable      => s_valid,
                    in_data     => pixel_out(i-1),
                    taps_data   => tmp_data((KERNEL_SIZE-1) * KERNEL_SIZE to KERNEL_SIZE*KERNEL_SIZE - 1),
                    out_data    => OPEN
                );
            end generate gen_last;
        end generate taps_inst;


    --------------------------------------------------------------------------
    -- Manage out_dv and out_fv
    --------------------------------------------------------------------------
    dv_proc : process(clk,reset_n)


    variable x_cmp       : integer :=0;
    variable y_cmp       : integer :=1;

    begin
        if (reset_n = '0') then
            x_cmp  := 0;
            y_cmp  := 1;
            tmp_dv    <='0';
            tmp_fv    <='0';

        elsif (rising_edge(clk)) then
        out_data <= tmp_data;
        if(enable = '1') then
            if (in_fv = '1') then
                if(in_dv = '1') then
                    tmp_fv <= '1';
                    if(y_cmp < KERNEL_SIZE) then
                        tmp_dv <= '0';
                        if(x_cmp < IMAGE_WIDTH) then
                            x_cmp := x_cmp +1;
                        else
                            y_cmp := y_cmp + 1;
                            x_cmp := 1;
                        end if;
                    else
                        if(x_cmp = 1 AND y_cmp >KERNEL_SIZE) then
                            tmp_dv <= '1';
                            x_cmp := x_cmp +1;
                        elsif(x_cmp < KERNEL_SIZE+1) then
                             tmp_dv <= '0';
                            x_cmp := x_cmp +1;
                        elsif(x_cmp < IMAGE_WIDTH) then
                            tmp_dv <= '1';
                            x_cmp := x_cmp +1;
                        else
                             tmp_dv <= '1';
                            y_cmp := y_cmp +1;
                            x_cmp := 1;
                        end if;
                    end if;
                else
                    tmp_dv <= '0';
                end if;
              else
                x_cmp  := 0;
                y_cmp  := 1;
                tmp_dv <= '0';
                tmp_fv <= '0';
              end if;

            -- When enable = 0
            else
                x_cmp  := 0;
                y_cmp  := 1;
                tmp_dv <= '0';
                tmp_fv <= '0';
            end if;
        end if;
       -- out_x <= to_unsigned(x_cmp,5);
       -- out_y <= to_unsigned(y_cmp,5);
    end process;

    out_dv <= tmp_dv;
    out_fv <= tmp_fv;
end architecture;
