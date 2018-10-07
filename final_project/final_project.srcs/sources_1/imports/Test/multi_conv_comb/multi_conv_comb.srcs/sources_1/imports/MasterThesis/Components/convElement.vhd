library ieee;
	use	ieee.std_logic_1164.all;
	use ieee.std_logic_signed.all;
use IEEE.NUMERIC_STD.all;
library work;
	use work.cnn_types.all;
    use work.bitwidths.all;
---------- for DSP -----------------
Library UNISIM;
    use UNISIM.vcomponents.all;
    
    Library UNIMACRO;
    use UNIMACRO.vcomponents.all;
    
entity convElement is

  

  generic(
        PIXEL_SIZE    :   integer ;
        KERNEL_SIZE   :   integer ;
        KERNEL_VALUE  :   pixel_array
       );    
    port(
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_dv    	:   in  std_logic;
        in_fv    	:   in  std_logic;
        out_data    :   out std_logic_vector(SUM_WIDTH - 1 downto 0);
        out_dv    	:   out std_logic;
        out_fv    	:   out std_logic

    );
    
    
end convElement;

architecture bhv of convElement is
--constant  KERNEL_VALUE : 
    --        pixel_array := ("00001","00001","00001","00001","00001","00001","00001","00001","00001");
    --------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------
    signal s_sum     : std_logic_vector (SUM_WIDTH - 1 downto 0) := (others=>'0');
    signal all_valid : std_logic :='0';
    signal kernelval : pixel_array (0 to (KERNEL_SIZE*KERNEL_SIZE -1)) := KERNEL_VALUE;
    --------------------------------------------------------------------------
    -- ARCHITECTURE
    --------------------------------------------------------------------------
    --For DSP way-----
    attribute use_dsp : string;
    attribute use_dsp of s_sum : signal is "yes";

    begin
	
        all_valid <= enable and in_dv and in_fv;

        --------------------------------------------------------------------------
        -- MULTIPLICATION ACCUMULATION
        --------------------------------------------------------------------------
        mac_proc : process(clk,reset_n)
        variable v_sum :  std_logic_vector  (SUM_WIDTH - 1 downto 0) := (others=>'0');
        variable a :  signed (17 downto 0);
        variable b :  signed (17 downto 0);
        begin
            if(reset_n = '0') then
                v_sum := (others=>'0');
              --  v_sum <= (others=>'0');
                s_sum <= (others=>'0');
                out_dv <= '0';
                out_fv <= '0';
            elsif(rising_edge(clk)) then
                if (all_valid = '1') then
------------------------Old way------------------------
--                    -- Multiplication
--                    mul_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE -1) loop
--                        v_mul(i) := in_data(i) * kernelval(i);
--                    end loop;

                    -- Accumulation
                    sum_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) loop
                        --v_sum := v_sum + in_data(i) * kernelval(i);
                        v_sum := std_logic_vector(unsigned(v_sum) + resize(unsigned(in_data(i)),10) * resize(unsigned(kernelval(i)),10)); 
                    end loop;
                    -- Write in reg
                    s_sum <= v_sum;
                    v_sum := (others=>'0');
---------------------DSP way----------------------------

--                    dsp_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) loop
--                       a := resize(in_data(i),18);
--                       b := resize(signed(kernelval(i)),18);
--                       v_sum <= a * b + signed(v_sum);
--                    end loop;
--                    -- Write in reg
--                    s_sum <= std_logic_vector(v_sum(14 downto 0));
--                    v_sum <= (others=>'0');
--------------------------------------------------------                   


                end if;
                -- Manage out_dv and out_fv : Synchronize with process
                out_dv <= in_dv;
                out_fv <= in_fv;
            end if;
        end process;
        --------------------------------------------------------------------------
        out_data   <=   (s_sum);


end bhv;
