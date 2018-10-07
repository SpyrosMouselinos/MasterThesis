library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    
library work;
    use work.bitwidths.all;
    use work.cnn_types.all;
    
entity inter_layer_union is
        generic(
            PIXEL_SIZE: integer ;
            NB_POOL_OUT: integer ;
            IMAGE_WIDTH: integer 
        );
        port(
            clk: in std_logic;
            reset_n: in std_logic;
            enable: in std_logic;
            in_data: in pixel_array(0 to NB_POOL_OUT-1);
            in_dv: in std_logic_vector(0 to NB_POOL_OUT-1);
            in_fv: in std_logic_vector(0 to NB_POOL_OUT-1);
            out_enable : out  std_logic_vector(0 to NB_POOL_OUT-1);
            out_reset_n : out  std_logic_vector(0 to NB_POOL_OUT-1);
            out_data: out pixel_array(0 to NB_POOL_OUT-1);
            out_dv: out std_logic_vector(0 to NB_POOL_OUT-1); 
            out_fv: out  std_logic_vector(0 to NB_POOL_OUT-1) 
        );
    end entity;
architecture Behavioral of inter_layer_union is
    ----------signals----------------
    type   pixel_array_2d is array ( integer range <> ) of pixel_array (0 to IMAGE_WIDTH*IMAGE_WIDTH -1);
    signal filtered_out_enable : std_logic_vector(0 to NB_POOL_OUT-1);
    signal filtered_out_reset_n: std_logic_vector(0 to NB_POOL_OUT-1);
    signal filtered_out_data :  pixel_array(0 to NB_POOL_OUT-1);
    signal filtered_out_dv: std_logic_vector (0 to NB_POOL_OUT-1);
    signal filtered_out_fv: std_logic_vector (0 to NB_POOL_OUT-1);
    signal data_buffer : pixel_array_2d (0 to NB_POOL_OUT-1);
    signal x_debug : integer ;
    signal flag_debug : integer ;
    --------------------------------
    begin
        
    process(clk,reset_n)
    variable x_cnt : integer :=0;
    variable flag : integer:=0;
    begin
        if(rising_edge(clk)) then
            if (reset_n = '0') then
                filtered_out_data <= (others=>(others=>'0'));
                filtered_out_enable <= (others=>'0');
                filtered_out_reset_n <= (others=>'0');
             elsif (reset_n = '1') then
                if (in_dv(0) = '1' AND in_fv(0) = '1'  AND flag = 0) then
                    for i in 0 to NB_POOL_OUT-1 loop
                     data_buffer(i)(x_cnt)<=in_data(i);
                    end loop;
                    x_cnt:= x_cnt +1;
                    if(x_cnt > IMAGE_WIDTH*IMAGE_WIDTH -1) then
                        flag:= 1;
                        x_cnt:=0;
                    end if;
                elsif (flag = 1) then
                    if(x_cnt > IMAGE_WIDTH*IMAGE_WIDTH -1) then
                        flag:= 0;
                        x_cnt:=0;
                        filtered_out_enable <= "11";
                        filtered_out_reset_n <= "11";
                    else 
                        filtered_out_enable <= "11";
                        filtered_out_reset_n <= "11";
                    end if;
                    for i in 0 to NB_POOL_OUT-1 loop
                      filtered_out_data(i) <= data_buffer(i)(x_cnt);
                     end loop;
                    x_cnt:= x_cnt +1;
                 end if;
             end if;
           end if;
            x_debug <= x_cnt;
           flag_debug <= flag;
 end process;

out_enable <= filtered_out_enable;
out_reset_n <= filtered_out_reset_n;
out_data <= filtered_out_data;
--out_dv <= filtered_out_dv;
--out_fv <= filtered_out_fv;
out_dv <= ("11");
out_fv <= ("11");
end architecture;