-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Mar 31 12:04:36 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yousef/Vivado_workspace/RFIC_SPI/RFIC_SPI.gen/sources_1/bd/design_1/ip/design_1_Signal_Freq_test_0_0/design_1_Signal_Freq_test_0_0_sim_netlist.vhdl
-- Design      : design_1_Signal_Freq_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Signal_Freq_test_0_0_Signal_Freq_test is
  port (
    out_signal : out STD_LOGIC;
    rst : in STD_LOGIC;
    in_signal : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Signal_Freq_test_0_0_Signal_Freq_test : entity is "Signal_Freq_test";
end design_1_Signal_Freq_test_0_0_Signal_Freq_test;

architecture STRUCTURE of design_1_Signal_Freq_test_0_0_Signal_Freq_test is
  signal cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt0 : STD_LOGIC;
  signal cnt_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \cnt_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in_prev : STD_LOGIC;
  signal in_sync_0 : STD_LOGIC;
  signal in_sync_1 : STD_LOGIC;
  signal \^out_signal\ : STD_LOGIC;
  signal signal_reg_i_1_n_0 : STD_LOGIC;
  signal signal_reg_i_2_n_0 : STD_LOGIC;
  signal signal_reg_i_3_n_0 : STD_LOGIC;
  signal signal_reg_i_4_n_0 : STD_LOGIC;
  signal signal_reg_i_5_n_0 : STD_LOGIC;
  signal signal_reg_i_6_n_0 : STD_LOGIC;
  signal signal_reg_i_7_n_0 : STD_LOGIC;
  signal signal_reg_i_8_n_0 : STD_LOGIC;
  signal signal_reg_i_9_n_0 : STD_LOGIC;
  signal \NLW_cnt_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_2\ : label is 35;
begin
  out_signal <= \^out_signal\;
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => cnt_0(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(10),
      O => cnt_0(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(11),
      O => cnt_0(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(12),
      O => cnt_0(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(13),
      O => cnt_0(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(14),
      O => cnt_0(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(15),
      O => cnt_0(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(16),
      O => cnt_0(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(17),
      O => cnt_0(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(18),
      O => cnt_0(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(19),
      O => cnt_0(19)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(1),
      O => cnt_0(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(20),
      O => cnt_0(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(21),
      O => cnt_0(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(22),
      O => cnt_0(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(23),
      O => cnt_0(23)
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(24),
      O => cnt_0(24)
    );
\cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(25),
      O => cnt_0(25)
    );
\cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(26),
      O => cnt_0(26)
    );
\cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(27),
      O => cnt_0(27)
    );
\cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(28),
      O => cnt_0(28)
    );
\cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(29),
      O => cnt_0(29)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(2),
      O => cnt_0(2)
    );
\cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(30),
      O => cnt_0(30)
    );
\cnt[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_sync_1,
      I1 => in_prev,
      O => cnt0
    );
\cnt[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(31),
      O => cnt_0(31)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(3),
      O => cnt_0(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(4),
      O => cnt_0(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(5),
      O => cnt_0(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(6),
      O => cnt_0(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(7),
      O => cnt_0(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(8),
      O => cnt_0(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => signal_reg_i_5_n_0,
      I1 => signal_reg_i_4_n_0,
      I2 => signal_reg_i_3_n_0,
      I3 => signal_reg_i_2_n_0,
      I4 => data0(9),
      O => cnt_0(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(0),
      Q => cnt(0),
      R => rst
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(10),
      Q => cnt(10),
      R => rst
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(11),
      Q => cnt(11),
      R => rst
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(12),
      Q => cnt(12),
      R => rst
    );
\cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_2_n_0\,
      CO(3) => \cnt_reg[12]_i_2_n_0\,
      CO(2) => \cnt_reg[12]_i_2_n_1\,
      CO(1) => \cnt_reg[12]_i_2_n_2\,
      CO(0) => \cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(13),
      Q => cnt(13),
      R => rst
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(14),
      Q => cnt(14),
      R => rst
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(15),
      Q => cnt(15),
      R => rst
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(16),
      Q => cnt(16),
      R => rst
    );
\cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_2_n_0\,
      CO(3) => \cnt_reg[16]_i_2_n_0\,
      CO(2) => \cnt_reg[16]_i_2_n_1\,
      CO(1) => \cnt_reg[16]_i_2_n_2\,
      CO(0) => \cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(17),
      Q => cnt(17),
      R => rst
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(18),
      Q => cnt(18),
      R => rst
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(19),
      Q => cnt(19),
      R => rst
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(1),
      Q => cnt(1),
      R => rst
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(20),
      Q => cnt(20),
      R => rst
    );
\cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_2_n_0\,
      CO(3) => \cnt_reg[20]_i_2_n_0\,
      CO(2) => \cnt_reg[20]_i_2_n_1\,
      CO(1) => \cnt_reg[20]_i_2_n_2\,
      CO(0) => \cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => cnt(20 downto 17)
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(21),
      Q => cnt(21),
      R => rst
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(22),
      Q => cnt(22),
      R => rst
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(23),
      Q => cnt(23),
      R => rst
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(24),
      Q => cnt(24),
      R => rst
    );
\cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_2_n_0\,
      CO(3) => \cnt_reg[24]_i_2_n_0\,
      CO(2) => \cnt_reg[24]_i_2_n_1\,
      CO(1) => \cnt_reg[24]_i_2_n_2\,
      CO(0) => \cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => cnt(24 downto 21)
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(25),
      Q => cnt(25),
      R => rst
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(26),
      Q => cnt(26),
      R => rst
    );
\cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(27),
      Q => cnt(27),
      R => rst
    );
\cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(28),
      Q => cnt(28),
      R => rst
    );
\cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_2_n_0\,
      CO(3) => \cnt_reg[28]_i_2_n_0\,
      CO(2) => \cnt_reg[28]_i_2_n_1\,
      CO(1) => \cnt_reg[28]_i_2_n_2\,
      CO(0) => \cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => cnt(28 downto 25)
    );
\cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(29),
      Q => cnt(29),
      R => rst
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(2),
      Q => cnt(2),
      R => rst
    );
\cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(30),
      Q => cnt(30),
      R => rst
    );
\cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(31),
      Q => cnt(31),
      R => rst
    );
\cnt_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_reg[31]_i_3_n_2\,
      CO(0) => \cnt_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt(31 downto 29)
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(3),
      Q => cnt(3),
      R => rst
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(4),
      Q => cnt(4),
      R => rst
    );
\cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[4]_i_2_n_0\,
      CO(2) => \cnt_reg[4]_i_2_n_1\,
      CO(1) => \cnt_reg[4]_i_2_n_2\,
      CO(0) => \cnt_reg[4]_i_2_n_3\,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(5),
      Q => cnt(5),
      R => rst
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(6),
      Q => cnt(6),
      R => rst
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(7),
      Q => cnt(7),
      R => rst
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(8),
      Q => cnt(8),
      R => rst
    );
\cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_2_n_0\,
      CO(3) => \cnt_reg[8]_i_2_n_0\,
      CO(2) => \cnt_reg[8]_i_2_n_1\,
      CO(1) => \cnt_reg[8]_i_2_n_2\,
      CO(0) => \cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => cnt0,
      D => cnt_0(9),
      Q => cnt(9),
      R => rst
    );
in_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => in_sync_1,
      Q => in_prev,
      R => rst
    );
in_sync_0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => in_signal,
      Q => in_sync_0,
      R => rst
    );
in_sync_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => in_sync_0,
      Q => in_sync_1,
      R => rst
    );
signal_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00010000"
    )
        port map (
      I0 => signal_reg_i_2_n_0,
      I1 => signal_reg_i_3_n_0,
      I2 => signal_reg_i_4_n_0,
      I3 => signal_reg_i_5_n_0,
      I4 => cnt0,
      I5 => \^out_signal\,
      O => signal_reg_i_1_n_0
    );
signal_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt(10),
      I1 => cnt(11),
      I2 => cnt(8),
      I3 => cnt(9),
      I4 => signal_reg_i_6_n_0,
      O => signal_reg_i_2_n_0
    );
signal_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(3),
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => signal_reg_i_7_n_0,
      O => signal_reg_i_3_n_0
    );
signal_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt(26),
      I1 => cnt(27),
      I2 => cnt(24),
      I3 => cnt(25),
      I4 => signal_reg_i_8_n_0,
      O => signal_reg_i_4_n_0
    );
signal_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt(18),
      I1 => cnt(19),
      I2 => cnt(16),
      I3 => cnt(17),
      I4 => signal_reg_i_9_n_0,
      O => signal_reg_i_5_n_0
    );
signal_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(13),
      I1 => cnt(12),
      I2 => cnt(15),
      I3 => cnt(14),
      O => signal_reg_i_6_n_0
    );
signal_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(4),
      I2 => cnt(7),
      I3 => cnt(6),
      O => signal_reg_i_7_n_0
    );
signal_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(29),
      I1 => cnt(28),
      I2 => cnt(31),
      I3 => cnt(30),
      O => signal_reg_i_8_n_0
    );
signal_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(21),
      I1 => cnt(20),
      I2 => cnt(23),
      I3 => cnt(22),
      O => signal_reg_i_9_n_0
    );
signal_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => signal_reg_i_1_n_0,
      Q => \^out_signal\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Signal_Freq_test_0_0 is
  port (
    Clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    in_signal : in STD_LOGIC;
    out_signal : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Signal_Freq_test_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Signal_Freq_test_0_0 : entity is "design_1_Signal_Freq_test_0_0,Signal_Freq_test,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Signal_Freq_test_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Signal_Freq_test_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Signal_Freq_test_0_0 : entity is "Signal_Freq_test,Vivado 2025.1";
end design_1_Signal_Freq_test_0_0;

architecture STRUCTURE of design_1_Signal_Freq_test_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of Clk : signal is "slave Clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.design_1_Signal_Freq_test_0_0_Signal_Freq_test
     port map (
      Clk => Clk,
      in_signal => in_signal,
      out_signal => out_signal,
      rst => rst
    );
end STRUCTURE;
