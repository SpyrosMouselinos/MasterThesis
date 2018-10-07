-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May  8 21:21:34 2018
-- Host        : Angel-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Test/final_project/final_project.sim/sim_1/synth/func/final_simulation_func_synth.vhd
-- Design      : multi_conv_comb
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity convElement is
  port (
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_sum_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_dv_reg_0 : out STD_LOGIC;
    out_fv_reg_0 : out STD_LOGIC;
    \sum_s_reg[14]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out_data_reg[8][4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out_data_reg[0][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out_data_reg[0][3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out_data_reg[0][4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out_data_reg[0][4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out_data_reg[1][4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \out_data_reg[7][4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \out_data_reg[5][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out_data_reg[4][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out_data_reg[6][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out_data_reg[3][0]\ : in STD_LOGIC;
    \out_data_reg[5][0]_0\ : in STD_LOGIC;
    \out_data_reg[2][0]\ : in STD_LOGIC;
    \out_data_reg[0][4]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out_data_reg[3][1]\ : in STD_LOGIC;
    \out_data_reg[2][4]\ : in STD_LOGIC;
    \out_data_reg[6][4]\ : in STD_LOGIC;
    \out_data_reg[6][4]_0\ : in STD_LOGIC;
    \out_data_reg[4][4]\ : in STD_LOGIC;
    \out_data_reg[1][4]_0\ : in STD_LOGIC;
    \out_data_reg[6][4]_1\ : in STD_LOGIC;
    reset_n_IBUF : in STD_LOGIC;
    s_ne_dv : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    in_fv_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_n : in STD_LOGIC
  );
end convElement;

architecture STRUCTURE of convElement is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \s_sum[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_sum[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_sum[11]_i_4_n_0\ : STD_LOGIC;
  signal \s_sum[11]_i_5_n_0\ : STD_LOGIC;
  signal \s_sum[11]_i_6_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_17_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_4_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_5_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_6_n_0\ : STD_LOGIC;
  signal \s_sum[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_sum[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_sum[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_sum[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_27_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_28_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_29_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_30_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_sum_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_sum_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \s_sum_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \s_sum_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \s_sum_reg[14]_i_2_n_2\ : STD_LOGIC;
  signal \s_sum_reg[14]_i_2_n_3\ : STD_LOGIC;
  signal \s_sum_reg[14]_i_9_n_3\ : STD_LOGIC;
  signal \s_sum_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_sum_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \s_sum_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \s_sum_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \^s_sum_reg[7]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_sum_reg[7]_i_16_n_0\ : STD_LOGIC;
  signal \s_sum_reg[7]_i_16_n_1\ : STD_LOGIC;
  signal \s_sum_reg[7]_i_16_n_2\ : STD_LOGIC;
  signal \s_sum_reg[7]_i_16_n_3\ : STD_LOGIC;
  signal \s_sum_reg[7]_i_16_n_7\ : STD_LOGIC;
  signal \s_sum_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_sum_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \s_sum_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \s_sum_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_s_sum_reg[14]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_sum_reg[14]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_sum_reg[14]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_sum_reg[14]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute HLUTNM : string;
  attribute HLUTNM of \s_sum[11]_i_2\ : label is "lutpair0";
  attribute HLUTNM of \s_sum[7]_i_6\ : label is "lutpair0";
begin
  CO(0) <= \^co\(0);
  O(2 downto 0) <= \^o\(2 downto 0);
  \s_sum_reg[7]_0\(1 downto 0) <= \^s_sum_reg[7]_0\(1 downto 0);
out_dv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => s_ne_dv,
      Q => out_dv_reg_0,
      R => '0'
    );
out_fv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => in_fv_IBUF,
      Q => out_fv_reg_0,
      R => '0'
    );
\s_sum[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1808"
    )
        port map (
      I0 => \out_data_reg[1][4]_0\,
      I1 => \out_data_reg[4][4]\,
      I2 => \^co\(0),
      I3 => \out_data_reg[6][4]_1\,
      O => \s_sum[11]_i_2_n_0\
    );
\s_sum[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \out_data_reg[1][4]\,
      I1 => \^co\(0),
      I2 => \out_data_reg[4][4]\,
      I3 => \out_data_reg[1][4]_0\,
      O => \s_sum[11]_i_3_n_0\
    );
\s_sum[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \out_data_reg[1][4]\,
      I1 => \^co\(0),
      I2 => \out_data_reg[4][4]\,
      I3 => \out_data_reg[1][4]_0\,
      O => \s_sum[11]_i_4_n_0\
    );
\s_sum[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \out_data_reg[1][4]\,
      I1 => \^co\(0),
      I2 => \out_data_reg[4][4]\,
      I3 => \out_data_reg[1][4]_0\,
      O => \s_sum[11]_i_5_n_0\
    );
\s_sum[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \s_sum[11]_i_2_n_0\,
      I1 => \^co\(0),
      I2 => \out_data_reg[4][4]\,
      I3 => \out_data_reg[1][4]_0\,
      O => \s_sum[11]_i_6_n_0\
    );
\s_sum[14]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => Q(3),
      I1 => \out_data_reg[7][4]\(3),
      I2 => \out_data_reg[7][4]\(4),
      I3 => Q(4),
      O => \s_sum[14]_i_17_n_0\
    );
\s_sum[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \out_data_reg[1][4]\,
      I1 => \^co\(0),
      I2 => \out_data_reg[4][4]\,
      I3 => \out_data_reg[1][4]_0\,
      O => \s_sum[14]_i_4_n_0\
    );
\s_sum[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \out_data_reg[1][4]\,
      I1 => \^co\(0),
      I2 => \out_data_reg[4][4]\,
      I3 => \out_data_reg[1][4]_0\,
      O => \s_sum[14]_i_5_n_0\
    );
\s_sum[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \out_data_reg[1][4]\,
      I1 => \^co\(0),
      I2 => \out_data_reg[4][4]\,
      I3 => \out_data_reg[1][4]_0\,
      O => \s_sum[14]_i_6_n_0\
    );
\s_sum[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \out_data_reg[5][0]_0\,
      I1 => \out_data_reg[2][0]\,
      I2 => \^o\(0),
      I3 => \out_data_reg[0][4]_1\(0),
      O => \s_sum[3]_i_4_n_0\
    );
\s_sum[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \out_data_reg[3][1]\,
      I1 => \out_data_reg[0][4]_1\(1),
      I2 => \^o\(0),
      I3 => \out_data_reg[2][0]\,
      I4 => \out_data_reg[5][0]_0\,
      I5 => \out_data_reg[0][4]_1\(0),
      O => \s_sum[3]_i_6_n_0\
    );
\s_sum[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555569966996AAAA"
    )
        port map (
      I0 => \s_sum[3]_i_4_n_0\,
      I1 => \out_data_reg[5][0]\(0),
      I2 => \out_data_reg[4][0]\(0),
      I3 => \out_data_reg[6][0]\(0),
      I4 => \out_data_reg[3][0]\,
      I5 => \s_sum_reg[7]_i_16_n_7\,
      O => \s_sum[3]_i_7_n_0\
    );
\s_sum[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \out_data_reg[5][0]\(0),
      I1 => \out_data_reg[4][0]\(0),
      I2 => \out_data_reg[6][0]\(0),
      I3 => \out_data_reg[3][0]\,
      I4 => \s_sum_reg[7]_i_16_n_7\,
      I5 => \out_data_reg[0][2]\(0),
      O => \s_sum[3]_i_8_n_0\
    );
\s_sum[7]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => Q(2),
      I1 => \out_data_reg[7][4]\(2),
      I2 => \out_data_reg[7][4]\(3),
      I3 => Q(3),
      O => \s_sum[7]_i_27_n_0\
    );
\s_sum[7]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => Q(1),
      I1 => \out_data_reg[7][4]\(1),
      I2 => \out_data_reg[7][4]\(2),
      I3 => Q(2),
      O => \s_sum[7]_i_28_n_0\
    );
\s_sum[7]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => Q(0),
      I1 => \out_data_reg[7][4]\(0),
      I2 => \out_data_reg[7][4]\(1),
      I3 => Q(1),
      O => \s_sum[7]_i_29_n_0\
    );
\s_sum[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969FFFF66960000"
    )
        port map (
      I0 => \out_data_reg[6][4]_0\,
      I1 => \^s_sum_reg[7]_0\(1),
      I2 => \^s_sum_reg[7]_0\(0),
      I3 => \out_data_reg[0][4]_1\(2),
      I4 => \out_data_reg[6][4]\,
      I5 => \out_data_reg[2][4]\,
      O => \s_sum[7]_i_3_n_0\
    );
\s_sum[7]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => \out_data_reg[7][4]\(0),
      O => \s_sum[7]_i_30_n_0\
    );
\s_sum[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"188EE771"
    )
        port map (
      I0 => \out_data_reg[1][4]_0\,
      I1 => \out_data_reg[4][4]\,
      I2 => \^co\(0),
      I3 => \out_data_reg[6][4]_1\,
      I4 => \out_data_reg[0][4]\(2),
      O => \s_sum[7]_i_6_n_0\
    );
\s_sum[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"595565666566A6AA"
    )
        port map (
      I0 => \out_data_reg[2][4]\,
      I1 => \out_data_reg[6][4]\,
      I2 => \out_data_reg[0][4]_1\(2),
      I3 => \^s_sum_reg[7]_0\(0),
      I4 => \^s_sum_reg[7]_0\(1),
      I5 => \out_data_reg[6][4]_0\,
      O => \s_sum[7]_i_7_n_0\
    );
\s_sum[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699696696996"
    )
        port map (
      I0 => \out_data_reg[0][4]\(1),
      I1 => \out_data_reg[6][4]\,
      I2 => \out_data_reg[6][4]_0\,
      I3 => \^s_sum_reg[7]_0\(1),
      I4 => \^s_sum_reg[7]_0\(0),
      I5 => \out_data_reg[0][4]_1\(2),
      O => \s_sum[7]_i_8_n_0\
    );
\s_sum_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(0),
      Q => \sum_s_reg[14]\(0)
    );
\s_sum_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(10),
      Q => \sum_s_reg[14]\(10)
    );
\s_sum_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(11),
      Q => \sum_s_reg[14]\(11)
    );
\s_sum_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_sum_reg[7]_i_1_n_0\,
      CO(3) => \s_sum_reg[11]_i_1_n_0\,
      CO(2) => \s_sum_reg[11]_i_1_n_1\,
      CO(1) => \s_sum_reg[11]_i_1_n_2\,
      CO(0) => \s_sum_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \out_data_reg[1][4]\,
      DI(2) => \out_data_reg[1][4]\,
      DI(1) => \out_data_reg[1][4]\,
      DI(0) => \s_sum[11]_i_2_n_0\,
      O(3 downto 0) => plusOp(11 downto 8),
      S(3) => \s_sum[11]_i_3_n_0\,
      S(2) => \s_sum[11]_i_4_n_0\,
      S(1) => \s_sum[11]_i_5_n_0\,
      S(0) => \s_sum[11]_i_6_n_0\
    );
\s_sum_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(12),
      Q => \sum_s_reg[14]\(12)
    );
\s_sum_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(13),
      Q => \sum_s_reg[14]\(13)
    );
\s_sum_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(14),
      Q => \sum_s_reg[14]\(14)
    );
\s_sum_reg[14]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_sum_reg[11]_i_1_n_0\,
      CO(3 downto 2) => \NLW_s_sum_reg[14]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_sum_reg[14]_i_2_n_2\,
      CO(0) => \s_sum_reg[14]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \out_data_reg[1][4]\,
      DI(0) => \out_data_reg[1][4]\,
      O(3) => \NLW_s_sum_reg[14]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(14 downto 12),
      S(3) => '0',
      S(2) => \s_sum[14]_i_4_n_0\,
      S(1) => \s_sum[14]_i_5_n_0\,
      S(0) => \s_sum[14]_i_6_n_0\
    );
\s_sum_reg[14]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_sum_reg[7]_i_16_n_0\,
      CO(3) => \NLW_s_sum_reg[14]_i_9_CO_UNCONNECTED\(3),
      CO(2) => \^co\(0),
      CO(1) => \NLW_s_sum_reg[14]_i_9_CO_UNCONNECTED\(1),
      CO(0) => \s_sum_reg[14]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \out_data_reg[8][4]\(1 downto 0),
      O(3 downto 2) => \NLW_s_sum_reg[14]_i_9_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \^s_sum_reg[7]_0\(1 downto 0),
      S(3 downto 2) => B"01",
      S(1) => S(0),
      S(0) => \s_sum[14]_i_17_n_0\
    );
\s_sum_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(1),
      Q => \sum_s_reg[14]\(1)
    );
\s_sum_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(2),
      Q => \sum_s_reg[14]\(2)
    );
\s_sum_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(3),
      Q => \sum_s_reg[14]\(3)
    );
\s_sum_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_sum_reg[3]_i_1_n_0\,
      CO(2) => \s_sum_reg[3]_i_1_n_1\,
      CO(1) => \s_sum_reg[3]_i_1_n_2\,
      CO(0) => \s_sum_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \out_data_reg[0][2]\(2 downto 1),
      DI(1) => \s_sum[3]_i_4_n_0\,
      DI(0) => \out_data_reg[0][2]\(0),
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \out_data_reg[0][3]\(0),
      S(2) => \s_sum[3]_i_6_n_0\,
      S(1) => \s_sum[3]_i_7_n_0\,
      S(0) => \s_sum[3]_i_8_n_0\
    );
\s_sum_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(4),
      Q => \sum_s_reg[14]\(4)
    );
\s_sum_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(5),
      Q => \sum_s_reg[14]\(5)
    );
\s_sum_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(6),
      Q => \sum_s_reg[14]\(6)
    );
\s_sum_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(7),
      Q => \sum_s_reg[14]\(7)
    );
\s_sum_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_sum_reg[3]_i_1_n_0\,
      CO(3) => \s_sum_reg[7]_i_1_n_0\,
      CO(2) => \s_sum_reg[7]_i_1_n_1\,
      CO(1) => \s_sum_reg[7]_i_1_n_2\,
      CO(0) => \s_sum_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \out_data_reg[0][4]\(2),
      DI(2) => \s_sum[7]_i_3_n_0\,
      DI(1 downto 0) => \out_data_reg[0][4]\(1 downto 0),
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \s_sum[7]_i_6_n_0\,
      S(2) => \s_sum[7]_i_7_n_0\,
      S(1) => \s_sum[7]_i_8_n_0\,
      S(0) => \out_data_reg[0][4]_0\(0)
    );
\s_sum_reg[7]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_sum_reg[7]_i_16_n_0\,
      CO(2) => \s_sum_reg[7]_i_16_n_1\,
      CO(1) => \s_sum_reg[7]_i_16_n_2\,
      CO(0) => \s_sum_reg[7]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3 downto 1) => \^o\(2 downto 0),
      O(0) => \s_sum_reg[7]_i_16_n_7\,
      S(3) => \s_sum[7]_i_27_n_0\,
      S(2) => \s_sum[7]_i_28_n_0\,
      S(1) => \s_sum[7]_i_29_n_0\,
      S(0) => \s_sum[7]_i_30_n_0\
    );
\s_sum_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(8),
      Q => \sum_s_reg[14]\(8)
    );
\s_sum_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset_n,
      D => plusOp(9),
      Q => \sum_s_reg[14]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sumElement is
  port (
    out_dv : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_fv : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 14 downto 0 );
    reset_n_IBUF : in STD_LOGIC;
    out_dv_reg_0 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    out_fv_reg_0 : in STD_LOGIC;
    enable_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
end sumElement;

architecture STRUCTURE of sumElement is
  signal sum_s0 : STD_LOGIC;
begin
out_dv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => out_dv_reg_0,
      Q => out_dv(0),
      R => '0'
    );
out_fv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => out_fv_reg_0,
      Q => out_fv(0),
      R => '0'
    );
\sum_s[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reset_n_IBUF,
      I1 => enable_IBUF,
      O => sum_s0
    );
\sum_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\sum_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\sum_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\sum_s_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\sum_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\sum_s_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\sum_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\sum_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\sum_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\sum_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\sum_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\sum_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\sum_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\sum_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\sum_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => sum_s0,
      D => D(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity taps is
  port (
    \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23\ : out STD_LOGIC;
    \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23\ : out STD_LOGIC;
    \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23\ : out STD_LOGIC;
    \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23\ : out STD_LOGIC;
    \cell_reg[2][4]_0\ : out STD_LOGIC;
    \cell_reg[2][4]_1\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cell_reg[3][4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    enable3_out : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_n_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end taps;

architecture STRUCTURE of taps is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cell_reg[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^cell_reg[2][4]_0\ : STD_LOGIC;
  signal \^cell_reg[2][4]_1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^cell_reg[3][4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg ";
  attribute srl_name : string;
  attribute srl_name of \out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
  attribute srl_bus_name of \out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg ";
  attribute srl_name of \out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
  attribute srl_bus_name of \out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg ";
  attribute srl_name of \out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
  attribute srl_bus_name of \out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg ";
  attribute srl_name of \out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
  attribute srl_bus_name of \out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg ";
  attribute srl_name of \out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[0].gen_1.gen1_inst/out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \cell_reg[2][4]_0\ <= \^cell_reg[2][4]_0\;
  \cell_reg[2][4]_1\(4 downto 0) <= \^cell_reg[2][4]_1\(4 downto 0);
  \cell_reg[3][4]_0\(4 downto 0) <= \^cell_reg[3][4]_0\(4 downto 0);
\cell_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => D(0),
      Q => \cell_reg[0]\(0)
    );
\cell_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => D(1),
      Q => \cell_reg[0]\(1)
    );
\cell_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => D(2),
      Q => \cell_reg[0]\(2)
    );
\cell_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => D(3),
      Q => \cell_reg[0]\(3)
    );
\cell_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => D(4),
      Q => \cell_reg[0]\(4)
    );
\cell_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \cell_reg[0]\(0),
      Q => \^cell_reg[2][4]_1\(0)
    );
\cell_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \cell_reg[0]\(1),
      Q => \^cell_reg[2][4]_1\(1)
    );
\cell_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \cell_reg[0]\(2),
      Q => \^cell_reg[2][4]_1\(2)
    );
\cell_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \cell_reg[0]\(3),
      Q => \^cell_reg[2][4]_1\(3)
    );
\cell_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \cell_reg[0]\(4),
      Q => \^cell_reg[2][4]_1\(4)
    );
\cell_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[2][4]_1\(0),
      Q => \^cell_reg[3][4]_0\(0)
    );
\cell_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[2][4]_1\(1),
      Q => \^cell_reg[3][4]_0\(1)
    );
\cell_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[2][4]_1\(2),
      Q => \^cell_reg[3][4]_0\(2)
    );
\cell_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[2][4]_1\(3),
      Q => \^cell_reg[3][4]_0\(3)
    );
\cell_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[2][4]_1\(4),
      Q => \^cell_reg[3][4]_0\(4)
    );
\cell_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[3][4]_0\(0),
      Q => \^q\(0)
    );
\cell_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[3][4]_0\(1),
      Q => \^q\(1)
    );
\cell_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[3][4]_0\(2),
      Q => \^q\(2)
    );
\cell_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[3][4]_0\(3),
      Q => \^q\(3)
    );
\cell_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \^cell_reg[2][4]_0\,
      D => \^cell_reg[3][4]_0\(4),
      Q => \^q\(4)
    );
\out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => enable3_out,
      CLK => clk_IBUF_BUFG,
      D => \^q\(0),
      Q => \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23\,
      Q31 => \NLW_out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => enable3_out,
      CLK => clk_IBUF_BUFG,
      D => \^q\(1),
      Q => \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23\,
      Q31 => \NLW_out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => enable3_out,
      CLK => clk_IBUF_BUFG,
      D => \^q\(2),
      Q => \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23\,
      Q31 => \NLW_out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => enable3_out,
      CLK => clk_IBUF_BUFG,
      D => \^q\(3),
      Q => \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23\,
      Q31 => \NLW_out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => enable3_out,
      CLK => clk_IBUF_BUFG,
      D => \^q\(4),
      Q => \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23\,
      Q31 => \NLW_out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\y_cmp[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n_IBUF,
      O => \^cell_reg[2][4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity taps_0 is
  port (
    \cell_reg[1][4]_0\ : out STD_LOGIC;
    enable3_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cell_reg[1][3]_0\ : out STD_LOGIC;
    \cell_reg[1][2]_0\ : out STD_LOGIC;
    \cell_reg[1][1]_0\ : out STD_LOGIC;
    \cell_reg[1][0]_0\ : out STD_LOGIC;
    \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_0\ : out STD_LOGIC;
    \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_0\ : out STD_LOGIC;
    \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_0\ : out STD_LOGIC;
    \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_0\ : out STD_LOGIC;
    \cell_reg[3][4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cell_reg[3][4]_1\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_1\ : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    \cell_reg[3][3]_0\ : in STD_LOGIC;
    \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_1\ : in STD_LOGIC;
    \cell_reg[3][2]_0\ : in STD_LOGIC;
    \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_1\ : in STD_LOGIC;
    \cell_reg[3][1]_0\ : in STD_LOGIC;
    \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_1\ : in STD_LOGIC;
    \cell_reg[3][0]_0\ : in STD_LOGIC;
    \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_1\ : in STD_LOGIC;
    in_dv_IBUF : in STD_LOGIC;
    enable_IBUF : in STD_LOGIC;
    in_fv_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of taps_0 : entity is "taps";
end taps_0;

architecture STRUCTURE of taps_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^cell_reg[3][4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^enable3_out\ : STD_LOGIC;
  signal \NLW_out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg ";
  attribute srl_name : string;
  attribute srl_name of \out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
  attribute srl_bus_name of \out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg ";
  attribute srl_name of \out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
  attribute srl_bus_name of \out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg ";
  attribute srl_name of \out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
  attribute srl_bus_name of \out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg ";
  attribute srl_name of \out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
  attribute srl_bus_name of \out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg ";
  attribute srl_name of \out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22\ : label is "\conv1/NEs_inst/taps_inst[1].gen_i.geni_inst/out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22 ";
begin
  D(4 downto 0) <= \^d\(4 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  \cell_reg[3][4]_0\(4 downto 0) <= \^cell_reg[3][4]_0\(4 downto 0);
  enable3_out <= \^enable3_out\;
\cell[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => in_dv_IBUF,
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \^enable3_out\
    );
\cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      D => \cell_reg[3][0]_0\,
      Q => \cell_reg[1][0]_0\,
      R => '0'
    );
\cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      D => \cell_reg[3][1]_0\,
      Q => \cell_reg[1][1]_0\,
      R => '0'
    );
\cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      D => \cell_reg[3][2]_0\,
      Q => \cell_reg[1][2]_0\,
      R => '0'
    );
\cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      D => \cell_reg[3][3]_0\,
      Q => \cell_reg[1][3]_0\,
      R => '0'
    );
\cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      D => \cell_reg[3][4]_1\,
      Q => \cell_reg[1][4]_0\,
      R => '0'
    );
\cell_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_1\,
      Q => \^d\(0)
    );
\cell_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_1\,
      Q => \^d\(1)
    );
\cell_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_1\,
      Q => \^d\(2)
    );
\cell_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_1\,
      Q => \^d\(3)
    );
\cell_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_1\,
      Q => \^d\(4)
    );
\cell_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^d\(0),
      Q => \^cell_reg[3][4]_0\(0)
    );
\cell_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^d\(1),
      Q => \^cell_reg[3][4]_0\(1)
    );
\cell_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^d\(2),
      Q => \^cell_reg[3][4]_0\(2)
    );
\cell_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^d\(3),
      Q => \^cell_reg[3][4]_0\(3)
    );
\cell_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^d\(4),
      Q => \^cell_reg[3][4]_0\(4)
    );
\cell_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^cell_reg[3][4]_0\(0),
      Q => \^q\(0)
    );
\cell_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^cell_reg[3][4]_0\(1),
      Q => \^q\(1)
    );
\cell_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^cell_reg[3][4]_0\(2),
      Q => \^q\(2)
    );
\cell_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^cell_reg[3][4]_0\(3),
      Q => \^q\(3)
    );
\cell_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^enable3_out\,
      CLR => reset_n,
      D => \^cell_reg[3][4]_0\(4),
      Q => \^q\(4)
    );
\out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => \^enable3_out\,
      CLK => clk_IBUF_BUFG,
      D => \^q\(0),
      Q => \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q31 => \NLW_out_data_reg[0]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => \^enable3_out\,
      CLK => clk_IBUF_BUFG,
      D => \^q\(1),
      Q => \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q31 => \NLW_out_data_reg[1]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => \^enable3_out\,
      CLK => clk_IBUF_BUFG,
      D => \^q\(2),
      Q => \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q31 => \NLW_out_data_reg[2]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => \^enable3_out\,
      CLK => clk_IBUF_BUFG,
      D => \^q\(3),
      Q => \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q31 => \NLW_out_data_reg[3]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
\out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10111",
      CE => \^enable3_out\,
      CLK => clk_IBUF_BUFG,
      D => \^q\(4),
      Q => \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q31 => \NLW_out_data_reg[4]_srl24_conv1_NEs_inst_taps_inst_c_22_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \taps__parameterized2\ is
  port (
    \cell_reg[1][4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cell_reg[1][3]_0\ : out STD_LOGIC;
    \cell_reg[1][2]_0\ : out STD_LOGIC;
    \cell_reg[1][1]_0\ : out STD_LOGIC;
    \cell_reg[1][0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \out_data_reg[8][4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    enable3_out : in STD_LOGIC;
    \cell_reg[3][4]\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_0\ : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    \cell_reg[3][3]\ : in STD_LOGIC;
    \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_0\ : in STD_LOGIC;
    \cell_reg[3][2]\ : in STD_LOGIC;
    \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_0\ : in STD_LOGIC;
    \cell_reg[3][1]\ : in STD_LOGIC;
    \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_0\ : in STD_LOGIC;
    \cell_reg[3][0]\ : in STD_LOGIC;
    \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \taps__parameterized2\ : entity is "taps";
end \taps__parameterized2\;

architecture STRUCTURE of \taps__parameterized2\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  D(4 downto 0) <= \^d\(4 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
\cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      D => \cell_reg[3][0]\,
      Q => \cell_reg[1][0]_0\,
      R => '0'
    );
\cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      D => \cell_reg[3][1]\,
      Q => \cell_reg[1][1]_0\,
      R => '0'
    );
\cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      D => \cell_reg[3][2]\,
      Q => \cell_reg[1][2]_0\,
      R => '0'
    );
\cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      D => \cell_reg[3][3]\,
      Q => \cell_reg[1][3]_0\,
      R => '0'
    );
\cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      D => \cell_reg[3][4]\,
      Q => \cell_reg[1][4]_0\,
      R => '0'
    );
\cell_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q => \^d\(0)
    );
\cell_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q => \^d\(1)
    );
\cell_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q => \^d\(2)
    );
\cell_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q => \^d\(3)
    );
\cell_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_0\,
      Q => \^d\(4)
    );
\cell_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^d\(0),
      Q => \^q\(0)
    );
\cell_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^d\(1),
      Q => \^q\(1)
    );
\cell_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^d\(2),
      Q => \^q\(2)
    );
\cell_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^d\(3),
      Q => \^q\(3)
    );
\cell_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^d\(4),
      Q => \^q\(4)
    );
\taps_data_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^q\(0),
      Q => \out_data_reg[8][4]\(0)
    );
\taps_data_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^q\(1),
      Q => \out_data_reg[8][4]\(1)
    );
\taps_data_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^q\(2),
      Q => \out_data_reg[8][4]\(2)
    );
\taps_data_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^q\(3),
      Q => \out_data_reg[8][4]\(3)
    );
\taps_data_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => reset_n,
      D => \^q\(4),
      Q => \out_data_reg[8][4]\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity neighExtractor is
  port (
    \cell_reg[2][4]\ : out STD_LOGIC;
    s_ne_dv : out STD_LOGIC;
    \s_sum_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_sum_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_sum_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_sum_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_sum_reg[3]_1\ : out STD_LOGIC;
    \s_sum_reg[3]_2\ : out STD_LOGIC;
    \s_sum_reg[3]_3\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_sum_reg[3]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_sum_reg[3]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_sum_reg[3]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_sum_reg[11]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_sum_reg[11]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_sum_reg[11]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_sum_reg[3]_7\ : out STD_LOGIC;
    \s_sum_reg[11]_2\ : out STD_LOGIC;
    \s_sum_reg[11]_3\ : out STD_LOGIC;
    \s_sum_reg[7]_1\ : out STD_LOGIC;
    \s_sum_reg[7]_2\ : out STD_LOGIC;
    \s_sum_reg[7]_3\ : out STD_LOGIC;
    \s_sum_reg[11]_4\ : out STD_LOGIC;
    \s_sum_reg[7]_4\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \out_data_reg[8][4]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_n_IBUF : in STD_LOGIC;
    enable_IBUF : in STD_LOGIC;
    in_fv_IBUF : in STD_LOGIC;
    in_dv_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end neighExtractor;

architecture STRUCTURE of neighExtractor is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cell_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cell_reg[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cell_reg[2]_4__s_net_1\ : STD_LOGIC;
  signal \cell_reg[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal enable3_out : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \out_data_reg[0]\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \out_data_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \out_data_reg[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \out_data_reg[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \out_data_reg[4]\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \out_data_reg[5]\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \out_data_reg[6]\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_ne_dv\ : STD_LOGIC;
  signal \s_sum[11]_i_8_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_11_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_12_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_13_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_18_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_19_n_0\ : STD_LOGIC;
  signal \s_sum[14]_i_7_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_13_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_14_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_15_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_17_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_18_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_19_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_20_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_21_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_22_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_23_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_31_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_32_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_33_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_34_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_35_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_36_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_37_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_38_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_39_n_0\ : STD_LOGIC;
  signal \s_sum[7]_i_40_n_0\ : STD_LOGIC;
  signal \^s_sum_reg[11]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_sum_reg[11]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_sum_reg[11]_3\ : STD_LOGIC;
  signal \^s_sum_reg[11]_4\ : STD_LOGIC;
  signal \^s_sum_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_sum_reg[3]_1\ : STD_LOGIC;
  signal \^s_sum_reg[3]_2\ : STD_LOGIC;
  signal \^s_sum_reg[3]_3\ : STD_LOGIC;
  signal \^s_sum_reg[3]_4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_sum_reg[3]_5\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_sum_reg[3]_6\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_sum_reg[7]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_sum_reg[7]_1\ : STD_LOGIC;
  signal \^s_sum_reg[7]_2\ : STD_LOGIC;
  signal \^s_sum_reg[7]_3\ : STD_LOGIC;
  signal \taps_inst[0].gen_1.gen1_inst_n_0\ : STD_LOGIC;
  signal \taps_inst[0].gen_1.gen1_inst_n_6\ : STD_LOGIC;
  signal \taps_inst[0].gen_1.gen1_inst_n_7\ : STD_LOGIC;
  signal \taps_inst[0].gen_1.gen1_inst_n_8\ : STD_LOGIC;
  signal \taps_inst[0].gen_1.gen1_inst_n_9\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_0\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_10\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_11\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_12\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_13\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_14\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_15\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_16\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_17\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_18\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_19\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_2\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_20\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_21\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_22\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_23\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_24\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_25\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_3\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_4\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_5\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_6\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_7\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_8\ : STD_LOGIC;
  signal \taps_inst[1].gen_i.geni_inst_n_9\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_0\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_1\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_10\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_11\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_12\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_13\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_14\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_15\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_16\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_17\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_18\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_19\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_2\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_3\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_4\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_5\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_6\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_7\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_8\ : STD_LOGIC;
  signal \taps_inst[2].gen_last.gen_last_inst_n_9\ : STD_LOGIC;
  signal taps_inst_c_0_n_0 : STD_LOGIC;
  signal taps_inst_c_10_n_0 : STD_LOGIC;
  signal taps_inst_c_11_n_0 : STD_LOGIC;
  signal taps_inst_c_12_n_0 : STD_LOGIC;
  signal taps_inst_c_13_n_0 : STD_LOGIC;
  signal taps_inst_c_14_n_0 : STD_LOGIC;
  signal taps_inst_c_15_n_0 : STD_LOGIC;
  signal taps_inst_c_16_n_0 : STD_LOGIC;
  signal taps_inst_c_17_n_0 : STD_LOGIC;
  signal taps_inst_c_18_n_0 : STD_LOGIC;
  signal taps_inst_c_19_n_0 : STD_LOGIC;
  signal taps_inst_c_1_n_0 : STD_LOGIC;
  signal taps_inst_c_20_n_0 : STD_LOGIC;
  signal taps_inst_c_21_n_0 : STD_LOGIC;
  signal taps_inst_c_22_n_0 : STD_LOGIC;
  signal taps_inst_c_23_n_0 : STD_LOGIC;
  signal taps_inst_c_2_n_0 : STD_LOGIC;
  signal taps_inst_c_3_n_0 : STD_LOGIC;
  signal taps_inst_c_4_n_0 : STD_LOGIC;
  signal taps_inst_c_5_n_0 : STD_LOGIC;
  signal taps_inst_c_6_n_0 : STD_LOGIC;
  signal taps_inst_c_7_n_0 : STD_LOGIC;
  signal taps_inst_c_8_n_0 : STD_LOGIC;
  signal taps_inst_c_9_n_0 : STD_LOGIC;
  signal taps_inst_c_n_0 : STD_LOGIC;
  signal \taps_inst_gate__0_n_0\ : STD_LOGIC;
  signal \taps_inst_gate__1_n_0\ : STD_LOGIC;
  signal \taps_inst_gate__2_n_0\ : STD_LOGIC;
  signal \taps_inst_gate__3_n_0\ : STD_LOGIC;
  signal \taps_inst_gate__4_n_0\ : STD_LOGIC;
  signal \taps_inst_gate__5_n_0\ : STD_LOGIC;
  signal \taps_inst_gate__6_n_0\ : STD_LOGIC;
  signal \taps_inst_gate__7_n_0\ : STD_LOGIC;
  signal \taps_inst_gate__8_n_0\ : STD_LOGIC;
  signal taps_inst_gate_n_0 : STD_LOGIC;
  signal tmp_dv1 : STD_LOGIC;
  signal \tmp_dv1__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_dv1__0_carry__2_n_3\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_n_0\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_n_1\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_n_2\ : STD_LOGIC;
  signal \tmp_dv1__0_carry_n_3\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \tmp_dv1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal tmp_dv1_out : STD_LOGIC;
  signal tmp_dv22_in : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry__2_n_3\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_i_9_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_n_0\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_n_1\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_n_2\ : STD_LOGIC;
  signal \tmp_dv2__0_carry_n_3\ : STD_LOGIC;
  signal \tmp_dv2__14\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \tmp_dv2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal x_cmp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x_cmp0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \x_cmp0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__0_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__0_n_1\ : STD_LOGIC;
  signal \x_cmp0_carry__0_n_2\ : STD_LOGIC;
  signal \x_cmp0_carry__0_n_3\ : STD_LOGIC;
  signal \x_cmp0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__1_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__1_n_1\ : STD_LOGIC;
  signal \x_cmp0_carry__1_n_2\ : STD_LOGIC;
  signal \x_cmp0_carry__1_n_3\ : STD_LOGIC;
  signal \x_cmp0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__2_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__2_n_1\ : STD_LOGIC;
  signal \x_cmp0_carry__2_n_2\ : STD_LOGIC;
  signal \x_cmp0_carry__2_n_3\ : STD_LOGIC;
  signal \x_cmp0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__3_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__3_n_1\ : STD_LOGIC;
  signal \x_cmp0_carry__3_n_2\ : STD_LOGIC;
  signal \x_cmp0_carry__3_n_3\ : STD_LOGIC;
  signal \x_cmp0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__4_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__4_n_1\ : STD_LOGIC;
  signal \x_cmp0_carry__4_n_2\ : STD_LOGIC;
  signal \x_cmp0_carry__4_n_3\ : STD_LOGIC;
  signal \x_cmp0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__5_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__5_n_1\ : STD_LOGIC;
  signal \x_cmp0_carry__5_n_2\ : STD_LOGIC;
  signal \x_cmp0_carry__5_n_3\ : STD_LOGIC;
  signal \x_cmp0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp0_carry__6_n_2\ : STD_LOGIC;
  signal \x_cmp0_carry__6_n_3\ : STD_LOGIC;
  signal x_cmp0_carry_i_1_n_0 : STD_LOGIC;
  signal x_cmp0_carry_i_2_n_0 : STD_LOGIC;
  signal x_cmp0_carry_i_3_n_0 : STD_LOGIC;
  signal x_cmp0_carry_i_4_n_0 : STD_LOGIC;
  signal x_cmp0_carry_n_0 : STD_LOGIC;
  signal x_cmp0_carry_n_1 : STD_LOGIC;
  signal x_cmp0_carry_n_2 : STD_LOGIC;
  signal x_cmp0_carry_n_3 : STD_LOGIC;
  signal \x_cmp1__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__0_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__0_n_1\ : STD_LOGIC;
  signal \x_cmp1__0_carry__0_n_2\ : STD_LOGIC;
  signal \x_cmp1__0_carry__0_n_3\ : STD_LOGIC;
  signal \x_cmp1__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__1_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__1_n_1\ : STD_LOGIC;
  signal \x_cmp1__0_carry__1_n_2\ : STD_LOGIC;
  signal \x_cmp1__0_carry__1_n_3\ : STD_LOGIC;
  signal \x_cmp1__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry__2_n_2\ : STD_LOGIC;
  signal \x_cmp1__0_carry__2_n_3\ : STD_LOGIC;
  signal \x_cmp1__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry_n_0\ : STD_LOGIC;
  signal \x_cmp1__0_carry_n_1\ : STD_LOGIC;
  signal \x_cmp1__0_carry_n_2\ : STD_LOGIC;
  signal \x_cmp1__0_carry_n_3\ : STD_LOGIC;
  signal \x_cmp[31]_i_1_n_0\ : STD_LOGIC;
  signal \x_cmp[31]_i_3_n_0\ : STD_LOGIC;
  signal y_cmp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal y_cmp0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \y_cmp[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[10]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[11]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[12]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[12]_i_3_n_0\ : STD_LOGIC;
  signal \y_cmp[12]_i_4_n_0\ : STD_LOGIC;
  signal \y_cmp[12]_i_5_n_0\ : STD_LOGIC;
  signal \y_cmp[12]_i_6_n_0\ : STD_LOGIC;
  signal \y_cmp[13]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[14]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[15]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[16]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[16]_i_3_n_0\ : STD_LOGIC;
  signal \y_cmp[16]_i_4_n_0\ : STD_LOGIC;
  signal \y_cmp[16]_i_5_n_0\ : STD_LOGIC;
  signal \y_cmp[16]_i_6_n_0\ : STD_LOGIC;
  signal \y_cmp[17]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[18]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[19]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[1]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[20]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[20]_i_3_n_0\ : STD_LOGIC;
  signal \y_cmp[20]_i_4_n_0\ : STD_LOGIC;
  signal \y_cmp[20]_i_5_n_0\ : STD_LOGIC;
  signal \y_cmp[20]_i_6_n_0\ : STD_LOGIC;
  signal \y_cmp[21]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[22]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[23]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[24]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[24]_i_3_n_0\ : STD_LOGIC;
  signal \y_cmp[24]_i_4_n_0\ : STD_LOGIC;
  signal \y_cmp[24]_i_5_n_0\ : STD_LOGIC;
  signal \y_cmp[24]_i_6_n_0\ : STD_LOGIC;
  signal \y_cmp[25]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[26]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[27]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[28]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[28]_i_3_n_0\ : STD_LOGIC;
  signal \y_cmp[28]_i_4_n_0\ : STD_LOGIC;
  signal \y_cmp[28]_i_5_n_0\ : STD_LOGIC;
  signal \y_cmp[28]_i_6_n_0\ : STD_LOGIC;
  signal \y_cmp[29]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[2]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[30]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[31]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[31]_i_2_n_0\ : STD_LOGIC;
  signal \y_cmp[31]_i_4_n_0\ : STD_LOGIC;
  signal \y_cmp[31]_i_5_n_0\ : STD_LOGIC;
  signal \y_cmp[31]_i_7_n_0\ : STD_LOGIC;
  signal \y_cmp[31]_i_8_n_0\ : STD_LOGIC;
  signal \y_cmp[31]_i_9_n_0\ : STD_LOGIC;
  signal \y_cmp[3]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[4]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[4]_i_3_n_0\ : STD_LOGIC;
  signal \y_cmp[4]_i_4_n_0\ : STD_LOGIC;
  signal \y_cmp[4]_i_5_n_0\ : STD_LOGIC;
  signal \y_cmp[4]_i_6_n_0\ : STD_LOGIC;
  signal \y_cmp[5]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[6]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[7]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[8]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp[8]_i_3_n_0\ : STD_LOGIC;
  signal \y_cmp[8]_i_4_n_0\ : STD_LOGIC;
  signal \y_cmp[8]_i_5_n_0\ : STD_LOGIC;
  signal \y_cmp[8]_i_6_n_0\ : STD_LOGIC;
  signal \y_cmp[9]_i_1_n_0\ : STD_LOGIC;
  signal \y_cmp_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \y_cmp_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \y_cmp_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \y_cmp_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \y_cmp_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \y_cmp_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \y_cmp_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \y_cmp_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \y_cmp_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \y_cmp_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \y_cmp_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \y_cmp_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \y_cmp_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \y_cmp_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \y_cmp_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \y_cmp_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \y_cmp_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \y_cmp_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \y_cmp_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \y_cmp_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \y_cmp_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \y_cmp_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \y_cmp_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \y_cmp_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \y_cmp_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \y_cmp_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \y_cmp_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \y_cmp_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \y_cmp_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \y_cmp_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_tmp_dv1__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv1__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv1__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv1__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_dv1__0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv1_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv1_inferred__1/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_dv1_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv2__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv2__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv2__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv2__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tmp_dv2__0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_dv2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_dv2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_x_cmp0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_x_cmp0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_x_cmp1__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_x_cmp1__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_x_cmp1__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_x_cmp1__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_x_cmp1__0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_cmp_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_cmp_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_sum[11]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_sum[11]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_sum[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_sum[14]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_sum[14]_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_sum[14]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_sum[14]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_sum[14]_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_sum[3]_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_sum[7]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_sum[7]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_sum[7]_i_14\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_sum[7]_i_17\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_sum[7]_i_18\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_sum[7]_i_19\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_sum[7]_i_21\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_sum[7]_i_23\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_sum[7]_i_31\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_sum[7]_i_32\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_sum[7]_i_33\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_sum[7]_i_34\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_sum[7]_i_35\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_sum[7]_i_36\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_sum[7]_i_39\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_sum[7]_i_40\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of taps_inst_gate : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \taps_inst_gate__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \taps_inst_gate__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \taps_inst_gate__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \taps_inst_gate__3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \taps_inst_gate__4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \taps_inst_gate__5\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \taps_inst_gate__6\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \taps_inst_gate__7\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \taps_inst_gate__8\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \x_cmp[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \x_cmp[11]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \x_cmp[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \x_cmp[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \x_cmp[14]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \x_cmp[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \x_cmp[16]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \x_cmp[17]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \x_cmp[18]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \x_cmp[19]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \x_cmp[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \x_cmp[20]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \x_cmp[21]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \x_cmp[23]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \x_cmp[24]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \x_cmp[25]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \x_cmp[26]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \x_cmp[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \x_cmp[28]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \x_cmp[29]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \x_cmp[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \x_cmp[30]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \x_cmp[31]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \x_cmp[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \x_cmp[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \x_cmp[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \x_cmp[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \x_cmp[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \x_cmp[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \x_cmp[9]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \y_cmp[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \y_cmp[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \y_cmp[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \y_cmp[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \y_cmp[13]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \y_cmp[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \y_cmp[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \y_cmp[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \y_cmp[17]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \y_cmp[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \y_cmp[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \y_cmp[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \y_cmp[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \y_cmp[21]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \y_cmp[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y_cmp[23]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \y_cmp[24]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \y_cmp[25]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y_cmp[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y_cmp[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \y_cmp[28]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \y_cmp[29]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \y_cmp[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \y_cmp[30]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \y_cmp[31]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \y_cmp[31]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \y_cmp[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \y_cmp[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \y_cmp[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \y_cmp[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y_cmp[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \y_cmp[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \y_cmp[9]_i_1\ : label is "soft_lutpair20";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \cell_reg[2][4]\ <= \cell_reg[2]_4__s_net_1\;
  s_ne_dv <= \^s_ne_dv\;
  \s_sum_reg[11]\(4 downto 0) <= \^s_sum_reg[11]\(4 downto 0);
  \s_sum_reg[11]_0\(4 downto 0) <= \^s_sum_reg[11]_0\(4 downto 0);
  \s_sum_reg[11]_3\ <= \^s_sum_reg[11]_3\;
  \s_sum_reg[11]_4\ <= \^s_sum_reg[11]_4\;
  \s_sum_reg[3]_0\(1 downto 0) <= \^s_sum_reg[3]_0\(1 downto 0);
  \s_sum_reg[3]_1\ <= \^s_sum_reg[3]_1\;
  \s_sum_reg[3]_2\ <= \^s_sum_reg[3]_2\;
  \s_sum_reg[3]_3\ <= \^s_sum_reg[3]_3\;
  \s_sum_reg[3]_4\(0) <= \^s_sum_reg[3]_4\(0);
  \s_sum_reg[3]_5\(0) <= \^s_sum_reg[3]_5\(0);
  \s_sum_reg[3]_6\(0) <= \^s_sum_reg[3]_6\(0);
  \s_sum_reg[7]\(2 downto 0) <= \^s_sum_reg[7]\(2 downto 0);
  \s_sum_reg[7]_1\ <= \^s_sum_reg[7]_1\;
  \s_sum_reg[7]_2\ <= \^s_sum_reg[7]_2\;
  \s_sum_reg[7]_3\ <= \^s_sum_reg[7]_3\;
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(17),
      I1 => x_cmp(16),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(23),
      I1 => x_cmp(22),
      I2 => x_cmp(21),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(20),
      I1 => x_cmp(19),
      I2 => x_cmp(18),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(14),
      I1 => x_cmp(15),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(17),
      I1 => x_cmp(16),
      I2 => x_cmp(15),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(13),
      I1 => x_cmp(12),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(11),
      I1 => x_cmp(10),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(14),
      I1 => x_cmp(13),
      I2 => x_cmp(12),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(31),
      I1 => x_cmp(30),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(25),
      I1 => x_cmp(24),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(23),
      I1 => x_cmp(22),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(29),
      I1 => x_cmp(28),
      I2 => x_cmp(27),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(26),
      I1 => x_cmp(25),
      I2 => x_cmp(24),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(20),
      I1 => x_cmp(21),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(19),
      I1 => x_cmp(18),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(31),
      I1 => x_cmp(30),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(29),
      I1 => x_cmp(28),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(26),
      I1 => x_cmp(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(3),
      I1 => x_cmp(2),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(11),
      I1 => x_cmp(10),
      I2 => x_cmp(9),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(8),
      I1 => x_cmp(7),
      I2 => x_cmp(6),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(8),
      I1 => x_cmp(9),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_cmp(5),
      I1 => x_cmp(4),
      I2 => x_cmp(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(7),
      I1 => x_cmp(6),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => x_cmp(2),
      I1 => x_cmp(1),
      I2 => x_cmp(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(5),
      I1 => x_cmp(4),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(2),
      I1 => x_cmp(3),
      O => \i__carry_i_5_n_0\
    );
\out_data_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[1]\(0),
      Q => \^q\(0),
      R => '0'
    );
\out_data_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[1]\(1),
      Q => \^q\(1),
      R => '0'
    );
\out_data_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[1]\(2),
      Q => \^q\(2),
      R => '0'
    );
\out_data_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[1]\(3),
      Q => \out_data_reg[0]\(3),
      R => '0'
    );
\out_data_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[1]\(4),
      Q => \^q\(3),
      R => '0'
    );
\out_data_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[2]\(0),
      Q => \out_data_reg[1]\(0),
      R => '0'
    );
\out_data_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[2]\(1),
      Q => \out_data_reg[1]\(1),
      R => '0'
    );
\out_data_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[2]\(2),
      Q => \out_data_reg[1]\(2),
      R => '0'
    );
\out_data_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[2]\(3),
      Q => \out_data_reg[1]\(3),
      R => '0'
    );
\out_data_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[2]\(4),
      Q => \out_data_reg[1]\(4),
      R => '0'
    );
\out_data_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[3]\(0),
      Q => \out_data_reg[2]\(0),
      R => '0'
    );
\out_data_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[3]\(1),
      Q => \out_data_reg[2]\(1),
      R => '0'
    );
\out_data_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[3]\(2),
      Q => \out_data_reg[2]\(2),
      R => '0'
    );
\out_data_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[3]\(3),
      Q => \out_data_reg[2]\(3),
      R => '0'
    );
\out_data_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \cell_reg[3]\(4),
      Q => \out_data_reg[2]\(4),
      R => '0'
    );
\out_data_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_6\,
      Q => \out_data_reg[3]\(0),
      R => '0'
    );
\out_data_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_5\,
      Q => \out_data_reg[3]\(1),
      R => '0'
    );
\out_data_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_4\,
      Q => \out_data_reg[3]\(2),
      R => '0'
    );
\out_data_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_3\,
      Q => \out_data_reg[3]\(3),
      R => '0'
    );
\out_data_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_2\,
      Q => \out_data_reg[3]\(4),
      R => '0'
    );
\out_data_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_25\,
      Q => \^s_sum_reg[3]_4\(0),
      R => '0'
    );
\out_data_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_24\,
      Q => \out_data_reg[4]\(1),
      R => '0'
    );
\out_data_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_23\,
      Q => \out_data_reg[4]\(2),
      R => '0'
    );
\out_data_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_22\,
      Q => \out_data_reg[4]\(3),
      R => '0'
    );
\out_data_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_21\,
      Q => \out_data_reg[4]\(4),
      R => '0'
    );
\out_data_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_16\,
      Q => \^s_sum_reg[3]_5\(0),
      R => '0'
    );
\out_data_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_15\,
      Q => \out_data_reg[5]\(1),
      R => '0'
    );
\out_data_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_14\,
      Q => \out_data_reg[5]\(2),
      R => '0'
    );
\out_data_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_13\,
      Q => \out_data_reg[5]\(3),
      R => '0'
    );
\out_data_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[1].gen_i.geni_inst_n_12\,
      Q => \out_data_reg[5]\(4),
      R => '0'
    );
\out_data_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_5\,
      Q => \^s_sum_reg[3]_6\(0),
      R => '0'
    );
\out_data_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_4\,
      Q => \out_data_reg[6]\(1),
      R => '0'
    );
\out_data_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_3\,
      Q => \out_data_reg[6]\(2),
      R => '0'
    );
\out_data_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_2\,
      Q => \out_data_reg[6]\(3),
      R => '0'
    );
\out_data_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_1\,
      Q => \out_data_reg[6]\(4),
      R => '0'
    );
\out_data_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_14\,
      Q => \^s_sum_reg[11]\(0),
      R => '0'
    );
\out_data_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_13\,
      Q => \^s_sum_reg[11]\(1),
      R => '0'
    );
\out_data_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_12\,
      Q => \^s_sum_reg[11]\(2),
      R => '0'
    );
\out_data_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_11\,
      Q => \^s_sum_reg[11]\(3),
      R => '0'
    );
\out_data_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_10\,
      Q => \^s_sum_reg[11]\(4),
      R => '0'
    );
\out_data_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_19\,
      Q => \^s_sum_reg[11]_0\(0),
      R => '0'
    );
\out_data_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_18\,
      Q => \^s_sum_reg[11]_0\(1),
      R => '0'
    );
\out_data_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_17\,
      Q => \^s_sum_reg[11]_0\(2),
      R => '0'
    );
\out_data_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_16\,
      Q => \^s_sum_reg[11]_0\(3),
      R => '0'
    );
\out_data_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => reset_n_IBUF,
      D => \taps_inst[2].gen_last.gen_last_inst_n_15\,
      Q => \^s_sum_reg[11]_0\(4),
      R => '0'
    );
\s_sum[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF817E"
    )
        port map (
      I0 => \out_data_reg[6]\(4),
      I1 => \out_data_reg[4]\(4),
      I2 => \out_data_reg[5]\(4),
      I3 => \s_sum[14]_i_13_n_0\,
      I4 => \s_sum[11]_i_8_n_0\,
      O => \s_sum_reg[7]_4\
    );
\s_sum[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7717118"
    )
        port map (
      I0 => \s_sum[14]_i_12_n_0\,
      I1 => \s_sum[14]_i_11_n_0\,
      I2 => \out_data_reg[2]\(4),
      I3 => \out_data_reg[1]\(4),
      I4 => \out_data_reg[3]\(4),
      O => \s_sum[11]_i_8_n_0\
    );
\s_sum[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s_ne_dv\,
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => E(0)
    );
\s_sum[14]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80E8E8FE"
    )
        port map (
      I0 => \out_data_reg[1]\(4),
      I1 => \out_data_reg[2]\(4),
      I2 => \out_data_reg[3]\(4),
      I3 => \s_sum[14]_i_12_n_0\,
      I4 => \s_sum[14]_i_11_n_0\,
      O => \^s_sum_reg[11]_4\
    );
\s_sum[14]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF8F8E0F8E0E080"
    )
        port map (
      I0 => \s_sum[14]_i_18_n_0\,
      I1 => \s_sum[14]_i_19_n_0\,
      I2 => \s_sum[7]_i_32_n_0\,
      I3 => \out_data_reg[3]\(2),
      I4 => \out_data_reg[1]\(2),
      I5 => \out_data_reg[2]\(2),
      O => \s_sum[14]_i_11_n_0\
    );
\s_sum[14]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \out_data_reg[3]\(3),
      I1 => \out_data_reg[1]\(3),
      I2 => \out_data_reg[2]\(3),
      O => \s_sum[14]_i_12_n_0\
    );
\s_sum[14]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => \s_sum[7]_i_22_n_0\,
      I1 => \s_sum[7]_i_23_n_0\,
      I2 => \out_data_reg[6]\(4),
      I3 => \out_data_reg[4]\(4),
      I4 => \out_data_reg[5]\(4),
      O => \s_sum[14]_i_13_n_0\
    );
\s_sum[14]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_sum_reg[11]_0\(4),
      I1 => \^s_sum_reg[11]\(4),
      O => \s_sum_reg[11]_1\(1)
    );
\s_sum[14]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_sum_reg[11]\(3),
      I1 => \^s_sum_reg[11]_0\(3),
      O => \s_sum_reg[11]_1\(0)
    );
\s_sum[14]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^s_sum_reg[11]\(4),
      I1 => \^s_sum_reg[11]_0\(4),
      O => S(0)
    );
\s_sum[14]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \out_data_reg[3]\(1),
      I1 => \out_data_reg[1]\(1),
      I2 => \out_data_reg[2]\(1),
      O => \s_sum[14]_i_18_n_0\
    );
\s_sum[14]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696960096000000"
    )
        port map (
      I0 => \out_data_reg[2]\(1),
      I1 => \out_data_reg[1]\(1),
      I2 => \out_data_reg[3]\(1),
      I3 => \out_data_reg[2]\(0),
      I4 => \out_data_reg[1]\(0),
      I5 => \out_data_reg[3]\(0),
      O => \s_sum[14]_i_19_n_0\
    );
\s_sum[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080FE0000"
    )
        port map (
      I0 => \out_data_reg[1]\(4),
      I1 => \out_data_reg[2]\(4),
      I2 => \out_data_reg[3]\(4),
      I3 => \s_sum[14]_i_7_n_0\,
      I4 => \^s_sum_reg[11]_3\,
      I5 => CO(0),
      O => \s_sum_reg[11]_2\
    );
\s_sum[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => \s_sum[14]_i_11_n_0\,
      I1 => \s_sum[14]_i_12_n_0\,
      I2 => \out_data_reg[3]\(4),
      I3 => \out_data_reg[1]\(4),
      I4 => \out_data_reg[2]\(4),
      O => \s_sum[14]_i_7_n_0\
    );
\s_sum[14]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FE"
    )
        port map (
      I0 => \out_data_reg[4]\(4),
      I1 => \out_data_reg[5]\(4),
      I2 => \out_data_reg[6]\(4),
      I3 => \s_sum[14]_i_13_n_0\,
      O => \^s_sum_reg[11]_3\
    );
\s_sum[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \^s_sum_reg[3]_5\(0),
      I1 => \^s_sum_reg[3]_4\(0),
      I2 => \^s_sum_reg[3]_6\(0),
      I3 => \out_data_reg[5]\(1),
      I4 => \out_data_reg[4]\(1),
      I5 => \out_data_reg[6]\(1),
      O => \^s_sum_reg[3]_2\
    );
\s_sum[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => O(1),
      I1 => \s_sum[7]_i_35_n_0\,
      I2 => \s_sum[7]_i_36_n_0\,
      O => \^s_sum_reg[3]_3\
    );
\s_sum[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \out_data_reg[3]\(0),
      I1 => \out_data_reg[1]\(0),
      I2 => \out_data_reg[2]\(0),
      O => \s_sum_reg[3]_7\
    );
\s_sum[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => O(0),
      I1 => \^s_sum_reg[3]_1\,
      I2 => \^s_sum_reg[3]_2\,
      I3 => \^q\(2),
      I4 => \^s_sum_reg[3]_3\,
      O => \^s_sum_reg[3]_0\(1)
    );
\s_sum[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => O(0),
      I1 => \^s_sum_reg[3]_1\,
      I2 => \^s_sum_reg[3]_2\,
      I3 => \^q\(2),
      I4 => \^s_sum_reg[3]_3\,
      O => \^s_sum_reg[3]_0\(0)
    );
\s_sum[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => O(2),
      I1 => \s_sum[7]_i_17_n_0\,
      I2 => \s_sum[7]_i_18_n_0\,
      I3 => \^s_sum_reg[3]_0\(1),
      I4 => \out_data_reg[0]\(3),
      I5 => \s_sum[7]_i_19_n_0\,
      O => \s_sum_reg[3]\(0)
    );
\s_sum[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \out_data_reg[2]\(0),
      I1 => \out_data_reg[1]\(0),
      I2 => \out_data_reg[3]\(0),
      I3 => \out_data_reg[2]\(1),
      I4 => \out_data_reg[1]\(1),
      I5 => \out_data_reg[3]\(1),
      O => \^s_sum_reg[3]_1\
    );
\s_sum[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_sum[7]_i_13_n_0\,
      I1 => \s_sum[7]_i_14_n_0\,
      O => \^s_sum_reg[7]_1\
    );
\s_sum[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"817E7E81"
    )
        port map (
      I0 => \out_data_reg[6]\(4),
      I1 => \out_data_reg[4]\(4),
      I2 => \out_data_reg[5]\(4),
      I3 => \s_sum[14]_i_13_n_0\,
      I4 => \s_sum[11]_i_8_n_0\,
      O => \^s_sum_reg[7]_2\
    );
\s_sum[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9939336366C6CC9"
    )
        port map (
      I0 => \s_sum[11]_i_8_n_0\,
      I1 => CO(0),
      I2 => \s_sum[14]_i_13_n_0\,
      I3 => \s_sum[7]_i_20_n_0\,
      I4 => \s_sum[7]_i_21_n_0\,
      I5 => \^s_sum_reg[11]_4\,
      O => \^s_sum_reg[7]_3\
    );
\s_sum[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \s_sum[7]_i_22_n_0\,
      I1 => \s_sum[7]_i_23_n_0\,
      I2 => \out_data_reg[6]\(4),
      I3 => \out_data_reg[4]\(4),
      I4 => \out_data_reg[5]\(4),
      O => \s_sum[7]_i_13_n_0\
    );
\s_sum[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \s_sum[14]_i_11_n_0\,
      I1 => \s_sum[14]_i_12_n_0\,
      I2 => \out_data_reg[3]\(4),
      I3 => \out_data_reg[1]\(4),
      I4 => \out_data_reg[2]\(4),
      O => \s_sum[7]_i_14_n_0\
    );
\s_sum[7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => O(2),
      I1 => \s_sum[7]_i_17_n_0\,
      I2 => \s_sum[7]_i_18_n_0\,
      O => \s_sum[7]_i_15_n_0\
    );
\s_sum[7]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \s_sum[7]_i_31_n_0\,
      I1 => \s_sum[7]_i_32_n_0\,
      I2 => \out_data_reg[3]\(2),
      I3 => \out_data_reg[1]\(2),
      I4 => \out_data_reg[2]\(2),
      O => \s_sum[7]_i_17_n_0\
    );
\s_sum[7]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \s_sum[7]_i_33_n_0\,
      I1 => \s_sum[7]_i_34_n_0\,
      I2 => \out_data_reg[6]\(2),
      I3 => \out_data_reg[4]\(2),
      I4 => \out_data_reg[5]\(2),
      O => \s_sum[7]_i_18_n_0\
    );
\s_sum[7]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => O(1),
      I1 => \s_sum[7]_i_35_n_0\,
      I2 => \s_sum[7]_i_36_n_0\,
      O => \s_sum[7]_i_19_n_0\
    );
\s_sum[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828822800000000"
    )
        port map (
      I0 => \^s_sum_reg[7]_1\,
      I1 => \^s_sum_reg[7]_2\,
      I2 => \out_data_reg[8][4]_0\(1),
      I3 => \out_data_reg[8][4]_0\(0),
      I4 => \^q\(3),
      I5 => \^s_sum_reg[7]_3\,
      O => \^s_sum_reg[7]\(2)
    );
\s_sum[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \out_data_reg[5]\(4),
      I1 => \out_data_reg[4]\(4),
      O => \s_sum[7]_i_20_n_0\
    );
\s_sum[7]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \out_data_reg[4]\(4),
      I1 => \out_data_reg[5]\(4),
      I2 => \out_data_reg[6]\(4),
      O => \s_sum[7]_i_21_n_0\
    );
\s_sum[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF8F8E0F8E0E080"
    )
        port map (
      I0 => \s_sum[7]_i_37_n_0\,
      I1 => \s_sum[7]_i_38_n_0\,
      I2 => \s_sum[7]_i_34_n_0\,
      I3 => \out_data_reg[6]\(2),
      I4 => \out_data_reg[4]\(2),
      I5 => \out_data_reg[5]\(2),
      O => \s_sum[7]_i_22_n_0\
    );
\s_sum[7]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \out_data_reg[6]\(3),
      I1 => \out_data_reg[4]\(3),
      I2 => \out_data_reg[5]\(3),
      O => \s_sum[7]_i_23_n_0\
    );
\s_sum[7]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_sum_reg[11]\(2),
      I1 => \^s_sum_reg[11]_0\(2),
      O => DI(2)
    );
\s_sum[7]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_sum_reg[11]\(1),
      I1 => \^s_sum_reg[11]_0\(1),
      O => DI(1)
    );
\s_sum[7]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_sum_reg[11]\(0),
      I1 => \^s_sum_reg[11]_0\(0),
      O => DI(0)
    );
\s_sum[7]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \s_sum[14]_i_19_n_0\,
      I1 => \s_sum[7]_i_39_n_0\,
      I2 => \out_data_reg[3]\(1),
      I3 => \out_data_reg[1]\(1),
      I4 => \out_data_reg[2]\(1),
      O => \s_sum[7]_i_31_n_0\
    );
\s_sum[7]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \out_data_reg[3]\(3),
      I1 => \out_data_reg[1]\(3),
      I2 => \out_data_reg[2]\(3),
      O => \s_sum[7]_i_32_n_0\
    );
\s_sum[7]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \s_sum[7]_i_38_n_0\,
      I1 => \s_sum[7]_i_40_n_0\,
      I2 => \out_data_reg[6]\(1),
      I3 => \out_data_reg[4]\(1),
      I4 => \out_data_reg[5]\(1),
      O => \s_sum[7]_i_33_n_0\
    );
\s_sum[7]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \out_data_reg[6]\(3),
      I1 => \out_data_reg[4]\(3),
      I2 => \out_data_reg[5]\(3),
      O => \s_sum[7]_i_34_n_0\
    );
\s_sum[7]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \s_sum[14]_i_19_n_0\,
      I1 => \s_sum[7]_i_39_n_0\,
      I2 => \out_data_reg[3]\(1),
      I3 => \out_data_reg[1]\(1),
      I4 => \out_data_reg[2]\(1),
      O => \s_sum[7]_i_35_n_0\
    );
\s_sum[7]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \s_sum[7]_i_38_n_0\,
      I1 => \s_sum[7]_i_40_n_0\,
      I2 => \out_data_reg[6]\(1),
      I3 => \out_data_reg[4]\(1),
      I4 => \out_data_reg[5]\(1),
      O => \s_sum[7]_i_36_n_0\
    );
\s_sum[7]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \out_data_reg[6]\(1),
      I1 => \out_data_reg[4]\(1),
      I2 => \out_data_reg[5]\(1),
      O => \s_sum[7]_i_37_n_0\
    );
\s_sum[7]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696960096000000"
    )
        port map (
      I0 => \out_data_reg[5]\(1),
      I1 => \out_data_reg[4]\(1),
      I2 => \out_data_reg[6]\(1),
      I3 => \^s_sum_reg[3]_5\(0),
      I4 => \^s_sum_reg[3]_4\(0),
      I5 => \^s_sum_reg[3]_6\(0),
      O => \s_sum[7]_i_38_n_0\
    );
\s_sum[7]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \out_data_reg[3]\(2),
      I1 => \out_data_reg[1]\(2),
      I2 => \out_data_reg[2]\(2),
      O => \s_sum[7]_i_39_n_0\
    );
\s_sum[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F99090F9"
    )
        port map (
      I0 => \s_sum[7]_i_13_n_0\,
      I1 => \s_sum[7]_i_14_n_0\,
      I2 => \s_sum[7]_i_15_n_0\,
      I3 => \^q\(3),
      I4 => \out_data_reg[8][4]_0\(0),
      O => \^s_sum_reg[7]\(1)
    );
\s_sum[7]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \out_data_reg[6]\(2),
      I1 => \out_data_reg[4]\(2),
      I2 => \out_data_reg[5]\(2),
      O => \s_sum[7]_i_40_n_0\
    );
\s_sum[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => O(2),
      I1 => \s_sum[7]_i_17_n_0\,
      I2 => \s_sum[7]_i_18_n_0\,
      I3 => \s_sum[7]_i_19_n_0\,
      I4 => \out_data_reg[0]\(3),
      O => \^s_sum_reg[7]\(0)
    );
\s_sum[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \s_sum[7]_i_13_n_0\,
      I1 => \s_sum[7]_i_14_n_0\,
      I2 => \^s_sum_reg[7]\(0),
      I3 => \out_data_reg[8][4]_0\(0),
      I4 => \^q\(3),
      I5 => \s_sum[7]_i_15_n_0\,
      O => \s_sum_reg[7]_0\(0)
    );
\taps_inst[0].gen_1.gen1_inst\: entity work.taps
     port map (
      D(4 downto 0) => D(4 downto 0),
      Q(4 downto 0) => \cell_reg[3]\(4 downto 0),
      \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23\ => \taps_inst[0].gen_1.gen1_inst_n_9\,
      \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23\ => \taps_inst[0].gen_1.gen1_inst_n_8\,
      \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23\ => \taps_inst[0].gen_1.gen1_inst_n_7\,
      \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23\ => \taps_inst[0].gen_1.gen1_inst_n_6\,
      \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23\ => \taps_inst[0].gen_1.gen1_inst_n_0\,
      \cell_reg[2][4]_0\ => \cell_reg[2]_4__s_net_1\,
      \cell_reg[2][4]_1\(4 downto 0) => \cell_reg[1]\(4 downto 0),
      \cell_reg[3][4]_0\(4 downto 0) => \cell_reg[2]\(4 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      enable3_out => enable3_out,
      reset_n_IBUF => reset_n_IBUF
    );
\taps_inst[1].gen_i.geni_inst\: entity work.taps_0
     port map (
      D(4) => \taps_inst[1].gen_i.geni_inst_n_2\,
      D(3) => \taps_inst[1].gen_i.geni_inst_n_3\,
      D(2) => \taps_inst[1].gen_i.geni_inst_n_4\,
      D(1) => \taps_inst[1].gen_i.geni_inst_n_5\,
      D(0) => \taps_inst[1].gen_i.geni_inst_n_6\,
      Q(4) => \taps_inst[1].gen_i.geni_inst_n_12\,
      Q(3) => \taps_inst[1].gen_i.geni_inst_n_13\,
      Q(2) => \taps_inst[1].gen_i.geni_inst_n_14\,
      Q(1) => \taps_inst[1].gen_i.geni_inst_n_15\,
      Q(0) => \taps_inst[1].gen_i.geni_inst_n_16\,
      \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst[1].gen_i.geni_inst_n_20\,
      \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_1\ => \taps_inst_gate__3_n_0\,
      \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst[1].gen_i.geni_inst_n_19\,
      \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_1\ => \taps_inst_gate__2_n_0\,
      \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst[1].gen_i.geni_inst_n_18\,
      \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_1\ => \taps_inst_gate__1_n_0\,
      \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst[1].gen_i.geni_inst_n_17\,
      \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_1\ => \taps_inst_gate__0_n_0\,
      \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst[1].gen_i.geni_inst_n_11\,
      \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_1\ => taps_inst_gate_n_0,
      \cell_reg[1][0]_0\ => \taps_inst[1].gen_i.geni_inst_n_10\,
      \cell_reg[1][1]_0\ => \taps_inst[1].gen_i.geni_inst_n_9\,
      \cell_reg[1][2]_0\ => \taps_inst[1].gen_i.geni_inst_n_8\,
      \cell_reg[1][3]_0\ => \taps_inst[1].gen_i.geni_inst_n_7\,
      \cell_reg[1][4]_0\ => \taps_inst[1].gen_i.geni_inst_n_0\,
      \cell_reg[3][0]_0\ => \taps_inst[0].gen_1.gen1_inst_n_9\,
      \cell_reg[3][1]_0\ => \taps_inst[0].gen_1.gen1_inst_n_8\,
      \cell_reg[3][2]_0\ => \taps_inst[0].gen_1.gen1_inst_n_7\,
      \cell_reg[3][3]_0\ => \taps_inst[0].gen_1.gen1_inst_n_6\,
      \cell_reg[3][4]_0\(4) => \taps_inst[1].gen_i.geni_inst_n_21\,
      \cell_reg[3][4]_0\(3) => \taps_inst[1].gen_i.geni_inst_n_22\,
      \cell_reg[3][4]_0\(2) => \taps_inst[1].gen_i.geni_inst_n_23\,
      \cell_reg[3][4]_0\(1) => \taps_inst[1].gen_i.geni_inst_n_24\,
      \cell_reg[3][4]_0\(0) => \taps_inst[1].gen_i.geni_inst_n_25\,
      \cell_reg[3][4]_1\ => \taps_inst[0].gen_1.gen1_inst_n_0\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      enable3_out => enable3_out,
      enable_IBUF => enable_IBUF,
      in_dv_IBUF => in_dv_IBUF,
      in_fv_IBUF => in_fv_IBUF,
      reset_n => \cell_reg[2]_4__s_net_1\
    );
\taps_inst[2].gen_last.gen_last_inst\: entity work.\taps__parameterized2\
     port map (
      D(4) => \taps_inst[2].gen_last.gen_last_inst_n_1\,
      D(3) => \taps_inst[2].gen_last.gen_last_inst_n_2\,
      D(2) => \taps_inst[2].gen_last.gen_last_inst_n_3\,
      D(1) => \taps_inst[2].gen_last.gen_last_inst_n_4\,
      D(0) => \taps_inst[2].gen_last.gen_last_inst_n_5\,
      Q(4) => \taps_inst[2].gen_last.gen_last_inst_n_10\,
      Q(3) => \taps_inst[2].gen_last.gen_last_inst_n_11\,
      Q(2) => \taps_inst[2].gen_last.gen_last_inst_n_12\,
      Q(1) => \taps_inst[2].gen_last.gen_last_inst_n_13\,
      Q(0) => \taps_inst[2].gen_last.gen_last_inst_n_14\,
      \cell_reg[0][0]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst_gate__8_n_0\,
      \cell_reg[0][1]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst_gate__7_n_0\,
      \cell_reg[0][2]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst_gate__6_n_0\,
      \cell_reg[0][3]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst_gate__5_n_0\,
      \cell_reg[0][4]_conv1_NEs_inst_taps_inst_c_23_0\ => \taps_inst_gate__4_n_0\,
      \cell_reg[1][0]_0\ => \taps_inst[2].gen_last.gen_last_inst_n_9\,
      \cell_reg[1][1]_0\ => \taps_inst[2].gen_last.gen_last_inst_n_8\,
      \cell_reg[1][2]_0\ => \taps_inst[2].gen_last.gen_last_inst_n_7\,
      \cell_reg[1][3]_0\ => \taps_inst[2].gen_last.gen_last_inst_n_6\,
      \cell_reg[1][4]_0\ => \taps_inst[2].gen_last.gen_last_inst_n_0\,
      \cell_reg[3][0]\ => \taps_inst[1].gen_i.geni_inst_n_20\,
      \cell_reg[3][1]\ => \taps_inst[1].gen_i.geni_inst_n_19\,
      \cell_reg[3][2]\ => \taps_inst[1].gen_i.geni_inst_n_18\,
      \cell_reg[3][3]\ => \taps_inst[1].gen_i.geni_inst_n_17\,
      \cell_reg[3][4]\ => \taps_inst[1].gen_i.geni_inst_n_11\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      enable3_out => enable3_out,
      \out_data_reg[8][4]\(4) => \taps_inst[2].gen_last.gen_last_inst_n_15\,
      \out_data_reg[8][4]\(3) => \taps_inst[2].gen_last.gen_last_inst_n_16\,
      \out_data_reg[8][4]\(2) => \taps_inst[2].gen_last.gen_last_inst_n_17\,
      \out_data_reg[8][4]\(1) => \taps_inst[2].gen_last.gen_last_inst_n_18\,
      \out_data_reg[8][4]\(0) => \taps_inst[2].gen_last.gen_last_inst_n_19\,
      reset_n => \cell_reg[2]_4__s_net_1\
    );
taps_inst_c: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => '1',
      Q => taps_inst_c_n_0
    );
taps_inst_c_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_n_0,
      Q => taps_inst_c_0_n_0
    );
taps_inst_c_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_0_n_0,
      Q => taps_inst_c_1_n_0
    );
taps_inst_c_10: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_9_n_0,
      Q => taps_inst_c_10_n_0
    );
taps_inst_c_11: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_10_n_0,
      Q => taps_inst_c_11_n_0
    );
taps_inst_c_12: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_11_n_0,
      Q => taps_inst_c_12_n_0
    );
taps_inst_c_13: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_12_n_0,
      Q => taps_inst_c_13_n_0
    );
taps_inst_c_14: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_13_n_0,
      Q => taps_inst_c_14_n_0
    );
taps_inst_c_15: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_14_n_0,
      Q => taps_inst_c_15_n_0
    );
taps_inst_c_16: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_15_n_0,
      Q => taps_inst_c_16_n_0
    );
taps_inst_c_17: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_16_n_0,
      Q => taps_inst_c_17_n_0
    );
taps_inst_c_18: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_17_n_0,
      Q => taps_inst_c_18_n_0
    );
taps_inst_c_19: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_18_n_0,
      Q => taps_inst_c_19_n_0
    );
taps_inst_c_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_1_n_0,
      Q => taps_inst_c_2_n_0
    );
taps_inst_c_20: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_19_n_0,
      Q => taps_inst_c_20_n_0
    );
taps_inst_c_21: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_20_n_0,
      Q => taps_inst_c_21_n_0
    );
taps_inst_c_22: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_21_n_0,
      Q => taps_inst_c_22_n_0
    );
taps_inst_c_23: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_22_n_0,
      Q => taps_inst_c_23_n_0
    );
taps_inst_c_3: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_2_n_0,
      Q => taps_inst_c_3_n_0
    );
taps_inst_c_4: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_3_n_0,
      Q => taps_inst_c_4_n_0
    );
taps_inst_c_5: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_4_n_0,
      Q => taps_inst_c_5_n_0
    );
taps_inst_c_6: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_5_n_0,
      Q => taps_inst_c_6_n_0
    );
taps_inst_c_7: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_6_n_0,
      Q => taps_inst_c_7_n_0
    );
taps_inst_c_8: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_7_n_0,
      Q => taps_inst_c_8_n_0
    );
taps_inst_c_9: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable3_out,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => taps_inst_c_8_n_0,
      Q => taps_inst_c_9_n_0
    );
taps_inst_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[1].gen_i.geni_inst_n_0\,
      I1 => taps_inst_c_23_n_0,
      O => taps_inst_gate_n_0
    );
\taps_inst_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[1].gen_i.geni_inst_n_7\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__0_n_0\
    );
\taps_inst_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[1].gen_i.geni_inst_n_8\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__1_n_0\
    );
\taps_inst_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[1].gen_i.geni_inst_n_9\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__2_n_0\
    );
\taps_inst_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[1].gen_i.geni_inst_n_10\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__3_n_0\
    );
\taps_inst_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[2].gen_last.gen_last_inst_n_0\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__4_n_0\
    );
\taps_inst_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[2].gen_last.gen_last_inst_n_6\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__5_n_0\
    );
\taps_inst_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[2].gen_last.gen_last_inst_n_7\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__6_n_0\
    );
\taps_inst_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[2].gen_last.gen_last_inst_n_8\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__7_n_0\
    );
\taps_inst_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \taps_inst[2].gen_last.gen_last_inst_n_9\,
      I1 => taps_inst_c_23_n_0,
      O => \taps_inst_gate__8_n_0\
    );
\tmp_dv1__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_dv1__0_carry_n_0\,
      CO(2) => \tmp_dv1__0_carry_n_1\,
      CO(1) => \tmp_dv1__0_carry_n_2\,
      CO(0) => \tmp_dv1__0_carry_n_3\,
      CYINIT => \tmp_dv1__0_carry_i_1_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_dv1__0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_dv1__0_carry_i_2_n_0\,
      S(2) => \tmp_dv1__0_carry_i_3_n_0\,
      S(1) => \tmp_dv1__0_carry_i_4_n_0\,
      S(0) => \tmp_dv1__0_carry_i_5_n_0\
    );
\tmp_dv1__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv1__0_carry_n_0\,
      CO(3) => \tmp_dv1__0_carry__0_n_0\,
      CO(2) => \tmp_dv1__0_carry__0_n_1\,
      CO(1) => \tmp_dv1__0_carry__0_n_2\,
      CO(0) => \tmp_dv1__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_dv1__0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_dv1__0_carry__0_i_1_n_0\,
      S(2) => \tmp_dv1__0_carry__0_i_2_n_0\,
      S(1) => \tmp_dv1__0_carry__0_i_3_n_0\,
      S(0) => \tmp_dv1__0_carry__0_i_4_n_0\
    );
\tmp_dv1__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(17),
      I1 => y_cmp(16),
      O => \tmp_dv1__0_carry__0_i_1_n_0\
    );
\tmp_dv1__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(15),
      I1 => y_cmp(14),
      O => \tmp_dv1__0_carry__0_i_2_n_0\
    );
\tmp_dv1__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(13),
      I1 => y_cmp(12),
      O => \tmp_dv1__0_carry__0_i_3_n_0\
    );
\tmp_dv1__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(11),
      I1 => y_cmp(10),
      O => \tmp_dv1__0_carry__0_i_4_n_0\
    );
\tmp_dv1__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv1__0_carry__0_n_0\,
      CO(3) => \tmp_dv1__0_carry__1_n_0\,
      CO(2) => \tmp_dv1__0_carry__1_n_1\,
      CO(1) => \tmp_dv1__0_carry__1_n_2\,
      CO(0) => \tmp_dv1__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_dv1__0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_dv1__0_carry__1_i_1_n_0\,
      S(2) => \tmp_dv1__0_carry__1_i_2_n_0\,
      S(1) => \tmp_dv1__0_carry__1_i_3_n_0\,
      S(0) => \tmp_dv1__0_carry__1_i_4_n_0\
    );
\tmp_dv1__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(25),
      I1 => y_cmp(24),
      O => \tmp_dv1__0_carry__1_i_1_n_0\
    );
\tmp_dv1__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(23),
      I1 => y_cmp(22),
      O => \tmp_dv1__0_carry__1_i_2_n_0\
    );
\tmp_dv1__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(21),
      I1 => y_cmp(20),
      O => \tmp_dv1__0_carry__1_i_3_n_0\
    );
\tmp_dv1__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(19),
      I1 => y_cmp(18),
      O => \tmp_dv1__0_carry__1_i_4_n_0\
    );
\tmp_dv1__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv1__0_carry__1_n_0\,
      CO(3) => \NLW_tmp_dv1__0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \tmp_dv1__0_carry__2_n_1\,
      CO(1) => \tmp_dv1__0_carry__2_n_2\,
      CO(0) => \tmp_dv1__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => y_cmp(31),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_tmp_dv1__0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \tmp_dv1__0_carry__2_i_1_n_0\,
      S(1) => \tmp_dv1__0_carry__2_i_2_n_0\,
      S(0) => \tmp_dv1__0_carry__2_i_3_n_0\
    );
\tmp_dv1__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(31),
      I1 => y_cmp(30),
      O => \tmp_dv1__0_carry__2_i_1_n_0\
    );
\tmp_dv1__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(29),
      I1 => y_cmp(28),
      O => \tmp_dv1__0_carry__2_i_2_n_0\
    );
\tmp_dv1__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(27),
      I1 => y_cmp(26),
      O => \tmp_dv1__0_carry__2_i_3_n_0\
    );
\tmp_dv1__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => y_cmp(0),
      I1 => y_cmp(1),
      O => \tmp_dv1__0_carry_i_1_n_0\
    );
\tmp_dv1__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(9),
      I1 => y_cmp(8),
      O => \tmp_dv1__0_carry_i_2_n_0\
    );
\tmp_dv1__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(7),
      I1 => y_cmp(6),
      O => \tmp_dv1__0_carry_i_3_n_0\
    );
\tmp_dv1__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(5),
      I1 => y_cmp(4),
      O => \tmp_dv1__0_carry_i_4_n_0\
    );
\tmp_dv1__0_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(3),
      I1 => y_cmp(2),
      O => \tmp_dv1__0_carry_i_5_n_0\
    );
\tmp_dv1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_dv1_inferred__1/i__carry_n_0\,
      CO(2) => \tmp_dv1_inferred__1/i__carry_n_1\,
      CO(1) => \tmp_dv1_inferred__1/i__carry_n_2\,
      CO(0) => \tmp_dv1_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1_n_0\,
      O(3 downto 0) => \NLW_tmp_dv1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2__0_n_0\,
      S(2) => \i__carry_i_3__0_n_0\,
      S(1) => \i__carry_i_4__0_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\tmp_dv1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv1_inferred__1/i__carry_n_0\,
      CO(3) => \tmp_dv1_inferred__1/i__carry__0_n_0\,
      CO(2) => \tmp_dv1_inferred__1/i__carry__0_n_1\,
      CO(1) => \tmp_dv1_inferred__1/i__carry__0_n_2\,
      CO(0) => \tmp_dv1_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_dv1_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\tmp_dv1_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv1_inferred__1/i__carry__0_n_0\,
      CO(3) => \tmp_dv1_inferred__1/i__carry__1_n_0\,
      CO(2) => \tmp_dv1_inferred__1/i__carry__1_n_1\,
      CO(1) => \tmp_dv1_inferred__1/i__carry__1_n_2\,
      CO(0) => \tmp_dv1_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_dv1_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\tmp_dv1_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv1_inferred__1/i__carry__1_n_0\,
      CO(3) => \NLW_tmp_dv1_inferred__1/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => tmp_dv1,
      CO(1) => \tmp_dv1_inferred__1/i__carry__2_n_2\,
      CO(0) => \tmp_dv1_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => x_cmp(31),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_tmp_dv1_inferred__1/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__2_i_1_n_0\,
      S(1) => \i__carry__2_i_2_n_0\,
      S(0) => \i__carry__2_i_3_n_0\
    );
\tmp_dv2__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_dv2__0_carry_n_0\,
      CO(2) => \tmp_dv2__0_carry_n_1\,
      CO(1) => \tmp_dv2__0_carry_n_2\,
      CO(0) => \tmp_dv2__0_carry_n_3\,
      CYINIT => \tmp_dv2__0_carry_i_1_n_0\,
      DI(3) => \tmp_dv2__0_carry_i_2_n_0\,
      DI(2) => \tmp_dv2__0_carry_i_3_n_0\,
      DI(1) => \tmp_dv2__0_carry_i_4_n_0\,
      DI(0) => \tmp_dv2__0_carry_i_5_n_0\,
      O(3 downto 0) => \NLW_tmp_dv2__0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_dv2__0_carry_i_6_n_0\,
      S(2) => \tmp_dv2__0_carry_i_7_n_0\,
      S(1) => \tmp_dv2__0_carry_i_8_n_0\,
      S(0) => \tmp_dv2__0_carry_i_9_n_0\
    );
\tmp_dv2__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv2__0_carry_n_0\,
      CO(3) => \tmp_dv2__0_carry__0_n_0\,
      CO(2) => \tmp_dv2__0_carry__0_n_1\,
      CO(1) => \tmp_dv2__0_carry__0_n_2\,
      CO(0) => \tmp_dv2__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_dv2__0_carry__0_i_1_n_0\,
      DI(2) => \tmp_dv2__0_carry__0_i_2_n_0\,
      DI(1) => \tmp_dv2__0_carry__0_i_3_n_0\,
      DI(0) => \tmp_dv2__0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_dv2__0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_dv2__0_carry__0_i_5_n_0\,
      S(2) => \tmp_dv2__0_carry__0_i_6_n_0\,
      S(1) => \tmp_dv2__0_carry__0_i_7_n_0\,
      S(0) => \tmp_dv2__0_carry__0_i_8_n_0\
    );
\tmp_dv2__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(18),
      I1 => y_cmp(19),
      O => \tmp_dv2__0_carry__0_i_1_n_0\
    );
\tmp_dv2__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(16),
      I1 => y_cmp(17),
      O => \tmp_dv2__0_carry__0_i_2_n_0\
    );
\tmp_dv2__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(14),
      I1 => y_cmp(15),
      O => \tmp_dv2__0_carry__0_i_3_n_0\
    );
\tmp_dv2__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(12),
      I1 => y_cmp(13),
      O => \tmp_dv2__0_carry__0_i_4_n_0\
    );
\tmp_dv2__0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(19),
      I1 => y_cmp(18),
      O => \tmp_dv2__0_carry__0_i_5_n_0\
    );
\tmp_dv2__0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(17),
      I1 => y_cmp(16),
      O => \tmp_dv2__0_carry__0_i_6_n_0\
    );
\tmp_dv2__0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(15),
      I1 => y_cmp(14),
      O => \tmp_dv2__0_carry__0_i_7_n_0\
    );
\tmp_dv2__0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(13),
      I1 => y_cmp(12),
      O => \tmp_dv2__0_carry__0_i_8_n_0\
    );
\tmp_dv2__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv2__0_carry__0_n_0\,
      CO(3) => \tmp_dv2__0_carry__1_n_0\,
      CO(2) => \tmp_dv2__0_carry__1_n_1\,
      CO(1) => \tmp_dv2__0_carry__1_n_2\,
      CO(0) => \tmp_dv2__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_dv2__0_carry__1_i_1_n_0\,
      DI(2) => \tmp_dv2__0_carry__1_i_2_n_0\,
      DI(1) => \tmp_dv2__0_carry__1_i_3_n_0\,
      DI(0) => \tmp_dv2__0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_dv2__0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_dv2__0_carry__1_i_5_n_0\,
      S(2) => \tmp_dv2__0_carry__1_i_6_n_0\,
      S(1) => \tmp_dv2__0_carry__1_i_7_n_0\,
      S(0) => \tmp_dv2__0_carry__1_i_8_n_0\
    );
\tmp_dv2__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(26),
      I1 => y_cmp(27),
      O => \tmp_dv2__0_carry__1_i_1_n_0\
    );
\tmp_dv2__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(24),
      I1 => y_cmp(25),
      O => \tmp_dv2__0_carry__1_i_2_n_0\
    );
\tmp_dv2__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(22),
      I1 => y_cmp(23),
      O => \tmp_dv2__0_carry__1_i_3_n_0\
    );
\tmp_dv2__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(20),
      I1 => y_cmp(21),
      O => \tmp_dv2__0_carry__1_i_4_n_0\
    );
\tmp_dv2__0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(27),
      I1 => y_cmp(26),
      O => \tmp_dv2__0_carry__1_i_5_n_0\
    );
\tmp_dv2__0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(25),
      I1 => y_cmp(24),
      O => \tmp_dv2__0_carry__1_i_6_n_0\
    );
\tmp_dv2__0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(23),
      I1 => y_cmp(22),
      O => \tmp_dv2__0_carry__1_i_7_n_0\
    );
\tmp_dv2__0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(21),
      I1 => y_cmp(20),
      O => \tmp_dv2__0_carry__1_i_8_n_0\
    );
\tmp_dv2__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv2__0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_tmp_dv2__0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tmp_dv2__14\,
      CO(0) => \tmp_dv2__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \tmp_dv2__0_carry__2_i_1_n_0\,
      DI(0) => \tmp_dv2__0_carry__2_i_2_n_0\,
      O(3 downto 0) => \NLW_tmp_dv2__0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \tmp_dv2__0_carry__2_i_3_n_0\,
      S(0) => \tmp_dv2__0_carry__2_i_4_n_0\
    );
\tmp_dv2__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(30),
      I1 => y_cmp(31),
      O => \tmp_dv2__0_carry__2_i_1_n_0\
    );
\tmp_dv2__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(28),
      I1 => y_cmp(29),
      O => \tmp_dv2__0_carry__2_i_2_n_0\
    );
\tmp_dv2__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(31),
      I1 => y_cmp(30),
      O => \tmp_dv2__0_carry__2_i_3_n_0\
    );
\tmp_dv2__0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(29),
      I1 => y_cmp(28),
      O => \tmp_dv2__0_carry__2_i_4_n_0\
    );
\tmp_dv2__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(2),
      I1 => y_cmp(3),
      O => \tmp_dv2__0_carry_i_1_n_0\
    );
\tmp_dv2__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(10),
      I1 => y_cmp(11),
      O => \tmp_dv2__0_carry_i_2_n_0\
    );
\tmp_dv2__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(8),
      I1 => y_cmp(9),
      O => \tmp_dv2__0_carry_i_3_n_0\
    );
\tmp_dv2__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(6),
      I1 => y_cmp(7),
      O => \tmp_dv2__0_carry_i_4_n_0\
    );
\tmp_dv2__0_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => y_cmp(4),
      I1 => y_cmp(5),
      O => \tmp_dv2__0_carry_i_5_n_0\
    );
\tmp_dv2__0_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(11),
      I1 => y_cmp(10),
      O => \tmp_dv2__0_carry_i_6_n_0\
    );
\tmp_dv2__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(9),
      I1 => y_cmp(8),
      O => \tmp_dv2__0_carry_i_7_n_0\
    );
\tmp_dv2__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(7),
      I1 => y_cmp(6),
      O => \tmp_dv2__0_carry_i_8_n_0\
    );
\tmp_dv2__0_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_cmp(5),
      I1 => y_cmp(4),
      O => \tmp_dv2__0_carry_i_9_n_0\
    );
\tmp_dv2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_dv2_inferred__0/i__carry_n_0\,
      CO(2) => \tmp_dv2_inferred__0/i__carry_n_1\,
      CO(1) => \tmp_dv2_inferred__0/i__carry_n_2\,
      CO(0) => \tmp_dv2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_dv2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\tmp_dv2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv2_inferred__0/i__carry_n_0\,
      CO(3) => \tmp_dv2_inferred__0/i__carry__0_n_0\,
      CO(2) => \tmp_dv2_inferred__0/i__carry__0_n_1\,
      CO(1) => \tmp_dv2_inferred__0/i__carry__0_n_2\,
      CO(0) => \tmp_dv2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_dv2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\tmp_dv2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_dv2_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_tmp_dv2_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => tmp_dv22_in,
      CO(1) => \tmp_dv2_inferred__0/i__carry__1_n_2\,
      CO(0) => \tmp_dv2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_dv2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2__0_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
tmp_dv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404000400040004"
    )
        port map (
      I0 => \y_cmp[31]_i_5_n_0\,
      I1 => in_dv_IBUF,
      I2 => \tmp_dv1__0_carry__2_n_1\,
      I3 => tmp_dv1,
      I4 => tmp_dv22_in,
      I5 => \tmp_dv2__14\,
      O => tmp_dv1_out
    );
tmp_dv_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \cell_reg[2]_4__s_net_1\,
      D => tmp_dv1_out,
      Q => \^s_ne_dv\
    );
x_cmp0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => x_cmp0_carry_n_0,
      CO(2) => x_cmp0_carry_n_1,
      CO(1) => x_cmp0_carry_n_2,
      CO(0) => x_cmp0_carry_n_3,
      CYINIT => x_cmp(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => x_cmp0(4 downto 1),
      S(3) => x_cmp0_carry_i_1_n_0,
      S(2) => x_cmp0_carry_i_2_n_0,
      S(1) => x_cmp0_carry_i_3_n_0,
      S(0) => x_cmp0_carry_i_4_n_0
    );
\x_cmp0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => x_cmp0_carry_n_0,
      CO(3) => \x_cmp0_carry__0_n_0\,
      CO(2) => \x_cmp0_carry__0_n_1\,
      CO(1) => \x_cmp0_carry__0_n_2\,
      CO(0) => \x_cmp0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => x_cmp0(8 downto 5),
      S(3) => \x_cmp0_carry__0_i_1_n_0\,
      S(2) => \x_cmp0_carry__0_i_2_n_0\,
      S(1) => \x_cmp0_carry__0_i_3_n_0\,
      S(0) => \x_cmp0_carry__0_i_4_n_0\
    );
\x_cmp0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(8),
      O => \x_cmp0_carry__0_i_1_n_0\
    );
\x_cmp0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(7),
      O => \x_cmp0_carry__0_i_2_n_0\
    );
\x_cmp0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(6),
      O => \x_cmp0_carry__0_i_3_n_0\
    );
\x_cmp0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(5),
      O => \x_cmp0_carry__0_i_4_n_0\
    );
\x_cmp0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp0_carry__0_n_0\,
      CO(3) => \x_cmp0_carry__1_n_0\,
      CO(2) => \x_cmp0_carry__1_n_1\,
      CO(1) => \x_cmp0_carry__1_n_2\,
      CO(0) => \x_cmp0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => x_cmp0(12 downto 9),
      S(3) => \x_cmp0_carry__1_i_1_n_0\,
      S(2) => \x_cmp0_carry__1_i_2_n_0\,
      S(1) => \x_cmp0_carry__1_i_3_n_0\,
      S(0) => \x_cmp0_carry__1_i_4_n_0\
    );
\x_cmp0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(12),
      O => \x_cmp0_carry__1_i_1_n_0\
    );
\x_cmp0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(11),
      O => \x_cmp0_carry__1_i_2_n_0\
    );
\x_cmp0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(10),
      O => \x_cmp0_carry__1_i_3_n_0\
    );
\x_cmp0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(9),
      O => \x_cmp0_carry__1_i_4_n_0\
    );
\x_cmp0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp0_carry__1_n_0\,
      CO(3) => \x_cmp0_carry__2_n_0\,
      CO(2) => \x_cmp0_carry__2_n_1\,
      CO(1) => \x_cmp0_carry__2_n_2\,
      CO(0) => \x_cmp0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => x_cmp0(16 downto 13),
      S(3) => \x_cmp0_carry__2_i_1_n_0\,
      S(2) => \x_cmp0_carry__2_i_2_n_0\,
      S(1) => \x_cmp0_carry__2_i_3_n_0\,
      S(0) => \x_cmp0_carry__2_i_4_n_0\
    );
\x_cmp0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(16),
      O => \x_cmp0_carry__2_i_1_n_0\
    );
\x_cmp0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(15),
      O => \x_cmp0_carry__2_i_2_n_0\
    );
\x_cmp0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(14),
      O => \x_cmp0_carry__2_i_3_n_0\
    );
\x_cmp0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(13),
      O => \x_cmp0_carry__2_i_4_n_0\
    );
\x_cmp0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp0_carry__2_n_0\,
      CO(3) => \x_cmp0_carry__3_n_0\,
      CO(2) => \x_cmp0_carry__3_n_1\,
      CO(1) => \x_cmp0_carry__3_n_2\,
      CO(0) => \x_cmp0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => x_cmp0(20 downto 17),
      S(3) => \x_cmp0_carry__3_i_1_n_0\,
      S(2) => \x_cmp0_carry__3_i_2_n_0\,
      S(1) => \x_cmp0_carry__3_i_3_n_0\,
      S(0) => \x_cmp0_carry__3_i_4_n_0\
    );
\x_cmp0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(20),
      O => \x_cmp0_carry__3_i_1_n_0\
    );
\x_cmp0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(19),
      O => \x_cmp0_carry__3_i_2_n_0\
    );
\x_cmp0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(18),
      O => \x_cmp0_carry__3_i_3_n_0\
    );
\x_cmp0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(17),
      O => \x_cmp0_carry__3_i_4_n_0\
    );
\x_cmp0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp0_carry__3_n_0\,
      CO(3) => \x_cmp0_carry__4_n_0\,
      CO(2) => \x_cmp0_carry__4_n_1\,
      CO(1) => \x_cmp0_carry__4_n_2\,
      CO(0) => \x_cmp0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => x_cmp0(24 downto 21),
      S(3) => \x_cmp0_carry__4_i_1_n_0\,
      S(2) => \x_cmp0_carry__4_i_2_n_0\,
      S(1) => \x_cmp0_carry__4_i_3_n_0\,
      S(0) => \x_cmp0_carry__4_i_4_n_0\
    );
\x_cmp0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(24),
      O => \x_cmp0_carry__4_i_1_n_0\
    );
\x_cmp0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(23),
      O => \x_cmp0_carry__4_i_2_n_0\
    );
\x_cmp0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(22),
      O => \x_cmp0_carry__4_i_3_n_0\
    );
\x_cmp0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(21),
      O => \x_cmp0_carry__4_i_4_n_0\
    );
\x_cmp0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp0_carry__4_n_0\,
      CO(3) => \x_cmp0_carry__5_n_0\,
      CO(2) => \x_cmp0_carry__5_n_1\,
      CO(1) => \x_cmp0_carry__5_n_2\,
      CO(0) => \x_cmp0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => x_cmp0(28 downto 25),
      S(3) => \x_cmp0_carry__5_i_1_n_0\,
      S(2) => \x_cmp0_carry__5_i_2_n_0\,
      S(1) => \x_cmp0_carry__5_i_3_n_0\,
      S(0) => \x_cmp0_carry__5_i_4_n_0\
    );
\x_cmp0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(28),
      O => \x_cmp0_carry__5_i_1_n_0\
    );
\x_cmp0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(27),
      O => \x_cmp0_carry__5_i_2_n_0\
    );
\x_cmp0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(26),
      O => \x_cmp0_carry__5_i_3_n_0\
    );
\x_cmp0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(25),
      O => \x_cmp0_carry__5_i_4_n_0\
    );
\x_cmp0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_x_cmp0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \x_cmp0_carry__6_n_2\,
      CO(0) => \x_cmp0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_x_cmp0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => x_cmp0(31 downto 29),
      S(3) => '0',
      S(2) => \x_cmp0_carry__6_i_1_n_0\,
      S(1) => \x_cmp0_carry__6_i_2_n_0\,
      S(0) => \x_cmp0_carry__6_i_3_n_0\
    );
\x_cmp0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(31),
      O => \x_cmp0_carry__6_i_1_n_0\
    );
\x_cmp0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(30),
      O => \x_cmp0_carry__6_i_2_n_0\
    );
\x_cmp0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(29),
      O => \x_cmp0_carry__6_i_3_n_0\
    );
x_cmp0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(4),
      O => x_cmp0_carry_i_1_n_0
    );
x_cmp0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(3),
      O => x_cmp0_carry_i_2_n_0
    );
x_cmp0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(2),
      O => x_cmp0_carry_i_3_n_0
    );
x_cmp0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(1),
      O => x_cmp0_carry_i_4_n_0
    );
\x_cmp1__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_cmp1__0_carry_n_0\,
      CO(2) => \x_cmp1__0_carry_n_1\,
      CO(1) => \x_cmp1__0_carry_n_2\,
      CO(0) => \x_cmp1__0_carry_n_3\,
      CYINIT => \x_cmp1__0_carry_i_1_n_0\,
      DI(3 downto 1) => B"000",
      DI(0) => \x_cmp1__0_carry_i_2_n_0\,
      O(3 downto 0) => \NLW_x_cmp1__0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \x_cmp1__0_carry_i_3_n_0\,
      S(2) => \x_cmp1__0_carry_i_4_n_0\,
      S(1) => \x_cmp1__0_carry_i_5_n_0\,
      S(0) => \x_cmp1__0_carry_i_6_n_0\
    );
\x_cmp1__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp1__0_carry_n_0\,
      CO(3) => \x_cmp1__0_carry__0_n_0\,
      CO(2) => \x_cmp1__0_carry__0_n_1\,
      CO(1) => \x_cmp1__0_carry__0_n_2\,
      CO(0) => \x_cmp1__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_x_cmp1__0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \x_cmp1__0_carry__0_i_1_n_0\,
      S(2) => \x_cmp1__0_carry__0_i_2_n_0\,
      S(1) => \x_cmp1__0_carry__0_i_3_n_0\,
      S(0) => \x_cmp1__0_carry__0_i_4_n_0\
    );
\x_cmp1__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(19),
      I1 => x_cmp(18),
      O => \x_cmp1__0_carry__0_i_1_n_0\
    );
\x_cmp1__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(17),
      I1 => x_cmp(16),
      O => \x_cmp1__0_carry__0_i_2_n_0\
    );
\x_cmp1__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(14),
      I1 => x_cmp(15),
      O => \x_cmp1__0_carry__0_i_3_n_0\
    );
\x_cmp1__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(13),
      I1 => x_cmp(12),
      O => \x_cmp1__0_carry__0_i_4_n_0\
    );
\x_cmp1__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp1__0_carry__0_n_0\,
      CO(3) => \x_cmp1__0_carry__1_n_0\,
      CO(2) => \x_cmp1__0_carry__1_n_1\,
      CO(1) => \x_cmp1__0_carry__1_n_2\,
      CO(0) => \x_cmp1__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_x_cmp1__0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \x_cmp1__0_carry__1_i_1_n_0\,
      S(2) => \x_cmp1__0_carry__1_i_2_n_0\,
      S(1) => \x_cmp1__0_carry__1_i_3_n_0\,
      S(0) => \x_cmp1__0_carry__1_i_4_n_0\
    );
\x_cmp1__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(26),
      I1 => x_cmp(27),
      O => \x_cmp1__0_carry__1_i_1_n_0\
    );
\x_cmp1__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(25),
      I1 => x_cmp(24),
      O => \x_cmp1__0_carry__1_i_2_n_0\
    );
\x_cmp1__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(23),
      I1 => x_cmp(22),
      O => \x_cmp1__0_carry__1_i_3_n_0\
    );
\x_cmp1__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(20),
      I1 => x_cmp(21),
      O => \x_cmp1__0_carry__1_i_4_n_0\
    );
\x_cmp1__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cmp1__0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_x_cmp1__0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \x_cmp1__0_carry__2_n_2\,
      CO(0) => \x_cmp1__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => x_cmp(31),
      DI(0) => '0',
      O(3 downto 0) => \NLW_x_cmp1__0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \x_cmp1__0_carry__2_i_1_n_0\,
      S(0) => \x_cmp1__0_carry__2_i_2_n_0\
    );
\x_cmp1__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(31),
      I1 => x_cmp(30),
      O => \x_cmp1__0_carry__2_i_1_n_0\
    );
\x_cmp1__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(29),
      I1 => x_cmp(28),
      O => \x_cmp1__0_carry__2_i_2_n_0\
    );
\x_cmp1__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => x_cmp(2),
      I1 => x_cmp(3),
      O => \x_cmp1__0_carry_i_1_n_0\
    );
\x_cmp1__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(5),
      I1 => x_cmp(4),
      O => \x_cmp1__0_carry_i_2_n_0\
    );
\x_cmp1__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(11),
      I1 => x_cmp(10),
      O => \x_cmp1__0_carry_i_3_n_0\
    );
\x_cmp1__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(8),
      I1 => x_cmp(9),
      O => \x_cmp1__0_carry_i_4_n_0\
    );
\x_cmp1__0_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_cmp(7),
      I1 => x_cmp(6),
      O => \x_cmp1__0_carry_i_5_n_0\
    );
\x_cmp1__0_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cmp(4),
      I1 => x_cmp(5),
      O => \x_cmp1__0_carry_i_6_n_0\
    );
\x_cmp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000044540000FFFF"
    )
        port map (
      I0 => \x_cmp1__0_carry__2_n_2\,
      I1 => \tmp_dv1__0_carry__2_n_1\,
      I2 => \y_cmp[31]_i_4_n_0\,
      I3 => tmp_dv1,
      I4 => \y_cmp[31]_i_5_n_0\,
      I5 => x_cmp(0),
      O => p_2_in(0)
    );
\x_cmp[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(10),
      O => p_2_in(10)
    );
\x_cmp[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(11),
      O => p_2_in(11)
    );
\x_cmp[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(12),
      O => p_2_in(12)
    );
\x_cmp[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(13),
      O => p_2_in(13)
    );
\x_cmp[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(14),
      O => p_2_in(14)
    );
\x_cmp[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(15),
      O => p_2_in(15)
    );
\x_cmp[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(16),
      O => p_2_in(16)
    );
\x_cmp[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(17),
      O => p_2_in(17)
    );
\x_cmp[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(18),
      O => p_2_in(18)
    );
\x_cmp[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(19),
      O => p_2_in(19)
    );
\x_cmp[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(1),
      O => p_2_in(1)
    );
\x_cmp[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(20),
      O => p_2_in(20)
    );
\x_cmp[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(21),
      O => p_2_in(21)
    );
\x_cmp[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(22),
      O => p_2_in(22)
    );
\x_cmp[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(23),
      O => p_2_in(23)
    );
\x_cmp[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(24),
      O => p_2_in(24)
    );
\x_cmp[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(25),
      O => p_2_in(25)
    );
\x_cmp[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(26),
      O => p_2_in(26)
    );
\x_cmp[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(27),
      O => p_2_in(27)
    );
\x_cmp[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(28),
      O => p_2_in(28)
    );
\x_cmp[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(29),
      O => p_2_in(29)
    );
\x_cmp[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(2),
      O => p_2_in(2)
    );
\x_cmp[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(30),
      O => p_2_in(30)
    );
\x_cmp[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => enable_IBUF,
      I1 => in_fv_IBUF,
      I2 => in_dv_IBUF,
      O => \x_cmp[31]_i_1_n_0\
    );
\x_cmp[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(31),
      O => p_2_in(31)
    );
\x_cmp[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0FFF08"
    )
        port map (
      I0 => \tmp_dv2__14\,
      I1 => tmp_dv22_in,
      I2 => \tmp_dv1__0_carry__2_n_1\,
      I3 => \x_cmp1__0_carry__2_n_2\,
      I4 => tmp_dv1,
      I5 => \y_cmp[31]_i_5_n_0\,
      O => \x_cmp[31]_i_3_n_0\
    );
\x_cmp[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(3),
      O => p_2_in(3)
    );
\x_cmp[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(4),
      O => p_2_in(4)
    );
\x_cmp[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(5),
      O => p_2_in(5)
    );
\x_cmp[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(6),
      O => p_2_in(6)
    );
\x_cmp[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(7),
      O => p_2_in(7)
    );
\x_cmp[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(8),
      O => p_2_in(8)
    );
\x_cmp[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \x_cmp[31]_i_3_n_0\,
      I1 => x_cmp0(9),
      O => p_2_in(9)
    );
\x_cmp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(0),
      Q => x_cmp(0)
    );
\x_cmp_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(10),
      Q => x_cmp(10)
    );
\x_cmp_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(11),
      Q => x_cmp(11)
    );
\x_cmp_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(12),
      Q => x_cmp(12)
    );
\x_cmp_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(13),
      Q => x_cmp(13)
    );
\x_cmp_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(14),
      Q => x_cmp(14)
    );
\x_cmp_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(15),
      Q => x_cmp(15)
    );
\x_cmp_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(16),
      Q => x_cmp(16)
    );
\x_cmp_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(17),
      Q => x_cmp(17)
    );
\x_cmp_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(18),
      Q => x_cmp(18)
    );
\x_cmp_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(19),
      Q => x_cmp(19)
    );
\x_cmp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(1),
      Q => x_cmp(1)
    );
\x_cmp_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(20),
      Q => x_cmp(20)
    );
\x_cmp_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(21),
      Q => x_cmp(21)
    );
\x_cmp_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(22),
      Q => x_cmp(22)
    );
\x_cmp_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(23),
      Q => x_cmp(23)
    );
\x_cmp_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(24),
      Q => x_cmp(24)
    );
\x_cmp_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(25),
      Q => x_cmp(25)
    );
\x_cmp_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(26),
      Q => x_cmp(26)
    );
\x_cmp_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(27),
      Q => x_cmp(27)
    );
\x_cmp_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(28),
      Q => x_cmp(28)
    );
\x_cmp_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(29),
      Q => x_cmp(29)
    );
\x_cmp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(2),
      Q => x_cmp(2)
    );
\x_cmp_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(30),
      Q => x_cmp(30)
    );
\x_cmp_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(31),
      Q => x_cmp(31)
    );
\x_cmp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(3),
      Q => x_cmp(3)
    );
\x_cmp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(4),
      Q => x_cmp(4)
    );
\x_cmp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(5),
      Q => x_cmp(5)
    );
\x_cmp_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(6),
      Q => x_cmp(6)
    );
\x_cmp_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(7),
      Q => x_cmp(7)
    );
\x_cmp_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(8),
      Q => x_cmp(8)
    );
\x_cmp_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \x_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => p_2_in(9),
      Q => x_cmp(9)
    );
\y_cmp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => enable_IBUF,
      I1 => in_fv_IBUF,
      I2 => y_cmp(0),
      O => \y_cmp[0]_i_1_n_0\
    );
\y_cmp[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(10),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[10]_i_1_n_0\
    );
\y_cmp[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(11),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[11]_i_1_n_0\
    );
\y_cmp[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(12),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[12]_i_1_n_0\
    );
\y_cmp[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(12),
      O => \y_cmp[12]_i_3_n_0\
    );
\y_cmp[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(11),
      O => \y_cmp[12]_i_4_n_0\
    );
\y_cmp[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(10),
      O => \y_cmp[12]_i_5_n_0\
    );
\y_cmp[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(9),
      O => \y_cmp[12]_i_6_n_0\
    );
\y_cmp[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(13),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[13]_i_1_n_0\
    );
\y_cmp[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(14),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[14]_i_1_n_0\
    );
\y_cmp[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(15),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[15]_i_1_n_0\
    );
\y_cmp[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(16),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[16]_i_1_n_0\
    );
\y_cmp[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(16),
      O => \y_cmp[16]_i_3_n_0\
    );
\y_cmp[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(15),
      O => \y_cmp[16]_i_4_n_0\
    );
\y_cmp[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(14),
      O => \y_cmp[16]_i_5_n_0\
    );
\y_cmp[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(13),
      O => \y_cmp[16]_i_6_n_0\
    );
\y_cmp[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(17),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[17]_i_1_n_0\
    );
\y_cmp[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(18),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[18]_i_1_n_0\
    );
\y_cmp[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(19),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[19]_i_1_n_0\
    );
\y_cmp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(1),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[1]_i_1_n_0\
    );
\y_cmp[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(20),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[20]_i_1_n_0\
    );
\y_cmp[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(20),
      O => \y_cmp[20]_i_3_n_0\
    );
\y_cmp[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(19),
      O => \y_cmp[20]_i_4_n_0\
    );
\y_cmp[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(18),
      O => \y_cmp[20]_i_5_n_0\
    );
\y_cmp[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(17),
      O => \y_cmp[20]_i_6_n_0\
    );
\y_cmp[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(21),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[21]_i_1_n_0\
    );
\y_cmp[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(22),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[22]_i_1_n_0\
    );
\y_cmp[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(23),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[23]_i_1_n_0\
    );
\y_cmp[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(24),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[24]_i_1_n_0\
    );
\y_cmp[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(24),
      O => \y_cmp[24]_i_3_n_0\
    );
\y_cmp[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(23),
      O => \y_cmp[24]_i_4_n_0\
    );
\y_cmp[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(22),
      O => \y_cmp[24]_i_5_n_0\
    );
\y_cmp[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(21),
      O => \y_cmp[24]_i_6_n_0\
    );
\y_cmp[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(25),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[25]_i_1_n_0\
    );
\y_cmp[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(26),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[26]_i_1_n_0\
    );
\y_cmp[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(27),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[27]_i_1_n_0\
    );
\y_cmp[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(28),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[28]_i_1_n_0\
    );
\y_cmp[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(28),
      O => \y_cmp[28]_i_3_n_0\
    );
\y_cmp[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(27),
      O => \y_cmp[28]_i_4_n_0\
    );
\y_cmp[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(26),
      O => \y_cmp[28]_i_5_n_0\
    );
\y_cmp[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(25),
      O => \y_cmp[28]_i_6_n_0\
    );
\y_cmp[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(29),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[29]_i_1_n_0\
    );
\y_cmp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(2),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[2]_i_1_n_0\
    );
\y_cmp[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(30),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[30]_i_1_n_0\
    );
\y_cmp[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000F400"
    )
        port map (
      I0 => tmp_dv1,
      I1 => \y_cmp[31]_i_4_n_0\,
      I2 => \tmp_dv1__0_carry__2_n_1\,
      I3 => in_dv_IBUF,
      I4 => \x_cmp1__0_carry__2_n_2\,
      I5 => \y_cmp[31]_i_5_n_0\,
      O => \y_cmp[31]_i_1_n_0\
    );
\y_cmp[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(31),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[31]_i_2_n_0\
    );
\y_cmp[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => tmp_dv22_in,
      I1 => \tmp_dv2__14\,
      O => \y_cmp[31]_i_4_n_0\
    );
\y_cmp[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => in_fv_IBUF,
      I1 => enable_IBUF,
      O => \y_cmp[31]_i_5_n_0\
    );
\y_cmp[31]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(31),
      O => \y_cmp[31]_i_7_n_0\
    );
\y_cmp[31]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(30),
      O => \y_cmp[31]_i_8_n_0\
    );
\y_cmp[31]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(29),
      O => \y_cmp[31]_i_9_n_0\
    );
\y_cmp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(3),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[3]_i_1_n_0\
    );
\y_cmp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(4),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[4]_i_1_n_0\
    );
\y_cmp[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(4),
      O => \y_cmp[4]_i_3_n_0\
    );
\y_cmp[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(3),
      O => \y_cmp[4]_i_4_n_0\
    );
\y_cmp[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(2),
      O => \y_cmp[4]_i_5_n_0\
    );
\y_cmp[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(1),
      O => \y_cmp[4]_i_6_n_0\
    );
\y_cmp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(5),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[5]_i_1_n_0\
    );
\y_cmp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(6),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[6]_i_1_n_0\
    );
\y_cmp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(7),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[7]_i_1_n_0\
    );
\y_cmp[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(8),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[8]_i_1_n_0\
    );
\y_cmp[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(8),
      O => \y_cmp[8]_i_3_n_0\
    );
\y_cmp[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(7),
      O => \y_cmp[8]_i_4_n_0\
    );
\y_cmp[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(6),
      O => \y_cmp[8]_i_5_n_0\
    );
\y_cmp[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y_cmp(5),
      O => \y_cmp[8]_i_6_n_0\
    );
\y_cmp[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_cmp0(9),
      I1 => enable_IBUF,
      I2 => in_fv_IBUF,
      O => \y_cmp[9]_i_1_n_0\
    );
\y_cmp_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      D => \y_cmp[0]_i_1_n_0\,
      PRE => \cell_reg[2]_4__s_net_1\,
      Q => y_cmp(0)
    );
\y_cmp_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[10]_i_1_n_0\,
      Q => y_cmp(10)
    );
\y_cmp_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[11]_i_1_n_0\,
      Q => y_cmp(11)
    );
\y_cmp_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[12]_i_1_n_0\,
      Q => y_cmp(12)
    );
\y_cmp_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cmp_reg[8]_i_2_n_0\,
      CO(3) => \y_cmp_reg[12]_i_2_n_0\,
      CO(2) => \y_cmp_reg[12]_i_2_n_1\,
      CO(1) => \y_cmp_reg[12]_i_2_n_2\,
      CO(0) => \y_cmp_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_cmp0(12 downto 9),
      S(3) => \y_cmp[12]_i_3_n_0\,
      S(2) => \y_cmp[12]_i_4_n_0\,
      S(1) => \y_cmp[12]_i_5_n_0\,
      S(0) => \y_cmp[12]_i_6_n_0\
    );
\y_cmp_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[13]_i_1_n_0\,
      Q => y_cmp(13)
    );
\y_cmp_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[14]_i_1_n_0\,
      Q => y_cmp(14)
    );
\y_cmp_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[15]_i_1_n_0\,
      Q => y_cmp(15)
    );
\y_cmp_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[16]_i_1_n_0\,
      Q => y_cmp(16)
    );
\y_cmp_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cmp_reg[12]_i_2_n_0\,
      CO(3) => \y_cmp_reg[16]_i_2_n_0\,
      CO(2) => \y_cmp_reg[16]_i_2_n_1\,
      CO(1) => \y_cmp_reg[16]_i_2_n_2\,
      CO(0) => \y_cmp_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_cmp0(16 downto 13),
      S(3) => \y_cmp[16]_i_3_n_0\,
      S(2) => \y_cmp[16]_i_4_n_0\,
      S(1) => \y_cmp[16]_i_5_n_0\,
      S(0) => \y_cmp[16]_i_6_n_0\
    );
\y_cmp_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[17]_i_1_n_0\,
      Q => y_cmp(17)
    );
\y_cmp_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[18]_i_1_n_0\,
      Q => y_cmp(18)
    );
\y_cmp_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[19]_i_1_n_0\,
      Q => y_cmp(19)
    );
\y_cmp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[1]_i_1_n_0\,
      Q => y_cmp(1)
    );
\y_cmp_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[20]_i_1_n_0\,
      Q => y_cmp(20)
    );
\y_cmp_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cmp_reg[16]_i_2_n_0\,
      CO(3) => \y_cmp_reg[20]_i_2_n_0\,
      CO(2) => \y_cmp_reg[20]_i_2_n_1\,
      CO(1) => \y_cmp_reg[20]_i_2_n_2\,
      CO(0) => \y_cmp_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_cmp0(20 downto 17),
      S(3) => \y_cmp[20]_i_3_n_0\,
      S(2) => \y_cmp[20]_i_4_n_0\,
      S(1) => \y_cmp[20]_i_5_n_0\,
      S(0) => \y_cmp[20]_i_6_n_0\
    );
\y_cmp_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[21]_i_1_n_0\,
      Q => y_cmp(21)
    );
\y_cmp_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[22]_i_1_n_0\,
      Q => y_cmp(22)
    );
\y_cmp_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[23]_i_1_n_0\,
      Q => y_cmp(23)
    );
\y_cmp_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[24]_i_1_n_0\,
      Q => y_cmp(24)
    );
\y_cmp_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cmp_reg[20]_i_2_n_0\,
      CO(3) => \y_cmp_reg[24]_i_2_n_0\,
      CO(2) => \y_cmp_reg[24]_i_2_n_1\,
      CO(1) => \y_cmp_reg[24]_i_2_n_2\,
      CO(0) => \y_cmp_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_cmp0(24 downto 21),
      S(3) => \y_cmp[24]_i_3_n_0\,
      S(2) => \y_cmp[24]_i_4_n_0\,
      S(1) => \y_cmp[24]_i_5_n_0\,
      S(0) => \y_cmp[24]_i_6_n_0\
    );
\y_cmp_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[25]_i_1_n_0\,
      Q => y_cmp(25)
    );
\y_cmp_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[26]_i_1_n_0\,
      Q => y_cmp(26)
    );
\y_cmp_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[27]_i_1_n_0\,
      Q => y_cmp(27)
    );
\y_cmp_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[28]_i_1_n_0\,
      Q => y_cmp(28)
    );
\y_cmp_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cmp_reg[24]_i_2_n_0\,
      CO(3) => \y_cmp_reg[28]_i_2_n_0\,
      CO(2) => \y_cmp_reg[28]_i_2_n_1\,
      CO(1) => \y_cmp_reg[28]_i_2_n_2\,
      CO(0) => \y_cmp_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_cmp0(28 downto 25),
      S(3) => \y_cmp[28]_i_3_n_0\,
      S(2) => \y_cmp[28]_i_4_n_0\,
      S(1) => \y_cmp[28]_i_5_n_0\,
      S(0) => \y_cmp[28]_i_6_n_0\
    );
\y_cmp_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[29]_i_1_n_0\,
      Q => y_cmp(29)
    );
\y_cmp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[2]_i_1_n_0\,
      Q => y_cmp(2)
    );
\y_cmp_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[30]_i_1_n_0\,
      Q => y_cmp(30)
    );
\y_cmp_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[31]_i_2_n_0\,
      Q => y_cmp(31)
    );
\y_cmp_reg[31]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cmp_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_y_cmp_reg[31]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_cmp_reg[31]_i_6_n_2\,
      CO(0) => \y_cmp_reg[31]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y_cmp_reg[31]_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => y_cmp0(31 downto 29),
      S(3) => '0',
      S(2) => \y_cmp[31]_i_7_n_0\,
      S(1) => \y_cmp[31]_i_8_n_0\,
      S(0) => \y_cmp[31]_i_9_n_0\
    );
\y_cmp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[3]_i_1_n_0\,
      Q => y_cmp(3)
    );
\y_cmp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[4]_i_1_n_0\,
      Q => y_cmp(4)
    );
\y_cmp_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_cmp_reg[4]_i_2_n_0\,
      CO(2) => \y_cmp_reg[4]_i_2_n_1\,
      CO(1) => \y_cmp_reg[4]_i_2_n_2\,
      CO(0) => \y_cmp_reg[4]_i_2_n_3\,
      CYINIT => y_cmp(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_cmp0(4 downto 1),
      S(3) => \y_cmp[4]_i_3_n_0\,
      S(2) => \y_cmp[4]_i_4_n_0\,
      S(1) => \y_cmp[4]_i_5_n_0\,
      S(0) => \y_cmp[4]_i_6_n_0\
    );
\y_cmp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[5]_i_1_n_0\,
      Q => y_cmp(5)
    );
\y_cmp_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[6]_i_1_n_0\,
      Q => y_cmp(6)
    );
\y_cmp_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[7]_i_1_n_0\,
      Q => y_cmp(7)
    );
\y_cmp_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[8]_i_1_n_0\,
      Q => y_cmp(8)
    );
\y_cmp_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cmp_reg[4]_i_2_n_0\,
      CO(3) => \y_cmp_reg[8]_i_2_n_0\,
      CO(2) => \y_cmp_reg[8]_i_2_n_1\,
      CO(1) => \y_cmp_reg[8]_i_2_n_2\,
      CO(0) => \y_cmp_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_cmp0(8 downto 5),
      S(3) => \y_cmp[8]_i_3_n_0\,
      S(2) => \y_cmp[8]_i_4_n_0\,
      S(1) => \y_cmp[8]_i_5_n_0\,
      S(0) => \y_cmp[8]_i_6_n_0\
    );
\y_cmp_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \y_cmp[31]_i_1_n_0\,
      CLR => \cell_reg[2]_4__s_net_1\,
      D => \y_cmp[9]_i_1_n_0\,
      Q => y_cmp(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity firstLayer is
  port (
    Q : out STD_LOGIC_VECTOR ( 14 downto 0 );
    out_dv : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_fv : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset_n_IBUF : in STD_LOGIC;
    in_fv_IBUF : in STD_LOGIC;
    enable_IBUF : in STD_LOGIC;
    in_dv_IBUF : in STD_LOGIC
  );
end firstLayer;

architecture STRUCTURE of firstLayer is
  signal \CEs_loop[0].CE_inst_1.CEs_inst_n_0\ : STD_LOGIC;
  signal \CEs_loop[0].CE_inst_1.CEs_inst_n_1\ : STD_LOGIC;
  signal \CEs_loop[0].CE_inst_1.CEs_inst_n_2\ : STD_LOGIC;
  signal \CEs_loop[0].CE_inst_1.CEs_inst_n_3\ : STD_LOGIC;
  signal \CEs_loop[0].CE_inst_1.CEs_inst_n_4\ : STD_LOGIC;
  signal \CEs_loop[0].CE_inst_1.CEs_inst_n_5\ : STD_LOGIC;
  signal \CEs_loop[0].CE_inst_1.CEs_inst_n_6\ : STD_LOGIC;
  signal \CEs_loop[0].CE_inst_1.CEs_inst_n_7\ : STD_LOGIC;
  signal NEs_inst_n_0 : STD_LOGIC;
  signal NEs_inst_n_10 : STD_LOGIC;
  signal NEs_inst_n_11 : STD_LOGIC;
  signal NEs_inst_n_12 : STD_LOGIC;
  signal NEs_inst_n_13 : STD_LOGIC;
  signal NEs_inst_n_14 : STD_LOGIC;
  signal NEs_inst_n_15 : STD_LOGIC;
  signal NEs_inst_n_2 : STD_LOGIC;
  signal NEs_inst_n_3 : STD_LOGIC;
  signal NEs_inst_n_30 : STD_LOGIC;
  signal NEs_inst_n_31 : STD_LOGIC;
  signal NEs_inst_n_32 : STD_LOGIC;
  signal NEs_inst_n_33 : STD_LOGIC;
  signal NEs_inst_n_34 : STD_LOGIC;
  signal NEs_inst_n_35 : STD_LOGIC;
  signal NEs_inst_n_36 : STD_LOGIC;
  signal NEs_inst_n_37 : STD_LOGIC;
  signal NEs_inst_n_38 : STD_LOGIC;
  signal NEs_inst_n_39 : STD_LOGIC;
  signal NEs_inst_n_4 : STD_LOGIC;
  signal NEs_inst_n_40 : STD_LOGIC;
  signal NEs_inst_n_41 : STD_LOGIC;
  signal NEs_inst_n_42 : STD_LOGIC;
  signal NEs_inst_n_43 : STD_LOGIC;
  signal NEs_inst_n_9 : STD_LOGIC;
  signal all_valid : STD_LOGIC;
  signal \out_data_reg[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \out_data_reg[4]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \out_data_reg[5]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \out_data_reg[6]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \out_data_reg[7]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \out_data_reg[8]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s_ne_dv : STD_LOGIC;
  signal s_sum : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
\CEs_loop[0].CE_inst_1.CEs_inst\: entity work.convElement
     port map (
      CO(0) => \CEs_loop[0].CE_inst_1.CEs_inst_n_3\,
      DI(2) => NEs_inst_n_41,
      DI(1) => NEs_inst_n_42,
      DI(0) => NEs_inst_n_43,
      E(0) => all_valid,
      O(2) => \CEs_loop[0].CE_inst_1.CEs_inst_n_0\,
      O(1) => \CEs_loop[0].CE_inst_1.CEs_inst_n_1\,
      O(0) => \CEs_loop[0].CE_inst_1.CEs_inst_n_2\,
      Q(4 downto 0) => \out_data_reg[8]\(4 downto 0),
      S(0) => NEs_inst_n_32,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      in_fv_IBUF => in_fv_IBUF,
      \out_data_reg[0][2]\(2) => NEs_inst_n_11,
      \out_data_reg[0][2]\(1) => NEs_inst_n_12,
      \out_data_reg[0][2]\(0) => \out_data_reg[0]\(0),
      \out_data_reg[0][3]\(0) => NEs_inst_n_10,
      \out_data_reg[0][4]\(2) => NEs_inst_n_2,
      \out_data_reg[0][4]\(1) => NEs_inst_n_3,
      \out_data_reg[0][4]\(0) => NEs_inst_n_4,
      \out_data_reg[0][4]_0\(0) => NEs_inst_n_9,
      \out_data_reg[0][4]_1\(2) => \out_data_reg[0]\(4),
      \out_data_reg[0][4]_1\(1 downto 0) => \out_data_reg[0]\(2 downto 1),
      \out_data_reg[1][4]\ => NEs_inst_n_34,
      \out_data_reg[1][4]_0\ => NEs_inst_n_39,
      \out_data_reg[2][0]\ => NEs_inst_n_13,
      \out_data_reg[2][4]\ => NEs_inst_n_38,
      \out_data_reg[3][0]\ => NEs_inst_n_33,
      \out_data_reg[3][1]\ => NEs_inst_n_15,
      \out_data_reg[4][0]\(0) => \out_data_reg[4]\(0),
      \out_data_reg[4][4]\ => NEs_inst_n_35,
      \out_data_reg[5][0]\(0) => \out_data_reg[5]\(0),
      \out_data_reg[5][0]_0\ => NEs_inst_n_14,
      \out_data_reg[6][0]\(0) => \out_data_reg[6]\(0),
      \out_data_reg[6][4]\ => NEs_inst_n_36,
      \out_data_reg[6][4]_0\ => NEs_inst_n_37,
      \out_data_reg[6][4]_1\ => NEs_inst_n_40,
      \out_data_reg[7][4]\(4 downto 0) => \out_data_reg[7]\(4 downto 0),
      \out_data_reg[8][4]\(1) => NEs_inst_n_30,
      \out_data_reg[8][4]\(0) => NEs_inst_n_31,
      out_dv_reg_0 => \CEs_loop[0].CE_inst_1.CEs_inst_n_6\,
      out_fv_reg_0 => \CEs_loop[0].CE_inst_1.CEs_inst_n_7\,
      reset_n => NEs_inst_n_0,
      reset_n_IBUF => reset_n_IBUF,
      s_ne_dv => s_ne_dv,
      \s_sum_reg[7]_0\(1) => \CEs_loop[0].CE_inst_1.CEs_inst_n_4\,
      \s_sum_reg[7]_0\(0) => \CEs_loop[0].CE_inst_1.CEs_inst_n_5\,
      \sum_s_reg[14]\(14 downto 0) => s_sum(14 downto 0)
    );
NEs_inst: entity work.neighExtractor
     port map (
      CO(0) => \CEs_loop[0].CE_inst_1.CEs_inst_n_3\,
      D(4 downto 0) => D(4 downto 0),
      DI(2) => NEs_inst_n_41,
      DI(1) => NEs_inst_n_42,
      DI(0) => NEs_inst_n_43,
      E(0) => all_valid,
      O(2) => \CEs_loop[0].CE_inst_1.CEs_inst_n_0\,
      O(1) => \CEs_loop[0].CE_inst_1.CEs_inst_n_1\,
      O(0) => \CEs_loop[0].CE_inst_1.CEs_inst_n_2\,
      Q(3) => \out_data_reg[0]\(4),
      Q(2 downto 0) => \out_data_reg[0]\(2 downto 0),
      S(0) => NEs_inst_n_32,
      \cell_reg[2][4]\ => NEs_inst_n_0,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      enable_IBUF => enable_IBUF,
      in_dv_IBUF => in_dv_IBUF,
      in_fv_IBUF => in_fv_IBUF,
      \out_data_reg[8][4]_0\(1) => \CEs_loop[0].CE_inst_1.CEs_inst_n_4\,
      \out_data_reg[8][4]_0\(0) => \CEs_loop[0].CE_inst_1.CEs_inst_n_5\,
      reset_n_IBUF => reset_n_IBUF,
      s_ne_dv => s_ne_dv,
      \s_sum_reg[11]\(4 downto 0) => \out_data_reg[7]\(4 downto 0),
      \s_sum_reg[11]_0\(4 downto 0) => \out_data_reg[8]\(4 downto 0),
      \s_sum_reg[11]_1\(1) => NEs_inst_n_30,
      \s_sum_reg[11]_1\(0) => NEs_inst_n_31,
      \s_sum_reg[11]_2\ => NEs_inst_n_34,
      \s_sum_reg[11]_3\ => NEs_inst_n_35,
      \s_sum_reg[11]_4\ => NEs_inst_n_39,
      \s_sum_reg[3]\(0) => NEs_inst_n_10,
      \s_sum_reg[3]_0\(1) => NEs_inst_n_11,
      \s_sum_reg[3]_0\(0) => NEs_inst_n_12,
      \s_sum_reg[3]_1\ => NEs_inst_n_13,
      \s_sum_reg[3]_2\ => NEs_inst_n_14,
      \s_sum_reg[3]_3\ => NEs_inst_n_15,
      \s_sum_reg[3]_4\(0) => \out_data_reg[4]\(0),
      \s_sum_reg[3]_5\(0) => \out_data_reg[5]\(0),
      \s_sum_reg[3]_6\(0) => \out_data_reg[6]\(0),
      \s_sum_reg[3]_7\ => NEs_inst_n_33,
      \s_sum_reg[7]\(2) => NEs_inst_n_2,
      \s_sum_reg[7]\(1) => NEs_inst_n_3,
      \s_sum_reg[7]\(0) => NEs_inst_n_4,
      \s_sum_reg[7]_0\(0) => NEs_inst_n_9,
      \s_sum_reg[7]_1\ => NEs_inst_n_36,
      \s_sum_reg[7]_2\ => NEs_inst_n_37,
      \s_sum_reg[7]_3\ => NEs_inst_n_38,
      \s_sum_reg[7]_4\ => NEs_inst_n_40
    );
\SEs_loop[0].SE_inst_1.SEs_inst\: entity work.sumElement
     port map (
      D(14 downto 0) => s_sum(14 downto 0),
      Q(14 downto 0) => Q(14 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      enable_IBUF => enable_IBUF,
      out_dv(0) => out_dv(0),
      out_dv_reg_0 => \CEs_loop[0].CE_inst_1.CEs_inst_n_6\,
      out_fv(0) => out_fv(0),
      out_fv_reg_0 => \CEs_loop[0].CE_inst_1.CEs_inst_n_7\,
      reset_n_IBUF => reset_n_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multi_conv_comb is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    enable : in STD_LOGIC;
    in_data : in STD_LOGIC_VECTOR ( 4 downto 0 );
    in_dv : in STD_LOGIC;
    in_fv : in STD_LOGIC;
    \out_data[0]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    out_dv : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_fv : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of multi_conv_comb : entity is true;
  attribute IMAGE_WIDTH : integer;
  attribute IMAGE_WIDTH of multi_conv_comb : entity is 5;
  attribute PIXEL_SIZE : integer;
  attribute PIXEL_SIZE of multi_conv_comb : entity is 5;
end multi_conv_comb;

architecture STRUCTURE of multi_conv_comb is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal enable_IBUF : STD_LOGIC;
  signal in_data_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal in_dv_IBUF : STD_LOGIC;
  signal in_fv_IBUF : STD_LOGIC;
  signal \out_data[0]_OBUF\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal out_dv_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal out_fv_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_n_IBUF : STD_LOGIC;
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
conv1: entity work.firstLayer
     port map (
      D(4 downto 0) => in_data_IBUF(4 downto 0),
      Q(14 downto 0) => \out_data[0]_OBUF\(14 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      enable_IBUF => enable_IBUF,
      in_dv_IBUF => in_dv_IBUF,
      in_fv_IBUF => in_fv_IBUF,
      out_dv(0) => out_dv_OBUF(0),
      out_fv(0) => out_fv_OBUF(0),
      reset_n_IBUF => reset_n_IBUF
    );
enable_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => enable,
      O => enable_IBUF
    );
\in_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => in_data(0),
      O => in_data_IBUF(0)
    );
\in_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => in_data(1),
      O => in_data_IBUF(1)
    );
\in_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => in_data(2),
      O => in_data_IBUF(2)
    );
\in_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => in_data(3),
      O => in_data_IBUF(3)
    );
\in_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => in_data(4),
      O => in_data_IBUF(4)
    );
in_dv_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => in_dv,
      O => in_dv_IBUF
    );
in_fv_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => in_fv,
      O => in_fv_IBUF
    );
\out_data[0][0]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(0),
      O => \out_data[0]\(0)
    );
\out_data[0][10]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(10),
      O => \out_data[0]\(10)
    );
\out_data[0][11]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(11),
      O => \out_data[0]\(11)
    );
\out_data[0][12]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(12),
      O => \out_data[0]\(12)
    );
\out_data[0][13]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(13),
      O => \out_data[0]\(13)
    );
\out_data[0][14]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(14),
      O => \out_data[0]\(14)
    );
\out_data[0][1]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(1),
      O => \out_data[0]\(1)
    );
\out_data[0][2]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(2),
      O => \out_data[0]\(2)
    );
\out_data[0][3]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(3),
      O => \out_data[0]\(3)
    );
\out_data[0][4]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(4),
      O => \out_data[0]\(4)
    );
\out_data[0][5]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(5),
      O => \out_data[0]\(5)
    );
\out_data[0][6]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(6),
      O => \out_data[0]\(6)
    );
\out_data[0][7]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(7),
      O => \out_data[0]\(7)
    );
\out_data[0][8]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(8),
      O => \out_data[0]\(8)
    );
\out_data[0][9]_INST_0\: unisim.vcomponents.OBUF
     port map (
      I => \out_data[0]_OBUF\(9),
      O => \out_data[0]\(9)
    );
\out_dv_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => out_dv_OBUF(0),
      O => out_dv(0)
    );
\out_fv_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => out_fv_OBUF(0),
      O => out_fv(0)
    );
reset_n_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset_n,
      O => reset_n_IBUF
    );
end STRUCTURE;
