-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Mon Oct 26 17:28:21 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yousef/Vivado_workspace/RFIC_SPI/RFIC_SPI.gen/sources_1/bd/design_1/ip/design_1_SPI_Master_AXI_0_24/design_1_SPI_Master_AXI_0_24_sim_netlist.vhdl
-- Design      : design_1_SPI_Master_AXI_0_24
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_24_LDB_Controller_bg is
  port (
    ldb_done : out STD_LOGIC;
    ldb : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[1]_1\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_tx_valid : in STD_LOGIC;
    ldb_trigger_reg : in STD_LOGIC;
    ldb_reg_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_Master_AXI_0_24_LDB_Controller_bg : entity is "LDB_Controller_bg";
end design_1_SPI_Master_AXI_0_24_LDB_Controller_bg;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_24_LDB_Controller_bg is
  signal delay_count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \delay_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_count[1]_i_1_n_0\ : STD_LOGIC;
  signal done_reg_i_1_n_0 : STD_LOGIC;
  signal \^ldb\ : STD_LOGIC;
  signal ldb_reg_i_1_n_0 : STD_LOGIC;
  signal ldb_reg_i_3_n_0 : STD_LOGIC;
  signal \pulse_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \pulse_count_reg_n_0_[1]\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of done_reg_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of error_pending_i_9 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of ldb_reg_i_3 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of ldb_trigger_reg_i_2 : label is "soft_lutpair26";
begin
  ldb <= \^ldb\;
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
\delay_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFCC0020"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => \state_reg_n_0_[0]\,
      I4 => delay_count(0),
      O => \delay_count[0]_i_1_n_0\
    );
\delay_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFF4F000000800"
    )
        port map (
      I0 => delay_count(0),
      I1 => \^state_reg[1]_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => Q(0),
      I4 => \state_reg_n_0_[0]\,
      I5 => delay_count(1),
      O => \delay_count[1]_i_1_n_0\
    );
\delay_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \delay_count[0]_i_1_n_0\,
      Q => delay_count(0),
      R => rst
    );
\delay_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \delay_count[1]_i_1_n_0\,
      Q => delay_count(1),
      R => rst
    );
done_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \^state_reg[1]_0\,
      O => done_reg_i_1_n_0
    );
done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => done_reg_i_1_n_0,
      Q => ldb_done,
      R => rst
    );
error_pending_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => Q(0),
      I4 => spi_tx_valid,
      O => \state_reg[1]_1\
    );
ldb_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFF7FF0000"
    )
        port map (
      I0 => ldb_reg_reg_0,
      I1 => delay_count(1),
      I2 => \state_reg_n_0_[0]\,
      I3 => delay_count(0),
      I4 => ldb_reg_i_3_n_0,
      I5 => \^ldb\,
      O => ldb_reg_i_1_n_0
    );
ldb_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"405555FF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \pulse_count_reg_n_0_[0]\,
      I2 => \pulse_count_reg_n_0_[1]\,
      I3 => \^state_reg[1]_0\,
      I4 => \state_reg_n_0_[0]\,
      O => ldb_reg_i_3_n_0
    );
ldb_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ldb_reg_i_1_n_0,
      Q => \^ldb\,
      S => rst
    );
ldb_trigger_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \^state_reg[1]_0\,
      O => \state_reg[2]_0\
    );
\pulse_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABEBEBE40404040"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^state_reg[1]_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => Q(0),
      I4 => \pulse_count[0]_i_2_n_0\,
      I5 => \pulse_count_reg_n_0_[0]\,
      O => \pulse_count[0]_i_1_n_0\
    );
\pulse_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_count(0),
      I1 => delay_count(1),
      O => \pulse_count[0]_i_2_n_0\
    );
\pulse_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => \pulse_count_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \pulse_count[1]_i_2_n_0\,
      I3 => \pulse_count_reg_n_0_[1]\,
      O => \pulse_count[1]_i_1_n_0\
    );
\pulse_count[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4541414141414141"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^state_reg[1]_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => Q(0),
      I4 => delay_count(1),
      I5 => delay_count(0),
      O => \pulse_count[1]_i_2_n_0\
    );
\pulse_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pulse_count[0]_i_1_n_0\,
      Q => \pulse_count_reg_n_0_[0]\,
      R => rst
    );
\pulse_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pulse_count[1]_i_1_n_0\,
      Q => \pulse_count_reg_n_0_[1]\,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF45550000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => delay_count(0),
      I2 => Q(0),
      I3 => \^state_reg[1]_0\,
      I4 => state,
      I5 => \state_reg_n_0_[0]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF55000000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => delay_count(1),
      I2 => Q(0),
      I3 => \state_reg_n_0_[0]\,
      I4 => state,
      I5 => \^state_reg[1]_0\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => state,
      I3 => \state_reg_n_0_[2]\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => ldb_trigger_reg,
      I2 => \state_reg_n_0_[0]\,
      I3 => Q(0),
      I4 => \^state_reg[1]_0\,
      I5 => \state[2]_i_3_n_0\,
      O => state
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8080808F8F8F8F"
    )
        port map (
      I0 => \pulse_count_reg_n_0_[0]\,
      I1 => \pulse_count_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => delay_count(1),
      I4 => delay_count(0),
      I5 => Q(0),
      O => \state[2]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[1]_0\,
      R => rst
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_24_SPI_Master is
  port (
    spi_rx_valid : out STD_LOGIC;
    spi_done : out STD_LOGIC;
    sclk : out STD_LOGIC;
    mosi : out STD_LOGIC;
    ss_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_tx_valid_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \rx_data_reg_reg[59]_0\ : out STD_LOGIC_VECTOR ( 59 downto 0 );
    rst : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    spi_tx_valid : in STD_LOGIC;
    mosi_reg_reg_0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    error_pending_reg : in STD_LOGIC;
    rx_pending : in STD_LOGIC;
    ldb_reg_reg : in STD_LOGIC;
    miso : in STD_LOGIC;
    tx_last : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_Master_AXI_0_24_SPI_Master : entity is "SPI_Master";
end design_1_SPI_Master_AXI_0_24_SPI_Master;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_24_SPI_Master is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal bit_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \bit_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[2]\ : STD_LOGIC;
  signal current_last_i_1_n_0 : STD_LOGIC;
  signal current_last_reg_n_0 : STD_LOGIC;
  signal done_reg : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 58 downto 1 );
  signal in9 : STD_LOGIC_VECTOR ( 59 downto 1 );
  signal \^mosi\ : STD_LOGIC;
  signal mosi_reg : STD_LOGIC;
  signal mosi_reg_i_2_n_0 : STD_LOGIC;
  signal mosi_reg_i_4_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal rx_data_reg : STD_LOGIC;
  signal \rx_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[10]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[11]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[12]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[13]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[14]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[15]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[16]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[17]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[18]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[19]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[20]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[21]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[22]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[23]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[24]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[25]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[26]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[27]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[28]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[29]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[30]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[31]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[32]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[33]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[34]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[35]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[36]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[37]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[38]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[39]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[40]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[41]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[42]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[43]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[44]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[45]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[46]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[47]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[48]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[49]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[50]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[51]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[52]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[53]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[54]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[55]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[56]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[57]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[58]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[59]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[59]_i_2_n_0\ : STD_LOGIC;
  signal \rx_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[8]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift[9]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift_reg_n_0_[59]\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal sclk_reg_i_1_n_0 : STD_LOGIC;
  signal sclk_reg_i_2_n_0 : STD_LOGIC;
  signal sclk_reg_i_3_n_0 : STD_LOGIC;
  signal \^spi_rx_valid\ : STD_LOGIC;
  signal \^ss_n\ : STD_LOGIC;
  signal ss_reg : STD_LOGIC;
  signal ss_reg_i_1_n_0 : STD_LOGIC;
  signal ss_reg_i_3_n_0 : STD_LOGIC;
  signal \tx_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[16]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[17]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[18]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[19]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[20]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[21]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[22]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[23]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[24]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[25]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[26]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[27]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[28]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[29]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[30]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[31]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[32]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[33]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[34]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[35]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[36]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[37]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[38]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[39]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[40]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[41]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[42]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[43]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[44]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[45]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[46]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[47]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[48]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[49]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[50]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[51]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[52]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[53]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[54]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[55]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[56]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[57]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[58]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[58]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift[58]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_3\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bit_count[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \clk_count[2]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of ldb_reg_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of mosi_reg_i_4 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rx_shift[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_shift[10]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rx_shift[11]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rx_shift[12]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_shift[13]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_shift[14]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rx_shift[15]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rx_shift[16]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rx_shift[17]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rx_shift[18]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_shift[19]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_shift[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_shift[20]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_shift[21]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_shift[22]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_shift[23]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_shift[24]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_shift[25]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_shift[26]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rx_shift[27]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rx_shift[28]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rx_shift[29]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rx_shift[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_shift[30]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rx_shift[31]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rx_shift[32]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rx_shift[33]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rx_shift[34]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rx_shift[35]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rx_shift[36]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rx_shift[37]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rx_shift[38]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rx_shift[39]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rx_shift[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_shift[40]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rx_shift[41]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rx_shift[42]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rx_shift[43]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rx_shift[44]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rx_shift[45]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rx_shift[46]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rx_shift[47]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rx_shift[48]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rx_shift[49]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rx_shift[4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_shift[50]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rx_shift[51]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rx_shift[52]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rx_shift[53]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rx_shift[54]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rx_shift[55]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rx_shift[56]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rx_shift[57]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rx_shift[58]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rx_shift[59]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rx_shift[5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_shift[6]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_shift[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_shift[8]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_shift[9]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of sclk_reg_i_3 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of ss_reg_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of ss_reg_i_3 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tx_shift[0]_i_1\ : label is "soft_lutpair34";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  mosi <= \^mosi\;
  sclk <= \^sclk\;
  spi_rx_valid <= \^spi_rx_valid\;
  ss_n <= \^ss_n\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[3]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[5]\,
      I4 => \bit_count_reg_n_0_[4]\,
      I5 => \bit_count_reg_n_0_[2]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[2]\,
      I1 => \bit_count_reg_n_0_[4]\,
      I2 => \bit_count_reg_n_0_[5]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      I4 => \bit_count_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      I1 => \bit_count_reg_n_0_[1]\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_last_reg_n_0,
      I1 => rx_data_reg,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \FSM_onehot_state[5]_i_3_n_0\,
      I1 => sclk_reg_i_2_n_0,
      I2 => done_reg,
      I3 => rx_data_reg,
      I4 => spi_tx_valid,
      I5 => ss_reg_i_3_n_0,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_data_reg,
      I1 => current_last_reg_n_0,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => done_reg,
      Q => \^q\(0),
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => rx_data_reg,
      R => rst
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => done_reg,
      R => rst
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \FSM_onehot_state[5]_i_2_n_0\,
      Q => \^q\(1),
      R => rst
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFF000EE00F000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \axi_rdata_reg[1]_0\(1),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => \axi_rdata_reg[1]_0\(0),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]\,
      O => D(0),
      S => s00_axi_araddr(2)
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bit_count_reg_n_0_[0]\,
      O => bit_count(0)
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bit_count[1]_i_1_n_0\
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[2]\,
      O => bit_count(2)
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => \bit_count_reg_n_0_[0]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[3]\,
      O => bit_count(3)
    );
\bit_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[3]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[4]\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bit_count[4]_i_1_n_0\
    );
\bit_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF20FF20FF20"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      I2 => sclk_reg_i_2_n_0,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => spi_tx_valid,
      O => \bit_count[5]_i_1_n_0\
    );
\bit_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bit_count_reg_n_0_[4]\,
      I2 => \bit_count_reg_n_0_[2]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      I4 => \bit_count_reg_n_0_[3]\,
      I5 => \bit_count_reg_n_0_[5]\,
      O => bit_count(5)
    );
\bit_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bit_count[5]_i_1_n_0\,
      D => bit_count(0),
      Q => \bit_count_reg_n_0_[0]\,
      R => rst
    );
\bit_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bit_count[5]_i_1_n_0\,
      D => \bit_count[1]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[1]\,
      R => rst
    );
\bit_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bit_count[5]_i_1_n_0\,
      D => bit_count(2),
      Q => \bit_count_reg_n_0_[2]\,
      R => rst
    );
\bit_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bit_count[5]_i_1_n_0\,
      D => bit_count(3),
      Q => \bit_count_reg_n_0_[3]\,
      R => rst
    );
\bit_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bit_count[5]_i_1_n_0\,
      D => \bit_count[4]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[4]\,
      R => rst
    );
\bit_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bit_count[5]_i_1_n_0\,
      D => bit_count(5),
      Q => \bit_count_reg_n_0_[5]\,
      R => rst
    );
\clk_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000015FFFFFF00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => spi_tx_valid,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \clk_count_reg_n_0_[0]\,
      O => \clk_count[0]_i_1_n_0\
    );
\clk_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"033355550000AAAA"
    )
        port map (
      I0 => \clk_count_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => spi_tx_valid,
      I4 => \FSM_onehot_state[5]_i_3_n_0\,
      I5 => \clk_count_reg_n_0_[1]\,
      O => \clk_count[1]_i_1_n_0\
    );
\clk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEFFFFE0000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \clk_count_reg_n_0_[0]\,
      I3 => \clk_count_reg_n_0_[1]\,
      I4 => \clk_count[2]_i_2_n_0\,
      I5 => \clk_count_reg_n_0_[2]\,
      O => \clk_count[2]_i_1_n_0\
    );
\clk_count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => spi_tx_valid,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \clk_count[2]_i_2_n_0\
    );
\clk_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_count[0]_i_1_n_0\,
      Q => \clk_count_reg_n_0_[0]\,
      R => rst
    );
\clk_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_count[1]_i_1_n_0\,
      Q => \clk_count_reg_n_0_[1]\,
      R => rst
    );
\clk_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_count[2]_i_1_n_0\,
      Q => \clk_count_reg_n_0_[2]\,
      R => rst
    );
current_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF8880"
    )
        port map (
      I0 => tx_last,
      I1 => spi_tx_valid,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => current_last_reg_n_0,
      O => current_last_i_1_n_0
    );
current_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => current_last_i_1_n_0,
      Q => current_last_reg_n_0,
      R => rst
    );
done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => done_reg,
      Q => spi_done,
      R => rst
    );
ldb_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => ldb_reg_reg,
      O => \FSM_onehot_state_reg[0]_0\
    );
mosi_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => mosi_reg,
      I1 => done_reg,
      I2 => \bit_count[5]_i_1_n_0\,
      I3 => \^mosi\,
      O => mosi_reg_i_2_n_0
    );
mosi_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF800"
    )
        port map (
      I0 => \^q\(0),
      I1 => spi_tx_valid,
      I2 => \^q\(1),
      I3 => mosi_reg_reg_0(59),
      I4 => mosi_reg_i_4_n_0,
      O => mosi_reg
    );
mosi_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => rx_data_reg,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => p_1_in,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => mosi_reg_i_4_n_0
    );
mosi_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => mosi_reg_i_2_n_0,
      Q => \^mosi\,
      R => rst
    );
\rx_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(1),
      Q => \rx_data_reg_reg[59]_0\(0),
      R => rst
    );
\rx_data_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(11),
      Q => \rx_data_reg_reg[59]_0\(10),
      R => rst
    );
\rx_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(12),
      Q => \rx_data_reg_reg[59]_0\(11),
      R => rst
    );
\rx_data_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(13),
      Q => \rx_data_reg_reg[59]_0\(12),
      R => rst
    );
\rx_data_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(14),
      Q => \rx_data_reg_reg[59]_0\(13),
      R => rst
    );
\rx_data_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(15),
      Q => \rx_data_reg_reg[59]_0\(14),
      R => rst
    );
\rx_data_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(16),
      Q => \rx_data_reg_reg[59]_0\(15),
      R => rst
    );
\rx_data_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(17),
      Q => \rx_data_reg_reg[59]_0\(16),
      R => rst
    );
\rx_data_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(18),
      Q => \rx_data_reg_reg[59]_0\(17),
      R => rst
    );
\rx_data_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(19),
      Q => \rx_data_reg_reg[59]_0\(18),
      R => rst
    );
\rx_data_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(20),
      Q => \rx_data_reg_reg[59]_0\(19),
      R => rst
    );
\rx_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(2),
      Q => \rx_data_reg_reg[59]_0\(1),
      R => rst
    );
\rx_data_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(21),
      Q => \rx_data_reg_reg[59]_0\(20),
      R => rst
    );
\rx_data_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(22),
      Q => \rx_data_reg_reg[59]_0\(21),
      R => rst
    );
\rx_data_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(23),
      Q => \rx_data_reg_reg[59]_0\(22),
      R => rst
    );
\rx_data_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(24),
      Q => \rx_data_reg_reg[59]_0\(23),
      R => rst
    );
\rx_data_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(25),
      Q => \rx_data_reg_reg[59]_0\(24),
      R => rst
    );
\rx_data_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(26),
      Q => \rx_data_reg_reg[59]_0\(25),
      R => rst
    );
\rx_data_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(27),
      Q => \rx_data_reg_reg[59]_0\(26),
      R => rst
    );
\rx_data_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(28),
      Q => \rx_data_reg_reg[59]_0\(27),
      R => rst
    );
\rx_data_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(29),
      Q => \rx_data_reg_reg[59]_0\(28),
      R => rst
    );
\rx_data_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(30),
      Q => \rx_data_reg_reg[59]_0\(29),
      R => rst
    );
\rx_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(3),
      Q => \rx_data_reg_reg[59]_0\(2),
      R => rst
    );
\rx_data_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(31),
      Q => \rx_data_reg_reg[59]_0\(30),
      R => rst
    );
\rx_data_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(32),
      Q => \rx_data_reg_reg[59]_0\(31),
      R => rst
    );
\rx_data_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(33),
      Q => \rx_data_reg_reg[59]_0\(32),
      R => rst
    );
\rx_data_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(34),
      Q => \rx_data_reg_reg[59]_0\(33),
      R => rst
    );
\rx_data_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(35),
      Q => \rx_data_reg_reg[59]_0\(34),
      R => rst
    );
\rx_data_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(36),
      Q => \rx_data_reg_reg[59]_0\(35),
      R => rst
    );
\rx_data_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(37),
      Q => \rx_data_reg_reg[59]_0\(36),
      R => rst
    );
\rx_data_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(38),
      Q => \rx_data_reg_reg[59]_0\(37),
      R => rst
    );
\rx_data_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(39),
      Q => \rx_data_reg_reg[59]_0\(38),
      R => rst
    );
\rx_data_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(40),
      Q => \rx_data_reg_reg[59]_0\(39),
      R => rst
    );
\rx_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(4),
      Q => \rx_data_reg_reg[59]_0\(3),
      R => rst
    );
\rx_data_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(41),
      Q => \rx_data_reg_reg[59]_0\(40),
      R => rst
    );
\rx_data_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(42),
      Q => \rx_data_reg_reg[59]_0\(41),
      R => rst
    );
\rx_data_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(43),
      Q => \rx_data_reg_reg[59]_0\(42),
      R => rst
    );
\rx_data_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(44),
      Q => \rx_data_reg_reg[59]_0\(43),
      R => rst
    );
\rx_data_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(45),
      Q => \rx_data_reg_reg[59]_0\(44),
      R => rst
    );
\rx_data_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(46),
      Q => \rx_data_reg_reg[59]_0\(45),
      R => rst
    );
\rx_data_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(47),
      Q => \rx_data_reg_reg[59]_0\(46),
      R => rst
    );
\rx_data_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(48),
      Q => \rx_data_reg_reg[59]_0\(47),
      R => rst
    );
\rx_data_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(49),
      Q => \rx_data_reg_reg[59]_0\(48),
      R => rst
    );
\rx_data_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(50),
      Q => \rx_data_reg_reg[59]_0\(49),
      R => rst
    );
\rx_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(5),
      Q => \rx_data_reg_reg[59]_0\(4),
      R => rst
    );
\rx_data_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(51),
      Q => \rx_data_reg_reg[59]_0\(50),
      R => rst
    );
\rx_data_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(52),
      Q => \rx_data_reg_reg[59]_0\(51),
      R => rst
    );
\rx_data_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(53),
      Q => \rx_data_reg_reg[59]_0\(52),
      R => rst
    );
\rx_data_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(54),
      Q => \rx_data_reg_reg[59]_0\(53),
      R => rst
    );
\rx_data_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(55),
      Q => \rx_data_reg_reg[59]_0\(54),
      R => rst
    );
\rx_data_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(56),
      Q => \rx_data_reg_reg[59]_0\(55),
      R => rst
    );
\rx_data_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(57),
      Q => \rx_data_reg_reg[59]_0\(56),
      R => rst
    );
\rx_data_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(58),
      Q => \rx_data_reg_reg[59]_0\(57),
      R => rst
    );
\rx_data_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(59),
      Q => \rx_data_reg_reg[59]_0\(58),
      R => rst
    );
\rx_data_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => \rx_shift_reg_n_0_[59]\,
      Q => \rx_data_reg_reg[59]_0\(59),
      R => rst
    );
\rx_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(6),
      Q => \rx_data_reg_reg[59]_0\(5),
      R => rst
    );
\rx_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(7),
      Q => \rx_data_reg_reg[59]_0\(6),
      R => rst
    );
\rx_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(8),
      Q => \rx_data_reg_reg[59]_0\(7),
      R => rst
    );
\rx_data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(9),
      Q => \rx_data_reg_reg[59]_0\(8),
      R => rst
    );
\rx_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_data_reg,
      D => in9(10),
      Q => \rx_data_reg_reg[59]_0\(9),
      R => rst
    );
\rx_low_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^spi_rx_valid\,
      I1 => rx_pending,
      O => E(0)
    );
\rx_shift[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => miso,
      O => \rx_shift[0]_i_1_n_0\
    );
\rx_shift[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(10),
      O => \rx_shift[10]_i_1_n_0\
    );
\rx_shift[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(11),
      O => \rx_shift[11]_i_1_n_0\
    );
\rx_shift[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(12),
      O => \rx_shift[12]_i_1_n_0\
    );
\rx_shift[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(13),
      O => \rx_shift[13]_i_1_n_0\
    );
\rx_shift[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(14),
      O => \rx_shift[14]_i_1_n_0\
    );
\rx_shift[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(15),
      O => \rx_shift[15]_i_1_n_0\
    );
\rx_shift[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(16),
      O => \rx_shift[16]_i_1_n_0\
    );
\rx_shift[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(17),
      O => \rx_shift[17]_i_1_n_0\
    );
\rx_shift[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(18),
      O => \rx_shift[18]_i_1_n_0\
    );
\rx_shift[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(19),
      O => \rx_shift[19]_i_1_n_0\
    );
\rx_shift[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(1),
      O => \rx_shift[1]_i_1_n_0\
    );
\rx_shift[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(20),
      O => \rx_shift[20]_i_1_n_0\
    );
\rx_shift[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(21),
      O => \rx_shift[21]_i_1_n_0\
    );
\rx_shift[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(22),
      O => \rx_shift[22]_i_1_n_0\
    );
\rx_shift[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(23),
      O => \rx_shift[23]_i_1_n_0\
    );
\rx_shift[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(24),
      O => \rx_shift[24]_i_1_n_0\
    );
\rx_shift[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(25),
      O => \rx_shift[25]_i_1_n_0\
    );
\rx_shift[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(26),
      O => \rx_shift[26]_i_1_n_0\
    );
\rx_shift[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(27),
      O => \rx_shift[27]_i_1_n_0\
    );
\rx_shift[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(28),
      O => \rx_shift[28]_i_1_n_0\
    );
\rx_shift[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(29),
      O => \rx_shift[29]_i_1_n_0\
    );
\rx_shift[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(2),
      O => \rx_shift[2]_i_1_n_0\
    );
\rx_shift[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(30),
      O => \rx_shift[30]_i_1_n_0\
    );
\rx_shift[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(31),
      O => \rx_shift[31]_i_1_n_0\
    );
\rx_shift[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(32),
      O => \rx_shift[32]_i_1_n_0\
    );
\rx_shift[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(33),
      O => \rx_shift[33]_i_1_n_0\
    );
\rx_shift[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(34),
      O => \rx_shift[34]_i_1_n_0\
    );
\rx_shift[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(35),
      O => \rx_shift[35]_i_1_n_0\
    );
\rx_shift[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(36),
      O => \rx_shift[36]_i_1_n_0\
    );
\rx_shift[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(37),
      O => \rx_shift[37]_i_1_n_0\
    );
\rx_shift[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(38),
      O => \rx_shift[38]_i_1_n_0\
    );
\rx_shift[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(39),
      O => \rx_shift[39]_i_1_n_0\
    );
\rx_shift[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(3),
      O => \rx_shift[3]_i_1_n_0\
    );
\rx_shift[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(40),
      O => \rx_shift[40]_i_1_n_0\
    );
\rx_shift[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(41),
      O => \rx_shift[41]_i_1_n_0\
    );
\rx_shift[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(42),
      O => \rx_shift[42]_i_1_n_0\
    );
\rx_shift[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(43),
      O => \rx_shift[43]_i_1_n_0\
    );
\rx_shift[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(44),
      O => \rx_shift[44]_i_1_n_0\
    );
\rx_shift[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(45),
      O => \rx_shift[45]_i_1_n_0\
    );
\rx_shift[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(46),
      O => \rx_shift[46]_i_1_n_0\
    );
\rx_shift[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(47),
      O => \rx_shift[47]_i_1_n_0\
    );
\rx_shift[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(48),
      O => \rx_shift[48]_i_1_n_0\
    );
\rx_shift[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(49),
      O => \rx_shift[49]_i_1_n_0\
    );
\rx_shift[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(4),
      O => \rx_shift[4]_i_1_n_0\
    );
\rx_shift[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(50),
      O => \rx_shift[50]_i_1_n_0\
    );
\rx_shift[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(51),
      O => \rx_shift[51]_i_1_n_0\
    );
\rx_shift[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(52),
      O => \rx_shift[52]_i_1_n_0\
    );
\rx_shift[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(53),
      O => \rx_shift[53]_i_1_n_0\
    );
\rx_shift[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(54),
      O => \rx_shift[54]_i_1_n_0\
    );
\rx_shift[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(55),
      O => \rx_shift[55]_i_1_n_0\
    );
\rx_shift[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(56),
      O => \rx_shift[56]_i_1_n_0\
    );
\rx_shift[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(57),
      O => \rx_shift[57]_i_1_n_0\
    );
\rx_shift[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(58),
      O => \rx_shift[58]_i_1_n_0\
    );
\rx_shift[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => ss_reg_i_3_n_0,
      I1 => spi_tx_valid,
      I2 => \clk_count_reg_n_0_[1]\,
      I3 => \clk_count_reg_n_0_[0]\,
      I4 => \clk_count_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \rx_shift[59]_i_1_n_0\
    );
\rx_shift[59]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(59),
      O => \rx_shift[59]_i_2_n_0\
    );
\rx_shift[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(5),
      O => \rx_shift[5]_i_1_n_0\
    );
\rx_shift[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(6),
      O => \rx_shift[6]_i_1_n_0\
    );
\rx_shift[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(7),
      O => \rx_shift[7]_i_1_n_0\
    );
\rx_shift[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(8),
      O => \rx_shift[8]_i_1_n_0\
    );
\rx_shift[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(9),
      O => \rx_shift[9]_i_1_n_0\
    );
\rx_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[0]_i_1_n_0\,
      Q => in9(1),
      R => rst
    );
\rx_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[10]_i_1_n_0\,
      Q => in9(11),
      R => rst
    );
\rx_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[11]_i_1_n_0\,
      Q => in9(12),
      R => rst
    );
\rx_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[12]_i_1_n_0\,
      Q => in9(13),
      R => rst
    );
\rx_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[13]_i_1_n_0\,
      Q => in9(14),
      R => rst
    );
\rx_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[14]_i_1_n_0\,
      Q => in9(15),
      R => rst
    );
\rx_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[15]_i_1_n_0\,
      Q => in9(16),
      R => rst
    );
\rx_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[16]_i_1_n_0\,
      Q => in9(17),
      R => rst
    );
\rx_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[17]_i_1_n_0\,
      Q => in9(18),
      R => rst
    );
\rx_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[18]_i_1_n_0\,
      Q => in9(19),
      R => rst
    );
\rx_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[19]_i_1_n_0\,
      Q => in9(20),
      R => rst
    );
\rx_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[1]_i_1_n_0\,
      Q => in9(2),
      R => rst
    );
\rx_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[20]_i_1_n_0\,
      Q => in9(21),
      R => rst
    );
\rx_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[21]_i_1_n_0\,
      Q => in9(22),
      R => rst
    );
\rx_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[22]_i_1_n_0\,
      Q => in9(23),
      R => rst
    );
\rx_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[23]_i_1_n_0\,
      Q => in9(24),
      R => rst
    );
\rx_shift_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[24]_i_1_n_0\,
      Q => in9(25),
      R => rst
    );
\rx_shift_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[25]_i_1_n_0\,
      Q => in9(26),
      R => rst
    );
\rx_shift_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[26]_i_1_n_0\,
      Q => in9(27),
      R => rst
    );
\rx_shift_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[27]_i_1_n_0\,
      Q => in9(28),
      R => rst
    );
\rx_shift_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[28]_i_1_n_0\,
      Q => in9(29),
      R => rst
    );
\rx_shift_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[29]_i_1_n_0\,
      Q => in9(30),
      R => rst
    );
\rx_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[2]_i_1_n_0\,
      Q => in9(3),
      R => rst
    );
\rx_shift_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[30]_i_1_n_0\,
      Q => in9(31),
      R => rst
    );
\rx_shift_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[31]_i_1_n_0\,
      Q => in9(32),
      R => rst
    );
\rx_shift_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[32]_i_1_n_0\,
      Q => in9(33),
      R => rst
    );
\rx_shift_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[33]_i_1_n_0\,
      Q => in9(34),
      R => rst
    );
\rx_shift_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[34]_i_1_n_0\,
      Q => in9(35),
      R => rst
    );
\rx_shift_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[35]_i_1_n_0\,
      Q => in9(36),
      R => rst
    );
\rx_shift_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[36]_i_1_n_0\,
      Q => in9(37),
      R => rst
    );
\rx_shift_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[37]_i_1_n_0\,
      Q => in9(38),
      R => rst
    );
\rx_shift_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[38]_i_1_n_0\,
      Q => in9(39),
      R => rst
    );
\rx_shift_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[39]_i_1_n_0\,
      Q => in9(40),
      R => rst
    );
\rx_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[3]_i_1_n_0\,
      Q => in9(4),
      R => rst
    );
\rx_shift_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[40]_i_1_n_0\,
      Q => in9(41),
      R => rst
    );
\rx_shift_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[41]_i_1_n_0\,
      Q => in9(42),
      R => rst
    );
\rx_shift_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[42]_i_1_n_0\,
      Q => in9(43),
      R => rst
    );
\rx_shift_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[43]_i_1_n_0\,
      Q => in9(44),
      R => rst
    );
\rx_shift_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[44]_i_1_n_0\,
      Q => in9(45),
      R => rst
    );
\rx_shift_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[45]_i_1_n_0\,
      Q => in9(46),
      R => rst
    );
\rx_shift_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[46]_i_1_n_0\,
      Q => in9(47),
      R => rst
    );
\rx_shift_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[47]_i_1_n_0\,
      Q => in9(48),
      R => rst
    );
\rx_shift_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[48]_i_1_n_0\,
      Q => in9(49),
      R => rst
    );
\rx_shift_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[49]_i_1_n_0\,
      Q => in9(50),
      R => rst
    );
\rx_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[4]_i_1_n_0\,
      Q => in9(5),
      R => rst
    );
\rx_shift_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[50]_i_1_n_0\,
      Q => in9(51),
      R => rst
    );
\rx_shift_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[51]_i_1_n_0\,
      Q => in9(52),
      R => rst
    );
\rx_shift_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[52]_i_1_n_0\,
      Q => in9(53),
      R => rst
    );
\rx_shift_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[53]_i_1_n_0\,
      Q => in9(54),
      R => rst
    );
\rx_shift_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[54]_i_1_n_0\,
      Q => in9(55),
      R => rst
    );
\rx_shift_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[55]_i_1_n_0\,
      Q => in9(56),
      R => rst
    );
\rx_shift_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[56]_i_1_n_0\,
      Q => in9(57),
      R => rst
    );
\rx_shift_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[57]_i_1_n_0\,
      Q => in9(58),
      R => rst
    );
\rx_shift_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[58]_i_1_n_0\,
      Q => in9(59),
      R => rst
    );
\rx_shift_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[59]_i_2_n_0\,
      Q => \rx_shift_reg_n_0_[59]\,
      R => rst
    );
\rx_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[5]_i_1_n_0\,
      Q => in9(6),
      R => rst
    );
\rx_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[6]_i_1_n_0\,
      Q => in9(7),
      R => rst
    );
\rx_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[7]_i_1_n_0\,
      Q => in9(8),
      R => rst
    );
\rx_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[8]_i_1_n_0\,
      Q => in9(9),
      R => rst
    );
\rx_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_shift[59]_i_1_n_0\,
      D => \rx_shift[9]_i_1_n_0\,
      Q => in9(10),
      R => rst
    );
rx_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rx_data_reg,
      Q => \^spi_rx_valid\,
      R => rst
    );
sclk_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC00CC07CC00CC00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => sclk_reg_i_2_n_0,
      I2 => sclk_reg_i_3_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => rx_data_reg,
      I5 => \^sclk\,
      O => sclk_reg_i_1_n_0
    );
sclk_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \clk_count_reg_n_0_[1]\,
      I1 => \clk_count_reg_n_0_[0]\,
      I2 => \clk_count_reg_n_0_[2]\,
      O => sclk_reg_i_2_n_0
    );
sclk_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => done_reg,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => sclk_reg_i_3_n_0
    );
sclk_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sclk_reg_i_1_n_0,
      Q => \^sclk\,
      R => rst
    );
\spi_tx_data_reg[59]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040000"
    )
        port map (
      I0 => spi_tx_valid,
      I1 => error_pending_reg,
      I2 => rx_pending,
      I3 => \^spi_rx_valid\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => spi_tx_valid_reg_reg
    );
ss_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEAEA2AAA2A2"
    )
        port map (
      I0 => ss_reg,
      I1 => ss_reg_i_3_n_0,
      I2 => done_reg,
      I3 => current_last_reg_n_0,
      I4 => rx_data_reg,
      I5 => \^ss_n\,
      O => ss_reg_i_1_n_0
    );
ss_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
        port map (
      I0 => \^q\(0),
      I1 => spi_tx_valid,
      I2 => done_reg,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => ss_reg
    );
ss_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => ss_reg_i_3_n_0
    );
ss_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ss_reg_i_1_n_0,
      Q => \^ss_n\,
      S => rst
    );
\tx_shift[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => mosi_reg_reg_0(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \tx_shift[0]_i_1_n_0\
    );
\tx_shift[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(10),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(10),
      O => \tx_shift[10]_i_1_n_0\
    );
\tx_shift[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(11),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(11),
      O => \tx_shift[11]_i_1_n_0\
    );
\tx_shift[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(12),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(12),
      O => \tx_shift[12]_i_1_n_0\
    );
\tx_shift[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(13),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(13),
      O => \tx_shift[13]_i_1_n_0\
    );
\tx_shift[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(14),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(14),
      O => \tx_shift[14]_i_1_n_0\
    );
\tx_shift[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(15),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(15),
      O => \tx_shift[15]_i_1_n_0\
    );
\tx_shift[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(16),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(16),
      O => \tx_shift[16]_i_1_n_0\
    );
\tx_shift[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(17),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(17),
      O => \tx_shift[17]_i_1_n_0\
    );
\tx_shift[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(18),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(18),
      O => \tx_shift[18]_i_1_n_0\
    );
\tx_shift[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(19),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(19),
      O => \tx_shift[19]_i_1_n_0\
    );
\tx_shift[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(1),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(1),
      O => \tx_shift[1]_i_1_n_0\
    );
\tx_shift[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(20),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(20),
      O => \tx_shift[20]_i_1_n_0\
    );
\tx_shift[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(21),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(21),
      O => \tx_shift[21]_i_1_n_0\
    );
\tx_shift[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(22),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(22),
      O => \tx_shift[22]_i_1_n_0\
    );
\tx_shift[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(23),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(23),
      O => \tx_shift[23]_i_1_n_0\
    );
\tx_shift[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(24),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(24),
      O => \tx_shift[24]_i_1_n_0\
    );
\tx_shift[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(25),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(25),
      O => \tx_shift[25]_i_1_n_0\
    );
\tx_shift[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(26),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(26),
      O => \tx_shift[26]_i_1_n_0\
    );
\tx_shift[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(27),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(27),
      O => \tx_shift[27]_i_1_n_0\
    );
\tx_shift[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(28),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(28),
      O => \tx_shift[28]_i_1_n_0\
    );
\tx_shift[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(29),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(29),
      O => \tx_shift[29]_i_1_n_0\
    );
\tx_shift[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(2),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(2),
      O => \tx_shift[2]_i_1_n_0\
    );
\tx_shift[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(30),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(30),
      O => \tx_shift[30]_i_1_n_0\
    );
\tx_shift[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(31),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(31),
      O => \tx_shift[31]_i_1_n_0\
    );
\tx_shift[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(32),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(32),
      O => \tx_shift[32]_i_1_n_0\
    );
\tx_shift[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(33),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(33),
      O => \tx_shift[33]_i_1_n_0\
    );
\tx_shift[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(34),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(34),
      O => \tx_shift[34]_i_1_n_0\
    );
\tx_shift[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(35),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(35),
      O => \tx_shift[35]_i_1_n_0\
    );
\tx_shift[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(36),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(36),
      O => \tx_shift[36]_i_1_n_0\
    );
\tx_shift[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(37),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(37),
      O => \tx_shift[37]_i_1_n_0\
    );
\tx_shift[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(38),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(38),
      O => \tx_shift[38]_i_1_n_0\
    );
\tx_shift[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(39),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(39),
      O => \tx_shift[39]_i_1_n_0\
    );
\tx_shift[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(3),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(3),
      O => \tx_shift[3]_i_1_n_0\
    );
\tx_shift[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(40),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(40),
      O => \tx_shift[40]_i_1_n_0\
    );
\tx_shift[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(41),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(41),
      O => \tx_shift[41]_i_1_n_0\
    );
\tx_shift[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(42),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(42),
      O => \tx_shift[42]_i_1_n_0\
    );
\tx_shift[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(43),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(43),
      O => \tx_shift[43]_i_1_n_0\
    );
\tx_shift[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(44),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(44),
      O => \tx_shift[44]_i_1_n_0\
    );
\tx_shift[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(45),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(45),
      O => \tx_shift[45]_i_1_n_0\
    );
\tx_shift[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(46),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(46),
      O => \tx_shift[46]_i_1_n_0\
    );
\tx_shift[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(47),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(47),
      O => \tx_shift[47]_i_1_n_0\
    );
\tx_shift[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(48),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(48),
      O => \tx_shift[48]_i_1_n_0\
    );
\tx_shift[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(49),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(49),
      O => \tx_shift[49]_i_1_n_0\
    );
\tx_shift[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(4),
      O => \tx_shift[4]_i_1_n_0\
    );
\tx_shift[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(50),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(50),
      O => \tx_shift[50]_i_1_n_0\
    );
\tx_shift[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(51),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(51),
      O => \tx_shift[51]_i_1_n_0\
    );
\tx_shift[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(52),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(52),
      O => \tx_shift[52]_i_1_n_0\
    );
\tx_shift[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(53),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(53),
      O => \tx_shift[53]_i_1_n_0\
    );
\tx_shift[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(54),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(54),
      O => \tx_shift[54]_i_1_n_0\
    );
\tx_shift[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(55),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(55),
      O => \tx_shift[55]_i_1_n_0\
    );
\tx_shift[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(56),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(56),
      O => \tx_shift[56]_i_1_n_0\
    );
\tx_shift[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(57),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(57),
      O => \tx_shift[57]_i_1_n_0\
    );
\tx_shift[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => ss_reg_i_3_n_0,
      I1 => spi_tx_valid,
      I2 => \tx_shift[58]_i_3_n_0\,
      I3 => \clk_count_reg_n_0_[1]\,
      I4 => \clk_count_reg_n_0_[0]\,
      I5 => \clk_count_reg_n_0_[2]\,
      O => \tx_shift[58]_i_1_n_0\
    );
\tx_shift[58]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(58),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(58),
      O => \tx_shift[58]_i_2_n_0\
    );
\tx_shift[58]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bit_count_reg_n_0_[2]\,
      I2 => \bit_count_reg_n_0_[4]\,
      I3 => \bit_count_reg_n_0_[5]\,
      I4 => \FSM_onehot_state[3]_i_2_n_0\,
      I5 => \bit_count_reg_n_0_[3]\,
      O => \tx_shift[58]_i_3_n_0\
    );
\tx_shift[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(5),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(5),
      O => \tx_shift[5]_i_1_n_0\
    );
\tx_shift[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(6),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(6),
      O => \tx_shift[6]_i_1_n_0\
    );
\tx_shift[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(7),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(7),
      O => \tx_shift[7]_i_1_n_0\
    );
\tx_shift[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(8),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(8),
      O => \tx_shift[8]_i_1_n_0\
    );
\tx_shift[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => in7(9),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => mosi_reg_reg_0(9),
      O => \tx_shift[9]_i_1_n_0\
    );
\tx_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[0]_i_1_n_0\,
      Q => in7(1),
      R => rst
    );
\tx_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[10]_i_1_n_0\,
      Q => in7(11),
      R => rst
    );
\tx_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[11]_i_1_n_0\,
      Q => in7(12),
      R => rst
    );
\tx_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[12]_i_1_n_0\,
      Q => in7(13),
      R => rst
    );
\tx_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[13]_i_1_n_0\,
      Q => in7(14),
      R => rst
    );
\tx_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[14]_i_1_n_0\,
      Q => in7(15),
      R => rst
    );
\tx_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[15]_i_1_n_0\,
      Q => in7(16),
      R => rst
    );
\tx_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[16]_i_1_n_0\,
      Q => in7(17),
      R => rst
    );
\tx_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[17]_i_1_n_0\,
      Q => in7(18),
      R => rst
    );
\tx_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[18]_i_1_n_0\,
      Q => in7(19),
      R => rst
    );
\tx_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[19]_i_1_n_0\,
      Q => in7(20),
      R => rst
    );
\tx_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[1]_i_1_n_0\,
      Q => in7(2),
      R => rst
    );
\tx_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[20]_i_1_n_0\,
      Q => in7(21),
      R => rst
    );
\tx_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[21]_i_1_n_0\,
      Q => in7(22),
      R => rst
    );
\tx_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[22]_i_1_n_0\,
      Q => in7(23),
      R => rst
    );
\tx_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[23]_i_1_n_0\,
      Q => in7(24),
      R => rst
    );
\tx_shift_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[24]_i_1_n_0\,
      Q => in7(25),
      R => rst
    );
\tx_shift_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[25]_i_1_n_0\,
      Q => in7(26),
      R => rst
    );
\tx_shift_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[26]_i_1_n_0\,
      Q => in7(27),
      R => rst
    );
\tx_shift_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[27]_i_1_n_0\,
      Q => in7(28),
      R => rst
    );
\tx_shift_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[28]_i_1_n_0\,
      Q => in7(29),
      R => rst
    );
\tx_shift_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[29]_i_1_n_0\,
      Q => in7(30),
      R => rst
    );
\tx_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[2]_i_1_n_0\,
      Q => in7(3),
      R => rst
    );
\tx_shift_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[30]_i_1_n_0\,
      Q => in7(31),
      R => rst
    );
\tx_shift_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[31]_i_1_n_0\,
      Q => in7(32),
      R => rst
    );
\tx_shift_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[32]_i_1_n_0\,
      Q => in7(33),
      R => rst
    );
\tx_shift_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[33]_i_1_n_0\,
      Q => in7(34),
      R => rst
    );
\tx_shift_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[34]_i_1_n_0\,
      Q => in7(35),
      R => rst
    );
\tx_shift_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[35]_i_1_n_0\,
      Q => in7(36),
      R => rst
    );
\tx_shift_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[36]_i_1_n_0\,
      Q => in7(37),
      R => rst
    );
\tx_shift_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[37]_i_1_n_0\,
      Q => in7(38),
      R => rst
    );
\tx_shift_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[38]_i_1_n_0\,
      Q => in7(39),
      R => rst
    );
\tx_shift_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[39]_i_1_n_0\,
      Q => in7(40),
      R => rst
    );
\tx_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[3]_i_1_n_0\,
      Q => in7(4),
      R => rst
    );
\tx_shift_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[40]_i_1_n_0\,
      Q => in7(41),
      R => rst
    );
\tx_shift_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[41]_i_1_n_0\,
      Q => in7(42),
      R => rst
    );
\tx_shift_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[42]_i_1_n_0\,
      Q => in7(43),
      R => rst
    );
\tx_shift_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[43]_i_1_n_0\,
      Q => in7(44),
      R => rst
    );
\tx_shift_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[44]_i_1_n_0\,
      Q => in7(45),
      R => rst
    );
\tx_shift_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[45]_i_1_n_0\,
      Q => in7(46),
      R => rst
    );
\tx_shift_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[46]_i_1_n_0\,
      Q => in7(47),
      R => rst
    );
\tx_shift_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[47]_i_1_n_0\,
      Q => in7(48),
      R => rst
    );
\tx_shift_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[48]_i_1_n_0\,
      Q => in7(49),
      R => rst
    );
\tx_shift_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[49]_i_1_n_0\,
      Q => in7(50),
      R => rst
    );
\tx_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[4]_i_1_n_0\,
      Q => in7(5),
      R => rst
    );
\tx_shift_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[50]_i_1_n_0\,
      Q => in7(51),
      R => rst
    );
\tx_shift_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[51]_i_1_n_0\,
      Q => in7(52),
      R => rst
    );
\tx_shift_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[52]_i_1_n_0\,
      Q => in7(53),
      R => rst
    );
\tx_shift_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[53]_i_1_n_0\,
      Q => in7(54),
      R => rst
    );
\tx_shift_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[54]_i_1_n_0\,
      Q => in7(55),
      R => rst
    );
\tx_shift_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[55]_i_1_n_0\,
      Q => in7(56),
      R => rst
    );
\tx_shift_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[56]_i_1_n_0\,
      Q => in7(57),
      R => rst
    );
\tx_shift_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[57]_i_1_n_0\,
      Q => in7(58),
      R => rst
    );
\tx_shift_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[58]_i_2_n_0\,
      Q => p_1_in,
      R => rst
    );
\tx_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[5]_i_1_n_0\,
      Q => in7(6),
      R => rst
    );
\tx_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[6]_i_1_n_0\,
      Q => in7(7),
      R => rst
    );
\tx_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[7]_i_1_n_0\,
      Q => in7(8),
      R => rst
    );
\tx_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[8]_i_1_n_0\,
      Q => in7(9),
      R => rst
    );
\tx_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_shift[58]_i_1_n_0\,
      D => \tx_shift[9]_i_1_n_0\,
      Q => in7(10),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_24_SPI_Master_AXI_slave_lite_v1_0_S00_AXI is
  port (
    rx_pending : out STD_LOGIC;
    rst : out STD_LOGIC;
    tx_last : out STD_LOGIC;
    axi_bvalid_reg_0 : out STD_LOGIC;
    spi_tx_valid : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    ldb_trigger_reg : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    \tx_high_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    \rx_count_reg_reg[1]_0\ : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    \spi_tx_data_reg_reg[59]_0\ : out STD_LOGIC_VECTOR ( 59 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    error_pending_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    spi_rx_valid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_done : in STD_LOGIC;
    ldb_done : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    ldb_trigger_reg_reg_0 : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    error_pending_reg_1 : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rx_high_reg_reg[27]_0\ : in STD_LOGIC_VECTOR ( 59 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_Master_AXI_0_24_SPI_Master_AXI_slave_lite_v1_0_S00_AXI : entity is "SPI_Master_AXI_slave_lite_v1_0_S00_AXI";
end design_1_SPI_Master_AXI_0_24_SPI_Master_AXI_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_24_SPI_Master_AXI_slave_lite_v1_0_S00_AXI is
  signal aw_hold_addr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \aw_hold_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \aw_hold_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \aw_hold_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal aw_hold_valid : STD_LOGIC;
  signal aw_hold_valid0 : STD_LOGIC;
  signal aw_hold_valid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_bvalid_reg_0\ : STD_LOGIC;
  signal axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal error_pending : STD_LOGIC;
  signal error_pending_i_1_n_0 : STD_LOGIC;
  signal error_pending_i_2_n_0 : STD_LOGIC;
  signal error_pending_i_3_n_0 : STD_LOGIC;
  signal error_pending_i_4_n_0 : STD_LOGIC;
  signal error_pending_i_5_n_0 : STD_LOGIC;
  signal error_pending_i_6_n_0 : STD_LOGIC;
  signal error_pending_i_7_n_0 : STD_LOGIC;
  signal error_pending_i_8_n_0 : STD_LOGIC;
  signal ldb_done_pending : STD_LOGIC;
  signal ldb_done_pending_i_1_n_0 : STD_LOGIC;
  signal ldb_done_pending_i_2_n_0 : STD_LOGIC;
  signal ldb_trigger_reg_i_1_n_0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_5_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal result : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^rst\ : STD_LOGIC;
  signal rx_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rx_count_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \rx_count_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal rx_count_reg_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_high_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal rx_low_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rx_pending\ : STD_LOGIC;
  signal rx_pending_i_1_n_0 : STD_LOGIC;
  signal rx_pending_i_2_n_0 : STD_LOGIC;
  signal rx_pending_i_3_n_0 : STD_LOGIC;
  signal rx_pending_i_4_n_0 : STD_LOGIC;
  signal rx_pending_i_5_n_0 : STD_LOGIC;
  signal spi_done_pending : STD_LOGIC;
  signal spi_done_pending_i_1_n_0 : STD_LOGIC;
  signal spi_done_pending_i_2_n_0 : STD_LOGIC;
  signal \spi_tx_data_reg[59]_i_3_n_0\ : STD_LOGIC;
  signal \^spi_tx_valid\ : STD_LOGIC;
  signal spi_tx_valid_reg : STD_LOGIC;
  signal spi_tx_valid_reg_i_1_n_0 : STD_LOGIC;
  signal strb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_high_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \tx_high_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_high_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \tx_high_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \tx_high_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \tx_high_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_high_reg_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_low_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tx_low_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \tx_low_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \tx_low_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \tx_low_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_low_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal w_hold_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \w_hold_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \w_hold_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \w_hold_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \w_hold_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \w_hold_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \w_hold_data[4]_i_1_n_0\ : STD_LOGIC;
  signal w_hold_strb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_hold_valid_i_1_n_0 : STD_LOGIC;
  signal w_hold_valid_reg_n_0 : STD_LOGIC;
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \aw_hold_addr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \aw_hold_addr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \aw_hold_addr[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of error_pending_i_7 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of error_pending_i_8 : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \rx_count_reg[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_count_reg[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rx_count_reg[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rx_count_reg[12]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rx_count_reg[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rx_count_reg[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rx_count_reg[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rx_count_reg[16]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rx_count_reg[17]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rx_count_reg[18]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rx_count_reg[19]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rx_count_reg[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_count_reg[20]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rx_count_reg[21]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rx_count_reg[22]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rx_count_reg[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rx_count_reg[24]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rx_count_reg[25]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rx_count_reg[26]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rx_count_reg[27]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rx_count_reg[28]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rx_count_reg[29]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rx_count_reg[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rx_count_reg[30]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rx_count_reg[31]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rx_count_reg[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rx_count_reg[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rx_count_reg[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rx_count_reg[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rx_count_reg[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rx_count_reg[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rx_count_reg[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of rx_pending_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of rx_pending_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of rx_pending_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s00_axi_arready_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s00_axi_awready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s00_axi_wready_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of spi_done_pending_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of spi_tx_last_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_low_reg[31]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_low_reg[31]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w_hold_data[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w_hold_data[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_hold_strb[0]_i_1\ : label is "soft_lutpair7";
begin
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  rst <= \^rst\;
  rx_pending <= \^rx_pending\;
  spi_tx_valid <= \^spi_tx_valid\;
  \tx_high_reg_reg[1]_0\(1 downto 0) <= \^tx_high_reg_reg[1]_0\(1 downto 0);
\aw_hold_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => aw_hold_valid,
      I4 => aw_hold_addr(2),
      O => \aw_hold_addr[2]_i_1_n_0\
    );
\aw_hold_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => aw_hold_addr(3),
      I1 => aw_hold_valid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      O => \aw_hold_addr[3]_i_1_n_0\
    );
\aw_hold_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => aw_hold_addr(4),
      I1 => aw_hold_valid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      O => \aw_hold_addr[4]_i_1_n_0\
    );
\aw_hold_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \aw_hold_addr[2]_i_1_n_0\,
      Q => aw_hold_addr(2),
      R => \^rst\
    );
\aw_hold_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \aw_hold_addr[3]_i_1_n_0\,
      Q => aw_hold_addr(3),
      R => \^rst\
    );
\aw_hold_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \aw_hold_addr[4]_i_1_n_0\,
      Q => aw_hold_addr(4),
      R => \^rst\
    );
aw_hold_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA020200000200"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => w_hold_valid_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_bvalid_reg_0\,
      I5 => aw_hold_valid,
      O => aw_hold_valid_i_1_n_0
    );
aw_hold_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_hold_valid_i_1_n_0,
      Q => aw_hold_valid,
      R => '0'
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5C5F5C5F5C5050"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => aw_hold_valid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => w_hold_valid_reg_n_0,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid_reg_0\,
      R => \^rst\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FA030A0"
    )
        port map (
      I0 => tx_high_reg(0),
      I1 => Q(0),
      I2 => s00_axi_araddr(1),
      I3 => s00_axi_araddr(0),
      I4 => tx_low_reg(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(0),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(0),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(10),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(10),
      O => axi_rdata(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(10),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(10),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(11),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(11),
      O => axi_rdata(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(11),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(11),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(12),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(12),
      O => axi_rdata(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(12),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(12),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(13),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(13),
      O => axi_rdata(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(13),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(13),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(14),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(14),
      O => axi_rdata(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(14),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(14),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(15),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(15),
      O => axi_rdata(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(15),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(15),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(16),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(16),
      O => axi_rdata(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(16),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(16),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(17),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(17),
      O => axi_rdata(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(17),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(17),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(18),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(18),
      O => axi_rdata(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(18),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(18),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(19),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(19),
      O => axi_rdata(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(19),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(19),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(1),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(1),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(1),
      O => \rx_count_reg_reg[1]_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(20),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(20),
      O => axi_rdata(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(20),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(20),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(21),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(21),
      O => axi_rdata(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(21),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(21),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(22),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(22),
      O => axi_rdata(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(22),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(22),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(23),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(23),
      O => axi_rdata(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(23),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(23),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(24),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(24),
      O => axi_rdata(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(24),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(24),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(25),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(25),
      O => axi_rdata(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(25),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(25),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(26),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(26),
      O => axi_rdata(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(26),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(26),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(27),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(27),
      O => axi_rdata(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(27),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(27),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000383830000808"
    )
        port map (
      I0 => tx_low_reg(28),
      I1 => s00_axi_araddr(0),
      I2 => s00_axi_araddr(2),
      I3 => rx_count_reg(28),
      I4 => s00_axi_araddr(1),
      I5 => rx_low_reg(28),
      O => axi_rdata(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000383830000808"
    )
        port map (
      I0 => tx_low_reg(29),
      I1 => s00_axi_araddr(0),
      I2 => s00_axi_araddr(2),
      I3 => rx_count_reg(29),
      I4 => s00_axi_araddr(1),
      I5 => rx_low_reg(29),
      O => axi_rdata(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => \axi_rdata[2]_i_3_n_0\,
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => \axi_rdata[2]_i_4_n_0\,
      O => axi_rdata(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(2),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(2),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => tx_low_reg(2),
      I1 => s00_axi_araddr(0),
      I2 => s00_axi_araddr(1),
      I3 => tx_high_reg(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => rx_pending_i_3_n_0,
      I1 => rx_pending_i_2_n_0,
      I2 => spi_rx_valid,
      I3 => \^rx_pending\,
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000383830000808"
    )
        port map (
      I0 => tx_low_reg(30),
      I1 => s00_axi_araddr(0),
      I2 => s00_axi_araddr(2),
      I3 => rx_count_reg(30),
      I4 => s00_axi_araddr(1),
      I5 => rx_low_reg(30),
      O => axi_rdata(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_rvalid_reg_0\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000383830000808"
    )
        port map (
      I0 => tx_low_reg(31),
      I1 => s00_axi_araddr(0),
      I2 => s00_axi_araddr(2),
      I3 => rx_count_reg(31),
      I4 => s00_axi_araddr(1),
      I5 => rx_low_reg(31),
      O => axi_rdata(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22200020"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(3),
      I3 => s00_axi_araddr(0),
      I4 => spi_done_pending_i_1_n_0,
      I5 => \axi_rdata[3]_i_2_n_0\,
      O => axi_rdata(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_araddr(2),
      I2 => s00_axi_araddr(0),
      I3 => tx_low_reg(3),
      I4 => \axi_rdata[3]_i_3_n_0\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => rx_low_reg(3),
      I1 => s00_axi_araddr(0),
      I2 => rx_high_reg(3),
      I3 => s00_axi_araddr(1),
      I4 => rx_count_reg(3),
      I5 => s00_axi_araddr(2),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FA030A0"
    )
        port map (
      I0 => tx_high_reg(4),
      I1 => ldb_trigger_reg_reg_0,
      I2 => s00_axi_araddr(1),
      I3 => s00_axi_araddr(0),
      I4 => tx_low_reg(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(4),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(4),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22200020"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(5),
      I3 => s00_axi_araddr(0),
      I4 => ldb_done_pending_i_1_n_0,
      I5 => \axi_rdata[5]_i_2_n_0\,
      O => axi_rdata(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => \axi_rdata[5]_i_3_n_0\,
      I1 => s00_axi_araddr(1),
      I2 => s00_axi_araddr(2),
      I3 => s00_axi_araddr(0),
      I4 => tx_low_reg(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => rx_low_reg(5),
      I1 => s00_axi_araddr(0),
      I2 => rx_high_reg(5),
      I3 => s00_axi_araddr(1),
      I4 => rx_count_reg(5),
      I5 => s00_axi_araddr(2),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22200020"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(6),
      I3 => s00_axi_araddr(0),
      I4 => error_pending_i_1_n_0,
      I5 => \axi_rdata[6]_i_2_n_0\,
      O => axi_rdata(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => \axi_rdata[6]_i_3_n_0\,
      I1 => s00_axi_araddr(1),
      I2 => s00_axi_araddr(2),
      I3 => s00_axi_araddr(0),
      I4 => tx_low_reg(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => rx_low_reg(6),
      I1 => s00_axi_araddr(0),
      I2 => rx_high_reg(6),
      I3 => s00_axi_araddr(1),
      I4 => rx_count_reg(6),
      I5 => s00_axi_araddr(2),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(7),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(7),
      O => axi_rdata(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(7),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(7),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(8),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(8),
      O => axi_rdata(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(8),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(8),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => s00_axi_araddr(2),
      I2 => tx_high_reg(9),
      I3 => s00_axi_araddr(1),
      I4 => s00_axi_araddr(0),
      I5 => tx_low_reg(9),
      O => axi_rdata(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => rx_count_reg(9),
      I1 => s00_axi_araddr(1),
      I2 => rx_high_reg(9),
      I3 => s00_axi_araddr(0),
      I4 => rx_low_reg(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(0),
      Q => s00_axi_rdata(0),
      R => \^rst\
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => axi_rdata(0),
      S => s00_axi_araddr(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(10),
      Q => s00_axi_rdata(10),
      R => \^rst\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(11),
      Q => s00_axi_rdata(11),
      R => \^rst\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(12),
      Q => s00_axi_rdata(12),
      R => \^rst\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(13),
      Q => s00_axi_rdata(13),
      R => \^rst\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(14),
      Q => s00_axi_rdata(14),
      R => \^rst\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(15),
      Q => s00_axi_rdata(15),
      R => \^rst\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(16),
      Q => s00_axi_rdata(16),
      R => \^rst\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(17),
      Q => s00_axi_rdata(17),
      R => \^rst\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(18),
      Q => s00_axi_rdata(18),
      R => \^rst\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(19),
      Q => s00_axi_rdata(19),
      R => \^rst\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(0),
      Q => s00_axi_rdata(1),
      R => \^rst\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(20),
      Q => s00_axi_rdata(20),
      R => \^rst\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(21),
      Q => s00_axi_rdata(21),
      R => \^rst\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(22),
      Q => s00_axi_rdata(22),
      R => \^rst\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(23),
      Q => s00_axi_rdata(23),
      R => \^rst\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(24),
      Q => s00_axi_rdata(24),
      R => \^rst\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(25),
      Q => s00_axi_rdata(25),
      R => \^rst\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(26),
      Q => s00_axi_rdata(26),
      R => \^rst\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(27),
      Q => s00_axi_rdata(27),
      R => \^rst\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(28),
      Q => s00_axi_rdata(28),
      R => \^rst\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(29),
      Q => s00_axi_rdata(29),
      R => \^rst\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(2),
      Q => s00_axi_rdata(2),
      R => \^rst\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(30),
      Q => s00_axi_rdata(30),
      R => \^rst\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(31),
      Q => s00_axi_rdata(31),
      R => \^rst\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(3),
      Q => s00_axi_rdata(3),
      R => \^rst\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(4),
      Q => s00_axi_rdata(4),
      R => \^rst\
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      O => axi_rdata(4),
      S => s00_axi_araddr(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(5),
      Q => s00_axi_rdata(5),
      R => \^rst\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(6),
      Q => s00_axi_rdata(6),
      R => \^rst\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(7),
      Q => s00_axi_rdata(7),
      R => \^rst\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(8),
      Q => s00_axi_rdata(8),
      R => \^rst\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata(9),
      Q => s00_axi_rdata(9),
      R => \^rst\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => s00_axi_rready,
      I2 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => \^rst\
    );
error_pending_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF03AAAA0000"
    )
        port map (
      I0 => error_pending_i_2_n_0,
      I1 => error_pending_reg_0,
      I2 => error_pending_i_3_n_0,
      I3 => error_pending_i_4_n_0,
      I4 => error_pending_i_5_n_0,
      I5 => error_pending_i_6_n_0,
      O => error_pending_i_1_n_0
    );
error_pending_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => \aw_hold_addr[3]_i_1_n_0\,
      I1 => \aw_hold_addr[4]_i_1_n_0\,
      I2 => rx_pending_i_4_n_0,
      I3 => aw_hold_valid0,
      I4 => error_pending_i_7_n_0,
      I5 => error_pending_i_8_n_0,
      O => error_pending_i_2_n_0
    );
error_pending_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => w_hold_strb(0),
      I2 => s00_axi_wdata(0),
      I3 => \tx_low_reg[31]_i_4_n_0\,
      I4 => w_hold_data(0),
      O => error_pending_i_3_n_0
    );
error_pending_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8308800"
    )
        port map (
      I0 => w_hold_data(2),
      I1 => \tx_low_reg[31]_i_4_n_0\,
      I2 => s00_axi_wdata(2),
      I3 => w_hold_strb(0),
      I4 => s00_axi_wstrb(0),
      I5 => error_pending_reg_1,
      O => error_pending_i_4_n_0
    );
error_pending_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => error_pending,
      I1 => spi_rx_valid,
      I2 => \^rx_pending\,
      O => error_pending_i_5_n_0
    );
error_pending_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001D000000000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => rx_pending_i_5_n_0,
      I2 => aw_hold_addr(3),
      I3 => \aw_hold_addr[4]_i_1_n_0\,
      I4 => rx_pending_i_4_n_0,
      I5 => aw_hold_valid0,
      O => error_pending_i_6_n_0
    );
error_pending_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54555755"
    )
        port map (
      I0 => w_hold_strb(0),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wstrb(0),
      O => error_pending_i_7_n_0
    );
error_pending_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54555755"
    )
        port map (
      I0 => w_hold_data(3),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(3),
      O => error_pending_i_8_n_0
    );
error_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => error_pending_i_1_n_0,
      Q => error_pending,
      R => \^rst\
    );
ldb_done_pending_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEE0EEEE"
    )
        port map (
      I0 => ldb_done,
      I1 => ldb_done_pending,
      I2 => rx_pending_i_3_n_0,
      I3 => ldb_done_pending_i_2_n_0,
      I4 => aw_hold_valid0,
      I5 => \spi_tx_data_reg[59]_i_3_n_0\,
      O => ldb_done_pending_i_1_n_0
    );
ldb_done_pending_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => w_hold_strb(0),
      I2 => s00_axi_wdata(2),
      I3 => \tx_low_reg[31]_i_4_n_0\,
      I4 => w_hold_data(2),
      O => ldb_done_pending_i_2_n_0
    );
ldb_done_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ldb_done_pending_i_1_n_0,
      Q => ldb_done_pending,
      R => \^rst\
    );
ldb_trigger_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => error_pending_i_6_n_0,
      I1 => s00_axi_aresetn,
      I2 => \^spi_tx_valid\,
      I3 => Q(0),
      I4 => ldb_trigger_reg_reg_0,
      I5 => ldb_done_pending_i_2_n_0,
      O => ldb_trigger_reg_i_1_n_0
    );
ldb_trigger_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ldb_trigger_reg_i_1_n_0,
      Q => ldb_trigger_reg,
      R => '0'
    );
mosi_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^rst\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => rx_count_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => rx_count_reg(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => rx_count_reg(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => rx_count_reg(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => rx_count_reg(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3 downto 0) => rx_count_reg(20 downto 17)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(24 downto 21),
      S(3 downto 0) => rx_count_reg(24 downto 21)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(28 downto 25),
      S(3 downto 0) => rx_count_reg(28 downto 25)
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => rx_count_reg(31 downto 29)
    );
\rx_count_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_count_reg(0),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(0)
    );
\rx_count_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(10),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(10)
    );
\rx_count_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(11),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(11)
    );
\rx_count_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(12),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(12)
    );
\rx_count_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(13),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(13)
    );
\rx_count_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(14),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(14)
    );
\rx_count_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(15),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(15)
    );
\rx_count_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(16),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(16)
    );
\rx_count_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(17),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(17)
    );
\rx_count_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(18),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(18)
    );
\rx_count_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(19),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(19)
    );
\rx_count_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(1),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(1)
    );
\rx_count_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(20),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(20)
    );
\rx_count_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(21),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(21)
    );
\rx_count_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(22),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(22)
    );
\rx_count_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(23),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(23)
    );
\rx_count_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(24),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(24)
    );
\rx_count_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(25),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(25)
    );
\rx_count_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(26),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(26)
    );
\rx_count_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(27),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(27)
    );
\rx_count_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(28),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(28)
    );
\rx_count_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(29),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(29)
    );
\rx_count_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(2),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(2)
    );
\rx_count_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(30),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(30)
    );
\rx_count_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^rx_pending\,
      I1 => spi_rx_valid,
      I2 => \rx_count_reg[31]_i_3_n_0\,
      O => \rx_count_reg[31]_i_1_n_0\
    );
\rx_count_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(31),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(31)
    );
\rx_count_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054040000"
    )
        port map (
      I0 => error_pending_i_7_n_0,
      I1 => s00_axi_wdata(4),
      I2 => \tx_low_reg[31]_i_4_n_0\,
      I3 => w_hold_data(4),
      I4 => aw_hold_valid0,
      I5 => rx_pending_i_3_n_0,
      O => \rx_count_reg[31]_i_3_n_0\
    );
\rx_count_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(3),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(3)
    );
\rx_count_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(4),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(4)
    );
\rx_count_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(5),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(5)
    );
\rx_count_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(6),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(6)
    );
\rx_count_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(7),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(7)
    );
\rx_count_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(8),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(8)
    );
\rx_count_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(9),
      I1 => \rx_count_reg[31]_i_3_n_0\,
      O => rx_count_reg_0(9)
    );
\rx_count_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(0),
      Q => rx_count_reg(0),
      R => \^rst\
    );
\rx_count_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(10),
      Q => rx_count_reg(10),
      R => \^rst\
    );
\rx_count_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(11),
      Q => rx_count_reg(11),
      R => \^rst\
    );
\rx_count_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(12),
      Q => rx_count_reg(12),
      R => \^rst\
    );
\rx_count_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(13),
      Q => rx_count_reg(13),
      R => \^rst\
    );
\rx_count_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(14),
      Q => rx_count_reg(14),
      R => \^rst\
    );
\rx_count_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(15),
      Q => rx_count_reg(15),
      R => \^rst\
    );
\rx_count_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(16),
      Q => rx_count_reg(16),
      R => \^rst\
    );
\rx_count_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(17),
      Q => rx_count_reg(17),
      R => \^rst\
    );
\rx_count_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(18),
      Q => rx_count_reg(18),
      R => \^rst\
    );
\rx_count_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(19),
      Q => rx_count_reg(19),
      R => \^rst\
    );
\rx_count_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(1),
      Q => rx_count_reg(1),
      R => \^rst\
    );
\rx_count_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(20),
      Q => rx_count_reg(20),
      R => \^rst\
    );
\rx_count_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(21),
      Q => rx_count_reg(21),
      R => \^rst\
    );
\rx_count_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(22),
      Q => rx_count_reg(22),
      R => \^rst\
    );
\rx_count_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(23),
      Q => rx_count_reg(23),
      R => \^rst\
    );
\rx_count_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(24),
      Q => rx_count_reg(24),
      R => \^rst\
    );
\rx_count_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(25),
      Q => rx_count_reg(25),
      R => \^rst\
    );
\rx_count_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(26),
      Q => rx_count_reg(26),
      R => \^rst\
    );
\rx_count_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(27),
      Q => rx_count_reg(27),
      R => \^rst\
    );
\rx_count_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(28),
      Q => rx_count_reg(28),
      R => \^rst\
    );
\rx_count_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(29),
      Q => rx_count_reg(29),
      R => \^rst\
    );
\rx_count_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(2),
      Q => rx_count_reg(2),
      R => \^rst\
    );
\rx_count_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(30),
      Q => rx_count_reg(30),
      R => \^rst\
    );
\rx_count_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(31),
      Q => rx_count_reg(31),
      R => \^rst\
    );
\rx_count_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(3),
      Q => rx_count_reg(3),
      R => \^rst\
    );
\rx_count_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(4),
      Q => rx_count_reg(4),
      R => \^rst\
    );
\rx_count_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(5),
      Q => rx_count_reg(5),
      R => \^rst\
    );
\rx_count_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(6),
      Q => rx_count_reg(6),
      R => \^rst\
    );
\rx_count_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(7),
      Q => rx_count_reg(7),
      R => \^rst\
    );
\rx_count_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(8),
      Q => rx_count_reg(8),
      R => \^rst\
    );
\rx_count_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_count_reg[31]_i_1_n_0\,
      D => rx_count_reg_0(9),
      Q => rx_count_reg(9),
      R => \^rst\
    );
\rx_high_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(32),
      Q => rx_high_reg(0),
      R => \^rst\
    );
\rx_high_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(42),
      Q => rx_high_reg(10),
      R => \^rst\
    );
\rx_high_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(43),
      Q => rx_high_reg(11),
      R => \^rst\
    );
\rx_high_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(44),
      Q => rx_high_reg(12),
      R => \^rst\
    );
\rx_high_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(45),
      Q => rx_high_reg(13),
      R => \^rst\
    );
\rx_high_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(46),
      Q => rx_high_reg(14),
      R => \^rst\
    );
\rx_high_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(47),
      Q => rx_high_reg(15),
      R => \^rst\
    );
\rx_high_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(48),
      Q => rx_high_reg(16),
      R => \^rst\
    );
\rx_high_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(49),
      Q => rx_high_reg(17),
      R => \^rst\
    );
\rx_high_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(50),
      Q => rx_high_reg(18),
      R => \^rst\
    );
\rx_high_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(51),
      Q => rx_high_reg(19),
      R => \^rst\
    );
\rx_high_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(33),
      Q => rx_high_reg(1),
      R => \^rst\
    );
\rx_high_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(52),
      Q => rx_high_reg(20),
      R => \^rst\
    );
\rx_high_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(53),
      Q => rx_high_reg(21),
      R => \^rst\
    );
\rx_high_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(54),
      Q => rx_high_reg(22),
      R => \^rst\
    );
\rx_high_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(55),
      Q => rx_high_reg(23),
      R => \^rst\
    );
\rx_high_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(56),
      Q => rx_high_reg(24),
      R => \^rst\
    );
\rx_high_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(57),
      Q => rx_high_reg(25),
      R => \^rst\
    );
\rx_high_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(58),
      Q => rx_high_reg(26),
      R => \^rst\
    );
\rx_high_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(59),
      Q => rx_high_reg(27),
      R => \^rst\
    );
\rx_high_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(34),
      Q => rx_high_reg(2),
      R => \^rst\
    );
\rx_high_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(35),
      Q => rx_high_reg(3),
      R => \^rst\
    );
\rx_high_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(36),
      Q => rx_high_reg(4),
      R => \^rst\
    );
\rx_high_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(37),
      Q => rx_high_reg(5),
      R => \^rst\
    );
\rx_high_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(38),
      Q => rx_high_reg(6),
      R => \^rst\
    );
\rx_high_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(39),
      Q => rx_high_reg(7),
      R => \^rst\
    );
\rx_high_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(40),
      Q => rx_high_reg(8),
      R => \^rst\
    );
\rx_high_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(41),
      Q => rx_high_reg(9),
      R => \^rst\
    );
\rx_low_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(0),
      Q => rx_low_reg(0),
      R => \^rst\
    );
\rx_low_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(10),
      Q => rx_low_reg(10),
      R => \^rst\
    );
\rx_low_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(11),
      Q => rx_low_reg(11),
      R => \^rst\
    );
\rx_low_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(12),
      Q => rx_low_reg(12),
      R => \^rst\
    );
\rx_low_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(13),
      Q => rx_low_reg(13),
      R => \^rst\
    );
\rx_low_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(14),
      Q => rx_low_reg(14),
      R => \^rst\
    );
\rx_low_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(15),
      Q => rx_low_reg(15),
      R => \^rst\
    );
\rx_low_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(16),
      Q => rx_low_reg(16),
      R => \^rst\
    );
\rx_low_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(17),
      Q => rx_low_reg(17),
      R => \^rst\
    );
\rx_low_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(18),
      Q => rx_low_reg(18),
      R => \^rst\
    );
\rx_low_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(19),
      Q => rx_low_reg(19),
      R => \^rst\
    );
\rx_low_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(1),
      Q => rx_low_reg(1),
      R => \^rst\
    );
\rx_low_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(20),
      Q => rx_low_reg(20),
      R => \^rst\
    );
\rx_low_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(21),
      Q => rx_low_reg(21),
      R => \^rst\
    );
\rx_low_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(22),
      Q => rx_low_reg(22),
      R => \^rst\
    );
\rx_low_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(23),
      Q => rx_low_reg(23),
      R => \^rst\
    );
\rx_low_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(24),
      Q => rx_low_reg(24),
      R => \^rst\
    );
\rx_low_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(25),
      Q => rx_low_reg(25),
      R => \^rst\
    );
\rx_low_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(26),
      Q => rx_low_reg(26),
      R => \^rst\
    );
\rx_low_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(27),
      Q => rx_low_reg(27),
      R => \^rst\
    );
\rx_low_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(28),
      Q => rx_low_reg(28),
      R => \^rst\
    );
\rx_low_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(29),
      Q => rx_low_reg(29),
      R => \^rst\
    );
\rx_low_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(2),
      Q => rx_low_reg(2),
      R => \^rst\
    );
\rx_low_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(30),
      Q => rx_low_reg(30),
      R => \^rst\
    );
\rx_low_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(31),
      Q => rx_low_reg(31),
      R => \^rst\
    );
\rx_low_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(3),
      Q => rx_low_reg(3),
      R => \^rst\
    );
\rx_low_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(4),
      Q => rx_low_reg(4),
      R => \^rst\
    );
\rx_low_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(5),
      Q => rx_low_reg(5),
      R => \^rst\
    );
\rx_low_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(6),
      Q => rx_low_reg(6),
      R => \^rst\
    );
\rx_low_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(7),
      Q => rx_low_reg(7),
      R => \^rst\
    );
\rx_low_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(8),
      Q => rx_low_reg(8),
      R => \^rst\
    );
\rx_low_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rx_high_reg_reg[27]_0\(9),
      Q => rx_low_reg(9),
      R => \^rst\
    );
rx_pending_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE0E"
    )
        port map (
      I0 => \^rx_pending\,
      I1 => spi_rx_valid,
      I2 => rx_pending_i_2_n_0,
      I3 => rx_pending_i_3_n_0,
      O => rx_pending_i_1_n_0
    );
rx_pending_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A800A0080800000"
    )
        port map (
      I0 => aw_hold_valid0,
      I1 => w_hold_data(0),
      I2 => \tx_low_reg[31]_i_4_n_0\,
      I3 => s00_axi_wdata(0),
      I4 => w_hold_strb(0),
      I5 => s00_axi_wstrb(0),
      O => rx_pending_i_2_n_0
    );
rx_pending_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFFAFFBFBFFFFF"
    )
        port map (
      I0 => rx_pending_i_4_n_0,
      I1 => aw_hold_addr(4),
      I2 => rx_pending_i_5_n_0,
      I3 => s00_axi_awaddr(2),
      I4 => aw_hold_addr(3),
      I5 => s00_axi_awaddr(1),
      O => rx_pending_i_3_n_0
    );
rx_pending_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54555755"
    )
        port map (
      I0 => aw_hold_addr(2),
      I1 => aw_hold_valid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      O => rx_pending_i_4_n_0
    );
rx_pending_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => aw_hold_valid,
      I1 => \^axi_bvalid_reg_0\,
      I2 => s00_axi_awvalid,
      O => rx_pending_i_5_n_0
    );
rx_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rx_pending_i_1_n_0,
      Q => \^rx_pending\,
      R => \^rst\
    );
s00_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      O => s00_axi_arready
    );
s00_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_hold_valid,
      I1 => \^axi_bvalid_reg_0\,
      O => s00_axi_awready
    );
s00_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_hold_valid_reg_n_0,
      I1 => \^axi_bvalid_reg_0\,
      O => s00_axi_wready
    );
spi_done_pending_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEE0EEEE"
    )
        port map (
      I0 => spi_done,
      I1 => spi_done_pending,
      I2 => rx_pending_i_3_n_0,
      I3 => spi_done_pending_i_2_n_0,
      I4 => aw_hold_valid0,
      I5 => \spi_tx_data_reg[59]_i_3_n_0\,
      O => spi_done_pending_i_1_n_0
    );
spi_done_pending_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => w_hold_strb(0),
      I2 => s00_axi_wdata(1),
      I3 => \tx_low_reg[31]_i_4_n_0\,
      I4 => w_hold_data(1),
      O => spi_done_pending_i_2_n_0
    );
spi_done_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spi_done_pending_i_1_n_0,
      Q => spi_done_pending,
      R => \^rst\
    );
\spi_tx_data_reg[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rx_pending_i_2_n_0,
      I1 => error_pending_reg_0,
      I2 => \spi_tx_data_reg[59]_i_3_n_0\,
      O => spi_tx_valid_reg
    );
\spi_tx_data_reg[59]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => rx_pending_i_4_n_0,
      I1 => aw_hold_addr(4),
      I2 => rx_pending_i_5_n_0,
      I3 => s00_axi_awaddr(2),
      I4 => aw_hold_addr(3),
      I5 => s00_axi_awaddr(1),
      O => \spi_tx_data_reg[59]_i_3_n_0\
    );
\spi_tx_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(0),
      Q => \spi_tx_data_reg_reg[59]_0\(0),
      R => \^rst\
    );
\spi_tx_data_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(10),
      Q => \spi_tx_data_reg_reg[59]_0\(10),
      R => \^rst\
    );
\spi_tx_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(11),
      Q => \spi_tx_data_reg_reg[59]_0\(11),
      R => \^rst\
    );
\spi_tx_data_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(12),
      Q => \spi_tx_data_reg_reg[59]_0\(12),
      R => \^rst\
    );
\spi_tx_data_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(13),
      Q => \spi_tx_data_reg_reg[59]_0\(13),
      R => \^rst\
    );
\spi_tx_data_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(14),
      Q => \spi_tx_data_reg_reg[59]_0\(14),
      R => \^rst\
    );
\spi_tx_data_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(15),
      Q => \spi_tx_data_reg_reg[59]_0\(15),
      R => \^rst\
    );
\spi_tx_data_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(16),
      Q => \spi_tx_data_reg_reg[59]_0\(16),
      R => \^rst\
    );
\spi_tx_data_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(17),
      Q => \spi_tx_data_reg_reg[59]_0\(17),
      R => \^rst\
    );
\spi_tx_data_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(18),
      Q => \spi_tx_data_reg_reg[59]_0\(18),
      R => \^rst\
    );
\spi_tx_data_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(19),
      Q => \spi_tx_data_reg_reg[59]_0\(19),
      R => \^rst\
    );
\spi_tx_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => \^tx_high_reg_reg[1]_0\(0),
      Q => \spi_tx_data_reg_reg[59]_0\(1),
      R => \^rst\
    );
\spi_tx_data_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(20),
      Q => \spi_tx_data_reg_reg[59]_0\(20),
      R => \^rst\
    );
\spi_tx_data_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(21),
      Q => \spi_tx_data_reg_reg[59]_0\(21),
      R => \^rst\
    );
\spi_tx_data_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(22),
      Q => \spi_tx_data_reg_reg[59]_0\(22),
      R => \^rst\
    );
\spi_tx_data_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(23),
      Q => \spi_tx_data_reg_reg[59]_0\(23),
      R => \^rst\
    );
\spi_tx_data_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(24),
      Q => \spi_tx_data_reg_reg[59]_0\(24),
      R => \^rst\
    );
\spi_tx_data_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(25),
      Q => \spi_tx_data_reg_reg[59]_0\(25),
      R => \^rst\
    );
\spi_tx_data_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(26),
      Q => \spi_tx_data_reg_reg[59]_0\(26),
      R => \^rst\
    );
\spi_tx_data_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(27),
      Q => \spi_tx_data_reg_reg[59]_0\(27),
      R => \^rst\
    );
\spi_tx_data_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(28),
      Q => \spi_tx_data_reg_reg[59]_0\(28),
      R => \^rst\
    );
\spi_tx_data_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(29),
      Q => \spi_tx_data_reg_reg[59]_0\(29),
      R => \^rst\
    );
\spi_tx_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(2),
      Q => \spi_tx_data_reg_reg[59]_0\(2),
      R => \^rst\
    );
\spi_tx_data_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(30),
      Q => \spi_tx_data_reg_reg[59]_0\(30),
      R => \^rst\
    );
\spi_tx_data_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(31),
      Q => \spi_tx_data_reg_reg[59]_0\(31),
      R => \^rst\
    );
\spi_tx_data_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(0),
      Q => \spi_tx_data_reg_reg[59]_0\(32),
      R => \^rst\
    );
\spi_tx_data_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => \^tx_high_reg_reg[1]_0\(1),
      Q => \spi_tx_data_reg_reg[59]_0\(33),
      R => \^rst\
    );
\spi_tx_data_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(2),
      Q => \spi_tx_data_reg_reg[59]_0\(34),
      R => \^rst\
    );
\spi_tx_data_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(3),
      Q => \spi_tx_data_reg_reg[59]_0\(35),
      R => \^rst\
    );
\spi_tx_data_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(4),
      Q => \spi_tx_data_reg_reg[59]_0\(36),
      R => \^rst\
    );
\spi_tx_data_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(5),
      Q => \spi_tx_data_reg_reg[59]_0\(37),
      R => \^rst\
    );
\spi_tx_data_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(6),
      Q => \spi_tx_data_reg_reg[59]_0\(38),
      R => \^rst\
    );
\spi_tx_data_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(7),
      Q => \spi_tx_data_reg_reg[59]_0\(39),
      R => \^rst\
    );
\spi_tx_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(3),
      Q => \spi_tx_data_reg_reg[59]_0\(3),
      R => \^rst\
    );
\spi_tx_data_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(8),
      Q => \spi_tx_data_reg_reg[59]_0\(40),
      R => \^rst\
    );
\spi_tx_data_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(9),
      Q => \spi_tx_data_reg_reg[59]_0\(41),
      R => \^rst\
    );
\spi_tx_data_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(10),
      Q => \spi_tx_data_reg_reg[59]_0\(42),
      R => \^rst\
    );
\spi_tx_data_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(11),
      Q => \spi_tx_data_reg_reg[59]_0\(43),
      R => \^rst\
    );
\spi_tx_data_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(12),
      Q => \spi_tx_data_reg_reg[59]_0\(44),
      R => \^rst\
    );
\spi_tx_data_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(13),
      Q => \spi_tx_data_reg_reg[59]_0\(45),
      R => \^rst\
    );
\spi_tx_data_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(14),
      Q => \spi_tx_data_reg_reg[59]_0\(46),
      R => \^rst\
    );
\spi_tx_data_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(15),
      Q => \spi_tx_data_reg_reg[59]_0\(47),
      R => \^rst\
    );
\spi_tx_data_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(16),
      Q => \spi_tx_data_reg_reg[59]_0\(48),
      R => \^rst\
    );
\spi_tx_data_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(17),
      Q => \spi_tx_data_reg_reg[59]_0\(49),
      R => \^rst\
    );
\spi_tx_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(4),
      Q => \spi_tx_data_reg_reg[59]_0\(4),
      R => \^rst\
    );
\spi_tx_data_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(18),
      Q => \spi_tx_data_reg_reg[59]_0\(50),
      R => \^rst\
    );
\spi_tx_data_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(19),
      Q => \spi_tx_data_reg_reg[59]_0\(51),
      R => \^rst\
    );
\spi_tx_data_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(20),
      Q => \spi_tx_data_reg_reg[59]_0\(52),
      R => \^rst\
    );
\spi_tx_data_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(21),
      Q => \spi_tx_data_reg_reg[59]_0\(53),
      R => \^rst\
    );
\spi_tx_data_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(22),
      Q => \spi_tx_data_reg_reg[59]_0\(54),
      R => \^rst\
    );
\spi_tx_data_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(23),
      Q => \spi_tx_data_reg_reg[59]_0\(55),
      R => \^rst\
    );
\spi_tx_data_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(24),
      Q => \spi_tx_data_reg_reg[59]_0\(56),
      R => \^rst\
    );
\spi_tx_data_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(25),
      Q => \spi_tx_data_reg_reg[59]_0\(57),
      R => \^rst\
    );
\spi_tx_data_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(26),
      Q => \spi_tx_data_reg_reg[59]_0\(58),
      R => \^rst\
    );
\spi_tx_data_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_high_reg(27),
      Q => \spi_tx_data_reg_reg[59]_0\(59),
      R => \^rst\
    );
\spi_tx_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(5),
      Q => \spi_tx_data_reg_reg[59]_0\(5),
      R => \^rst\
    );
\spi_tx_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(6),
      Q => \spi_tx_data_reg_reg[59]_0\(6),
      R => \^rst\
    );
\spi_tx_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(7),
      Q => \spi_tx_data_reg_reg[59]_0\(7),
      R => \^rst\
    );
\spi_tx_data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(8),
      Q => \spi_tx_data_reg_reg[59]_0\(8),
      R => \^rst\
    );
\spi_tx_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => tx_low_reg(9),
      Q => \spi_tx_data_reg_reg[59]_0\(9),
      R => \^rst\
    );
spi_tx_last_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8308800"
    )
        port map (
      I0 => w_hold_data(1),
      I1 => \tx_low_reg[31]_i_4_n_0\,
      I2 => s00_axi_wdata(1),
      I3 => w_hold_strb(0),
      I4 => s00_axi_wstrb(0),
      O => result(1)
    );
spi_tx_last_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => spi_tx_valid_reg,
      D => result(1),
      Q => tx_last,
      R => \^rst\
    );
spi_tx_valid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080FF80808080"
    )
        port map (
      I0 => rx_pending_i_2_n_0,
      I1 => error_pending_reg_0,
      I2 => \spi_tx_data_reg[59]_i_3_n_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \^spi_tx_valid\,
      O => spi_tx_valid_reg_i_1_n_0
    );
spi_tx_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spi_tx_valid_reg_i_1_n_0,
      Q => \^spi_tx_valid\,
      R => \^rst\
    );
\tx_high_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \tx_high_reg[27]_i_2_n_0\,
      I1 => w_hold_strb(1),
      I2 => \tx_low_reg[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(1),
      I4 => aw_hold_valid0,
      O => \tx_high_reg[15]_i_1_n_0\
    );
\tx_high_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \tx_high_reg[27]_i_2_n_0\,
      I1 => w_hold_strb(2),
      I2 => \tx_low_reg[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(2),
      I4 => aw_hold_valid0,
      O => \tx_high_reg[23]_i_1_n_0\
    );
\tx_high_reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \tx_high_reg[27]_i_2_n_0\,
      I1 => w_hold_strb(3),
      I2 => \tx_low_reg[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(3),
      I4 => aw_hold_valid0,
      O => \tx_high_reg[27]_i_1_n_0\
    );
\tx_high_reg[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0000000C0A0A0"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_hold_addr(3),
      I2 => rx_pending_i_4_n_0,
      I3 => aw_hold_addr(4),
      I4 => rx_pending_i_5_n_0,
      I5 => s00_axi_awaddr(2),
      O => \tx_high_reg[27]_i_2_n_0\
    );
\tx_high_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => w_hold_strb(0),
      I1 => \tx_low_reg[31]_i_4_n_0\,
      I2 => s00_axi_wstrb(0),
      I3 => aw_hold_valid0,
      I4 => \tx_high_reg[27]_i_2_n_0\,
      O => \tx_high_reg[7]_i_1_n_0\
    );
\tx_high_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[7]_i_1_n_0\,
      D => \w_hold_data[0]_i_1_n_0\,
      Q => tx_high_reg(0),
      R => \^rst\
    );
\tx_high_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[15]_i_1_n_0\,
      D => p_3_in(2),
      Q => tx_high_reg(10),
      R => \^rst\
    );
\tx_high_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[15]_i_1_n_0\,
      D => p_3_in(3),
      Q => tx_high_reg(11),
      R => \^rst\
    );
\tx_high_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[15]_i_1_n_0\,
      D => p_3_in(4),
      Q => tx_high_reg(12),
      R => \^rst\
    );
\tx_high_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[15]_i_1_n_0\,
      D => p_3_in(5),
      Q => tx_high_reg(13),
      R => \^rst\
    );
\tx_high_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[15]_i_1_n_0\,
      D => p_3_in(6),
      Q => tx_high_reg(14),
      R => \^rst\
    );
\tx_high_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[15]_i_1_n_0\,
      D => p_3_in(7),
      Q => tx_high_reg(15),
      R => \^rst\
    );
\tx_high_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[23]_i_1_n_0\,
      D => p_5_in(0),
      Q => tx_high_reg(16),
      R => \^rst\
    );
\tx_high_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[23]_i_1_n_0\,
      D => p_5_in(1),
      Q => tx_high_reg(17),
      R => \^rst\
    );
\tx_high_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[23]_i_1_n_0\,
      D => p_5_in(2),
      Q => tx_high_reg(18),
      R => \^rst\
    );
\tx_high_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[23]_i_1_n_0\,
      D => p_5_in(3),
      Q => tx_high_reg(19),
      R => \^rst\
    );
\tx_high_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[7]_i_1_n_0\,
      D => \w_hold_data[1]_i_1_n_0\,
      Q => \^tx_high_reg_reg[1]_0\(1),
      R => \^rst\
    );
\tx_high_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[23]_i_1_n_0\,
      D => p_5_in(4),
      Q => tx_high_reg(20),
      R => \^rst\
    );
\tx_high_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[23]_i_1_n_0\,
      D => p_5_in(5),
      Q => tx_high_reg(21),
      R => \^rst\
    );
\tx_high_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[23]_i_1_n_0\,
      D => p_5_in(6),
      Q => tx_high_reg(22),
      R => \^rst\
    );
\tx_high_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[23]_i_1_n_0\,
      D => p_5_in(7),
      Q => tx_high_reg(23),
      R => \^rst\
    );
\tx_high_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[27]_i_1_n_0\,
      D => \tx_low_reg[24]_i_1_n_0\,
      Q => tx_high_reg(24),
      R => \^rst\
    );
\tx_high_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[27]_i_1_n_0\,
      D => \tx_low_reg[25]_i_1_n_0\,
      Q => tx_high_reg(25),
      R => \^rst\
    );
\tx_high_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[27]_i_1_n_0\,
      D => \tx_low_reg[26]_i_1_n_0\,
      Q => tx_high_reg(26),
      R => \^rst\
    );
\tx_high_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[27]_i_1_n_0\,
      D => \tx_low_reg[27]_i_1_n_0\,
      Q => tx_high_reg(27),
      R => \^rst\
    );
\tx_high_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[7]_i_1_n_0\,
      D => \w_hold_data[2]_i_1_n_0\,
      Q => tx_high_reg(2),
      R => \^rst\
    );
\tx_high_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[7]_i_1_n_0\,
      D => \w_hold_data[3]_i_1_n_0\,
      Q => tx_high_reg(3),
      R => \^rst\
    );
\tx_high_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[7]_i_1_n_0\,
      D => \w_hold_data[4]_i_1_n_0\,
      Q => tx_high_reg(4),
      R => \^rst\
    );
\tx_high_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[7]_i_1_n_0\,
      D => \tx_low_reg[5]_i_1_n_0\,
      Q => tx_high_reg(5),
      R => \^rst\
    );
\tx_high_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[7]_i_1_n_0\,
      D => \tx_low_reg[6]_i_1_n_0\,
      Q => tx_high_reg(6),
      R => \^rst\
    );
\tx_high_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[7]_i_1_n_0\,
      D => \tx_low_reg[7]_i_2_n_0\,
      Q => tx_high_reg(7),
      R => \^rst\
    );
\tx_high_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[15]_i_1_n_0\,
      D => p_3_in(0),
      Q => tx_high_reg(8),
      R => \^rst\
    );
\tx_high_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_high_reg[15]_i_1_n_0\,
      D => p_3_in(1),
      Q => tx_high_reg(9),
      R => \^rst\
    );
\tx_low_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(10),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(10),
      O => p_3_in(2)
    );
\tx_low_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(11),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(11),
      O => p_3_in(3)
    );
\tx_low_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(12),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(12),
      O => p_3_in(4)
    );
\tx_low_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(13),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(13),
      O => p_3_in(5)
    );
\tx_low_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(14),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(14),
      O => p_3_in(6)
    );
\tx_low_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \tx_low_reg[31]_i_3_n_0\,
      I1 => w_hold_strb(1),
      I2 => \tx_low_reg[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(1),
      I4 => aw_hold_valid0,
      O => \tx_low_reg[15]_i_1_n_0\
    );
\tx_low_reg[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(15),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(15),
      O => p_3_in(7)
    );
\tx_low_reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(16),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(16),
      O => p_5_in(0)
    );
\tx_low_reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(17),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(17),
      O => p_5_in(1)
    );
\tx_low_reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(18),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(18),
      O => p_5_in(2)
    );
\tx_low_reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(19),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(19),
      O => p_5_in(3)
    );
\tx_low_reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(20),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(20),
      O => p_5_in(4)
    );
\tx_low_reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(21),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(21),
      O => p_5_in(5)
    );
\tx_low_reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(22),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(22),
      O => p_5_in(6)
    );
\tx_low_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \tx_low_reg[31]_i_3_n_0\,
      I1 => w_hold_strb(2),
      I2 => \tx_low_reg[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(2),
      I4 => aw_hold_valid0,
      O => \tx_low_reg[23]_i_1_n_0\
    );
\tx_low_reg[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(23),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(23),
      O => p_5_in(7)
    );
\tx_low_reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(24),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(24),
      O => \tx_low_reg[24]_i_1_n_0\
    );
\tx_low_reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(25),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(25),
      O => \tx_low_reg[25]_i_1_n_0\
    );
\tx_low_reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(26),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(26),
      O => \tx_low_reg[26]_i_1_n_0\
    );
\tx_low_reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(27),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(27),
      O => \tx_low_reg[27]_i_1_n_0\
    );
\tx_low_reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(28),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(28),
      O => \tx_low_reg[28]_i_1_n_0\
    );
\tx_low_reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(29),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(29),
      O => \tx_low_reg[29]_i_1_n_0\
    );
\tx_low_reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(30),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(30),
      O => \tx_low_reg[30]_i_1_n_0\
    );
\tx_low_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \tx_low_reg[31]_i_3_n_0\,
      I1 => w_hold_strb(3),
      I2 => \tx_low_reg[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(3),
      I4 => aw_hold_valid0,
      O => \tx_low_reg[31]_i_1_n_0\
    );
\tx_low_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(31),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(31),
      O => \tx_low_reg[31]_i_2_n_0\
    );
\tx_low_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101000051015"
    )
        port map (
      I0 => rx_pending_i_4_n_0,
      I1 => aw_hold_addr(4),
      I2 => rx_pending_i_5_n_0,
      I3 => s00_axi_awaddr(2),
      I4 => aw_hold_addr(3),
      I5 => s00_axi_awaddr(1),
      O => \tx_low_reg[31]_i_3_n_0\
    );
\tx_low_reg[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => w_hold_valid_reg_n_0,
      I1 => \^axi_bvalid_reg_0\,
      I2 => s00_axi_wvalid,
      O => \tx_low_reg[31]_i_4_n_0\
    );
\tx_low_reg[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EE00E0"
    )
        port map (
      I0 => w_hold_valid_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_bvalid_reg_0\,
      I4 => aw_hold_valid,
      O => aw_hold_valid0
    );
\tx_low_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(5),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(5),
      O => \tx_low_reg[5]_i_1_n_0\
    );
\tx_low_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(6),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(6),
      O => \tx_low_reg[6]_i_1_n_0\
    );
\tx_low_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => w_hold_strb(0),
      I1 => \tx_low_reg[31]_i_4_n_0\,
      I2 => s00_axi_wstrb(0),
      I3 => aw_hold_valid0,
      I4 => \tx_low_reg[31]_i_3_n_0\,
      O => \tx_low_reg[7]_i_1_n_0\
    );
\tx_low_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(7),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(7),
      O => \tx_low_reg[7]_i_2_n_0\
    );
\tx_low_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(8),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(8),
      O => p_3_in(0)
    );
\tx_low_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(9),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(9),
      O => p_3_in(1)
    );
\tx_low_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[7]_i_1_n_0\,
      D => \w_hold_data[0]_i_1_n_0\,
      Q => tx_low_reg(0),
      R => \^rst\
    );
\tx_low_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[15]_i_1_n_0\,
      D => p_3_in(2),
      Q => tx_low_reg(10),
      R => \^rst\
    );
\tx_low_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[15]_i_1_n_0\,
      D => p_3_in(3),
      Q => tx_low_reg(11),
      R => \^rst\
    );
\tx_low_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[15]_i_1_n_0\,
      D => p_3_in(4),
      Q => tx_low_reg(12),
      R => \^rst\
    );
\tx_low_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[15]_i_1_n_0\,
      D => p_3_in(5),
      Q => tx_low_reg(13),
      R => \^rst\
    );
\tx_low_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[15]_i_1_n_0\,
      D => p_3_in(6),
      Q => tx_low_reg(14),
      R => \^rst\
    );
\tx_low_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[15]_i_1_n_0\,
      D => p_3_in(7),
      Q => tx_low_reg(15),
      R => \^rst\
    );
\tx_low_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[23]_i_1_n_0\,
      D => p_5_in(0),
      Q => tx_low_reg(16),
      R => \^rst\
    );
\tx_low_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[23]_i_1_n_0\,
      D => p_5_in(1),
      Q => tx_low_reg(17),
      R => \^rst\
    );
\tx_low_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[23]_i_1_n_0\,
      D => p_5_in(2),
      Q => tx_low_reg(18),
      R => \^rst\
    );
\tx_low_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[23]_i_1_n_0\,
      D => p_5_in(3),
      Q => tx_low_reg(19),
      R => \^rst\
    );
\tx_low_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[7]_i_1_n_0\,
      D => \w_hold_data[1]_i_1_n_0\,
      Q => \^tx_high_reg_reg[1]_0\(0),
      R => \^rst\
    );
\tx_low_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[23]_i_1_n_0\,
      D => p_5_in(4),
      Q => tx_low_reg(20),
      R => \^rst\
    );
\tx_low_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[23]_i_1_n_0\,
      D => p_5_in(5),
      Q => tx_low_reg(21),
      R => \^rst\
    );
\tx_low_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[23]_i_1_n_0\,
      D => p_5_in(6),
      Q => tx_low_reg(22),
      R => \^rst\
    );
\tx_low_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[23]_i_1_n_0\,
      D => p_5_in(7),
      Q => tx_low_reg(23),
      R => \^rst\
    );
\tx_low_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[31]_i_1_n_0\,
      D => \tx_low_reg[24]_i_1_n_0\,
      Q => tx_low_reg(24),
      R => \^rst\
    );
\tx_low_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[31]_i_1_n_0\,
      D => \tx_low_reg[25]_i_1_n_0\,
      Q => tx_low_reg(25),
      R => \^rst\
    );
\tx_low_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[31]_i_1_n_0\,
      D => \tx_low_reg[26]_i_1_n_0\,
      Q => tx_low_reg(26),
      R => \^rst\
    );
\tx_low_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[31]_i_1_n_0\,
      D => \tx_low_reg[27]_i_1_n_0\,
      Q => tx_low_reg(27),
      R => \^rst\
    );
\tx_low_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[31]_i_1_n_0\,
      D => \tx_low_reg[28]_i_1_n_0\,
      Q => tx_low_reg(28),
      R => \^rst\
    );
\tx_low_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[31]_i_1_n_0\,
      D => \tx_low_reg[29]_i_1_n_0\,
      Q => tx_low_reg(29),
      R => \^rst\
    );
\tx_low_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[7]_i_1_n_0\,
      D => \w_hold_data[2]_i_1_n_0\,
      Q => tx_low_reg(2),
      R => \^rst\
    );
\tx_low_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[31]_i_1_n_0\,
      D => \tx_low_reg[30]_i_1_n_0\,
      Q => tx_low_reg(30),
      R => \^rst\
    );
\tx_low_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[31]_i_1_n_0\,
      D => \tx_low_reg[31]_i_2_n_0\,
      Q => tx_low_reg(31),
      R => \^rst\
    );
\tx_low_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[7]_i_1_n_0\,
      D => \w_hold_data[3]_i_1_n_0\,
      Q => tx_low_reg(3),
      R => \^rst\
    );
\tx_low_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[7]_i_1_n_0\,
      D => \w_hold_data[4]_i_1_n_0\,
      Q => tx_low_reg(4),
      R => \^rst\
    );
\tx_low_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[7]_i_1_n_0\,
      D => \tx_low_reg[5]_i_1_n_0\,
      Q => tx_low_reg(5),
      R => \^rst\
    );
\tx_low_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[7]_i_1_n_0\,
      D => \tx_low_reg[6]_i_1_n_0\,
      Q => tx_low_reg(6),
      R => \^rst\
    );
\tx_low_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[7]_i_1_n_0\,
      D => \tx_low_reg[7]_i_2_n_0\,
      Q => tx_low_reg(7),
      R => \^rst\
    );
\tx_low_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[15]_i_1_n_0\,
      D => p_3_in(0),
      Q => tx_low_reg(8),
      R => \^rst\
    );
\tx_low_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \tx_low_reg[15]_i_1_n_0\,
      D => p_3_in(1),
      Q => tx_low_reg(9),
      R => \^rst\
    );
\w_hold_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => s00_axi_wvalid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => w_hold_valid_reg_n_0,
      I4 => w_hold_data(0),
      O => \w_hold_data[0]_i_1_n_0\
    );
\w_hold_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => s00_axi_wvalid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => w_hold_valid_reg_n_0,
      I4 => w_hold_data(1),
      O => \w_hold_data[1]_i_1_n_0\
    );
\w_hold_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => s00_axi_wvalid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => w_hold_valid_reg_n_0,
      I4 => w_hold_data(2),
      O => \w_hold_data[2]_i_1_n_0\
    );
\w_hold_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_bvalid_reg_0\,
      I2 => w_hold_valid_reg_n_0,
      O => \w_hold_data[31]_i_1_n_0\
    );
\w_hold_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => s00_axi_wvalid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => w_hold_valid_reg_n_0,
      I4 => w_hold_data(3),
      O => \w_hold_data[3]_i_1_n_0\
    );
\w_hold_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_data(4),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wdata(4),
      O => \w_hold_data[4]_i_1_n_0\
    );
\w_hold_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \w_hold_data[0]_i_1_n_0\,
      Q => w_hold_data(0),
      R => \^rst\
    );
\w_hold_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => w_hold_data(10),
      R => \^rst\
    );
\w_hold_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => w_hold_data(11),
      R => \^rst\
    );
\w_hold_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => w_hold_data(12),
      R => \^rst\
    );
\w_hold_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => w_hold_data(13),
      R => \^rst\
    );
\w_hold_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => w_hold_data(14),
      R => \^rst\
    );
\w_hold_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => w_hold_data(15),
      R => \^rst\
    );
\w_hold_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => w_hold_data(16),
      R => \^rst\
    );
\w_hold_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => w_hold_data(17),
      R => \^rst\
    );
\w_hold_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => w_hold_data(18),
      R => \^rst\
    );
\w_hold_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => w_hold_data(19),
      R => \^rst\
    );
\w_hold_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \w_hold_data[1]_i_1_n_0\,
      Q => w_hold_data(1),
      R => \^rst\
    );
\w_hold_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => w_hold_data(20),
      R => \^rst\
    );
\w_hold_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => w_hold_data(21),
      R => \^rst\
    );
\w_hold_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => w_hold_data(22),
      R => \^rst\
    );
\w_hold_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => w_hold_data(23),
      R => \^rst\
    );
\w_hold_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => w_hold_data(24),
      R => \^rst\
    );
\w_hold_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => w_hold_data(25),
      R => \^rst\
    );
\w_hold_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => w_hold_data(26),
      R => \^rst\
    );
\w_hold_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => w_hold_data(27),
      R => \^rst\
    );
\w_hold_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => w_hold_data(28),
      R => \^rst\
    );
\w_hold_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => w_hold_data(29),
      R => \^rst\
    );
\w_hold_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \w_hold_data[2]_i_1_n_0\,
      Q => w_hold_data(2),
      R => \^rst\
    );
\w_hold_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => w_hold_data(30),
      R => \^rst\
    );
\w_hold_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => w_hold_data(31),
      R => \^rst\
    );
\w_hold_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \w_hold_data[3]_i_1_n_0\,
      Q => w_hold_data(3),
      R => \^rst\
    );
\w_hold_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \w_hold_data[4]_i_1_n_0\,
      Q => w_hold_data(4),
      R => \^rst\
    );
\w_hold_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => w_hold_data(5),
      R => \^rst\
    );
\w_hold_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => w_hold_data(6),
      R => \^rst\
    );
\w_hold_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => w_hold_data(7),
      R => \^rst\
    );
\w_hold_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => w_hold_data(8),
      R => \^rst\
    );
\w_hold_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \w_hold_data[31]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => w_hold_data(9),
      R => \^rst\
    );
\w_hold_strb[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_wvalid,
      I2 => \^axi_bvalid_reg_0\,
      I3 => w_hold_valid_reg_n_0,
      I4 => w_hold_strb(0),
      O => strb(0)
    );
\w_hold_strb[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_strb(1),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wstrb(1),
      O => strb(1)
    );
\w_hold_strb[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_strb(2),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wstrb(2),
      O => strb(2)
    );
\w_hold_strb[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => w_hold_strb(3),
      I1 => w_hold_valid_reg_n_0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wstrb(3),
      O => strb(3)
    );
\w_hold_strb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => strb(0),
      Q => w_hold_strb(0),
      R => \^rst\
    );
\w_hold_strb_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => strb(1),
      Q => w_hold_strb(1),
      R => \^rst\
    );
\w_hold_strb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => strb(2),
      Q => w_hold_strb(2),
      R => \^rst\
    );
\w_hold_strb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => strb(3),
      Q => w_hold_strb(3),
      R => \^rst\
    );
w_hold_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88880000888800A8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => w_hold_valid_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_bvalid_reg_0\,
      I5 => aw_hold_valid,
      O => w_hold_valid_i_1_n_0
    );
w_hold_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => w_hold_valid_i_1_n_0,
      Q => w_hold_valid_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_24_SPI_Master_AXI is
  port (
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awready : out STD_LOGIC;
    axi_bvalid_reg : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    sclk : out STD_LOGIC;
    mosi : out STD_LOGIC;
    ss_n : out STD_LOGIC;
    ldb : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    miso : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_Master_AXI_0_24_SPI_Master_AXI : entity is "SPI_Master_AXI";
end design_1_SPI_Master_AXI_0_24_SPI_Master_AXI;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_24_SPI_Master_AXI is
  signal axi_rdata : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ldb_done : STD_LOGIC;
  signal ldb_trigger_reg : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal rx_data_reg : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal rx_low_reg : STD_LOGIC;
  signal rx_pending : STD_LOGIC;
  signal spi_done : STD_LOGIC;
  signal spi_rx_valid : STD_LOGIC;
  signal spi_tx_data : STD_LOGIC_VECTOR ( 59 to 59 );
  signal spi_tx_data_reg : STD_LOGIC_VECTOR ( 58 downto 0 );
  signal spi_tx_valid : STD_LOGIC;
  signal tx_high_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tx_last : STD_LOGIC;
  signal tx_low_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal u_axi_slave_n_11 : STD_LOGIC;
  signal u_ldb_controller_n_2 : STD_LOGIC;
  signal u_ldb_controller_n_3 : STD_LOGIC;
  signal u_ldb_controller_n_4 : STD_LOGIC;
  signal u_spi_master_n_10 : STD_LOGIC;
  signal u_spi_master_n_5 : STD_LOGIC;
  signal u_spi_master_n_6 : STD_LOGIC;
  signal u_spi_master_n_8 : STD_LOGIC;
begin
u_axi_slave: entity work.design_1_SPI_Master_AXI_0_24_SPI_Master_AXI_slave_lite_v1_0_S00_AXI
     port map (
      D(0) => axi_rdata(1),
      E(0) => rx_low_reg,
      Q(1) => u_spi_master_n_5,
      Q(0) => u_spi_master_n_6,
      axi_bvalid_reg_0 => axi_bvalid_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      error_pending_reg_0 => u_spi_master_n_8,
      error_pending_reg_1 => u_ldb_controller_n_4,
      ldb_done => ldb_done,
      ldb_trigger_reg => ldb_trigger_reg,
      ldb_trigger_reg_reg_0 => u_ldb_controller_n_2,
      rst => rst,
      \rx_count_reg_reg[1]_0\ => u_axi_slave_n_11,
      \rx_high_reg_reg[27]_0\(59 downto 0) => rx_data_reg(59 downto 0),
      rx_pending => rx_pending,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      spi_done => spi_done,
      spi_rx_valid => spi_rx_valid,
      \spi_tx_data_reg_reg[59]_0\(59) => spi_tx_data(59),
      \spi_tx_data_reg_reg[59]_0\(58 downto 0) => spi_tx_data_reg(58 downto 0),
      spi_tx_valid => spi_tx_valid,
      \tx_high_reg_reg[1]_0\(1) => tx_high_reg(1),
      \tx_high_reg_reg[1]_0\(0) => tx_low_reg(1),
      tx_last => tx_last
    );
u_ldb_controller: entity work.design_1_SPI_Master_AXI_0_24_LDB_Controller_bg
     port map (
      Q(0) => u_spi_master_n_6,
      ldb => ldb,
      ldb_done => ldb_done,
      ldb_reg_reg_0 => u_spi_master_n_10,
      ldb_trigger_reg => ldb_trigger_reg,
      rst => rst,
      s00_axi_aclk => s00_axi_aclk,
      spi_tx_valid => spi_tx_valid,
      \state_reg[1]_0\ => u_ldb_controller_n_3,
      \state_reg[1]_1\ => u_ldb_controller_n_4,
      \state_reg[2]_0\ => u_ldb_controller_n_2
    );
u_spi_master: entity work.design_1_SPI_Master_AXI_0_24_SPI_Master
     port map (
      D(0) => axi_rdata(1),
      E(0) => rx_low_reg,
      \FSM_onehot_state_reg[0]_0\ => u_spi_master_n_10,
      Q(1) => u_spi_master_n_5,
      Q(0) => u_spi_master_n_6,
      \axi_rdata_reg[1]\ => u_axi_slave_n_11,
      \axi_rdata_reg[1]_0\(1) => tx_high_reg(1),
      \axi_rdata_reg[1]_0\(0) => tx_low_reg(1),
      error_pending_reg => u_ldb_controller_n_2,
      ldb_reg_reg => u_ldb_controller_n_3,
      miso => miso,
      mosi => mosi,
      mosi_reg_reg_0(59) => spi_tx_data(59),
      mosi_reg_reg_0(58 downto 0) => spi_tx_data_reg(58 downto 0),
      rst => rst,
      \rx_data_reg_reg[59]_0\(59 downto 0) => rx_data_reg(59 downto 0),
      rx_pending => rx_pending,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      sclk => sclk,
      spi_done => spi_done,
      spi_rx_valid => spi_rx_valid,
      spi_tx_valid => spi_tx_valid,
      spi_tx_valid_reg_reg => u_spi_master_n_8,
      ss_n => ss_n,
      tx_last => tx_last
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_24 is
  port (
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    ss_n : out STD_LOGIC;
    ldb : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SPI_Master_AXI_0_24 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SPI_Master_AXI_0_24 : entity is "design_1_SPI_Master_AXI_0_24,SPI_Master_AXI,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_SPI_Master_AXI_0_24 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_SPI_Master_AXI_0_24 : entity is "SPI_Master_AXI,Vivado 2025.1";
end design_1_SPI_Master_AXI_0_24;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_24 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s00_axi_aclk : signal is "slave S00_AXI_CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_mode of s00_axi_aresetn : signal is "slave S00_AXI_RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_mode of s00_axi_awaddr : signal is "slave S00_AXI";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_SPI_Master_AXI_0_24_SPI_Master_AXI
     port map (
      axi_bvalid_reg => s00_axi_bvalid,
      axi_rvalid_reg => s00_axi_rvalid,
      ldb => ldb,
      miso => miso,
      mosi => mosi,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sclk => sclk,
      ss_n => ss_n
    );
end STRUCTURE;
