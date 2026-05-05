-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue May  5 09:33:16 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yousef/Vivado_workspace/RFIC_SPI/RFIC_SPI.gen/sources_1/bd/design_1/ip/design_1_SPI_Master_AXI_0_20/design_1_SPI_Master_AXI_0_20_sim_netlist.vhdl
-- Design      : design_1_SPI_Master_AXI_0_20
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_20_SPI_Master is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sclk_reg_reg_0 : out STD_LOGIC;
    mosi : out STD_LOGIC;
    ss_n : out STD_LOGIC;
    ldb : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 59 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    spi_start : in STD_LOGIC;
    miso : in STD_LOGIC;
    mosi_reg_reg_0 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \tx_shift_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_Master_AXI_0_20_SPI_Master : entity is "SPI_Master";
end design_1_SPI_Master_AXI_0_20_SPI_Master;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_20_SPI_Master is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal bit_count : STD_LOGIC;
  signal \bit_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count[5]_i_3_n_0\ : STD_LOGIC;
  signal \bit_count[5]_i_5_n_0\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[5]\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal clk_count : STD_LOGIC;
  signal \clk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_count_reg_n_0_[2]\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal \^ldb\ : STD_LOGIC;
  signal ldb_reg_i_1_n_0 : STD_LOGIC;
  signal ldb_reg_i_2_n_0 : STD_LOGIC;
  signal mosi_reg : STD_LOGIC;
  signal mosi_reg_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rx_shift : STD_LOGIC;
  signal rx_shift0_in : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal sclk_prev : STD_LOGIC;
  signal sclk_reg_i_1_n_0 : STD_LOGIC;
  signal sclk_reg_i_2_n_0 : STD_LOGIC;
  signal \^sclk_reg_reg_0\ : STD_LOGIC;
  signal \^ss_n\ : STD_LOGIC;
  signal ss_reg_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_shift : STD_LOGIC_VECTOR ( 58 downto 0 );
  signal \tx_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[16]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[17]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[18]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[19]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[20]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[23]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[24]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[25]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[26]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[27]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[28]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[29]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[30]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[31]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[32]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[33]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[34]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[35]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[36]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[37]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[38]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[39]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[40]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[41]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[42]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[43]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[44]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[45]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[46]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[47]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[48]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[49]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[50]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[51]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[52]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[53]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[54]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[55]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[56]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[57]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[9]\ : STD_LOGIC;
  signal \wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,transfer:001,finish:010,wait_before_ldb:011,ldb_low:100,ldb_high:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,transfer:001,finish:010,wait_before_ldb:011,ldb_low:100,ldb_high:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,transfer:001,finish:010,wait_before_ldb:011,ldb_low:100,ldb_high:101,";
  attribute SOFT_HLUTNM of \bit_count[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_count[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bit_count[5]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_count[5]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ldb_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of mosi_reg_i_3 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rx_shift[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \rx_shift[10]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_shift[11]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_shift[12]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_shift[13]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_shift[14]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_shift[15]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_shift[16]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_shift[17]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_shift[18]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_shift[19]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_shift[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \rx_shift[20]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rx_shift[21]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rx_shift[22]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_shift[23]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_shift[24]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rx_shift[25]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rx_shift[26]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rx_shift[27]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rx_shift[28]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_shift[29]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_shift[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rx_shift[30]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_shift[31]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_shift[32]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_shift[33]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_shift[34]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_shift[35]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_shift[36]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rx_shift[37]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rx_shift[38]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rx_shift[39]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rx_shift[3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rx_shift[40]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rx_shift[41]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rx_shift[42]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rx_shift[43]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rx_shift[44]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rx_shift[45]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rx_shift[46]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rx_shift[47]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rx_shift[48]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rx_shift[49]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rx_shift[4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rx_shift[50]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rx_shift[51]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rx_shift[52]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rx_shift[53]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rx_shift[54]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rx_shift[55]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rx_shift[56]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rx_shift[57]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rx_shift[58]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rx_shift[59]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rx_shift[5]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rx_shift[6]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rx_shift[7]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rx_shift[8]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rx_shift[9]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of sclk_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ss_reg_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_shift[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tx_shift[10]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \tx_shift[11]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \tx_shift[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \tx_shift[13]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \tx_shift[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \tx_shift[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tx_shift[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tx_shift[17]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tx_shift[18]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tx_shift[19]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tx_shift[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tx_shift[20]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tx_shift[21]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tx_shift[22]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tx_shift[23]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tx_shift[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tx_shift[25]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tx_shift[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tx_shift[27]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tx_shift[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tx_shift[29]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_shift[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tx_shift[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_shift[31]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_shift[32]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_shift[33]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_shift[34]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_shift[35]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_shift[36]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_shift[37]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_shift[38]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_shift[39]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_shift[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \tx_shift[40]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_shift[41]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_shift[42]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_shift[43]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tx_shift[44]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tx_shift[45]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_shift[46]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_shift[47]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_shift[48]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_shift[49]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_shift[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \tx_shift[50]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_shift[51]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_shift[52]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_shift[53]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_shift[54]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_shift[55]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_shift[56]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_shift[57]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_shift[58]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_shift[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \tx_shift[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \tx_shift[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \tx_shift[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \tx_shift[9]_i_1\ : label is "soft_lutpair34";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(59 downto 0) <= \^q\(59 downto 0);
  ldb <= \^ldb\;
  sclk_reg_reg_0 <= \^sclk_reg_reg_0\;
  ss_n <= \^ss_n\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F70"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F80"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      I5 => ldb_reg_i_2_n_0,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => state(1),
      I1 => spi_start,
      I2 => state(0),
      I3 => state(2),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABA0000"
    )
        port map (
      I0 => state(0),
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => \wait_count_reg_n_0_[2]\,
      I3 => \wait_count_reg_n_0_[0]\,
      I4 => state(2),
      I5 => state(1),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[4]\,
      I1 => \bit_count_reg_n_0_[5]\,
      I2 => \^sclk_reg_reg_0\,
      I3 => sclk_prev,
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[2]\,
      I3 => \bit_count_reg_n_0_[3]\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => SR(0)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => SR(0)
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \bit_count_reg_n_0_[0]\,
      O => \bit_count[0]_i_1_n_0\
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \bit_count_reg_n_0_[0]\,
      I3 => \bit_count_reg_n_0_[1]\,
      O => \bit_count[1]_i_1_n_0\
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[0]\,
      I4 => \bit_count_reg_n_0_[2]\,
      O => \bit_count[2]_i_1_n_0\
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444440000000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \bit_count_reg_n_0_[0]\,
      I3 => \bit_count_reg_n_0_[1]\,
      I4 => \bit_count_reg_n_0_[2]\,
      I5 => \bit_count_reg_n_0_[3]\,
      O => \bit_count[3]_i_1_n_0\
    );
\bit_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444440000000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \bit_count_reg_n_0_[2]\,
      I3 => \bit_count[4]_i_2_n_0\,
      I4 => \bit_count_reg_n_0_[3]\,
      I5 => \bit_count_reg_n_0_[4]\,
      O => \bit_count[4]_i_1_n_0\
    );
\bit_count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      I1 => \bit_count_reg_n_0_[1]\,
      O => \bit_count[4]_i_2_n_0\
    );
\bit_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAFFFF00000000"
    )
        port map (
      I0 => \bit_count[5]_i_3_n_0\,
      I1 => \bit_count_reg_n_0_[5]\,
      I2 => \^sclk_reg_reg_0\,
      I3 => sclk_prev,
      I4 => state(0),
      I5 => clk_count,
      O => bit_count
    );
\bit_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \bit_count[5]_i_5_n_0\,
      I3 => \bit_count_reg_n_0_[4]\,
      I4 => \bit_count_reg_n_0_[5]\,
      O => \bit_count[5]_i_2_n_0\
    );
\bit_count[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => sclk_prev,
      I1 => \^sclk_reg_reg_0\,
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[4]\,
      O => \bit_count[5]_i_3_n_0\
    );
\bit_count[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => clk_count
    );
\bit_count[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[3]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[2]\,
      O => \bit_count[5]_i_5_n_0\
    );
\bit_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => bit_count,
      D => \bit_count[0]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[0]\,
      R => SR(0)
    );
\bit_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => bit_count,
      D => \bit_count[1]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[1]\,
      R => SR(0)
    );
\bit_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => bit_count,
      D => \bit_count[2]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[2]\,
      R => SR(0)
    );
\bit_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => bit_count,
      D => \bit_count[3]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[3]\,
      R => SR(0)
    );
\bit_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => bit_count,
      D => \bit_count[4]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[4]\,
      R => SR(0)
    );
\bit_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => bit_count,
      D => \bit_count[5]_i_2_n_0\,
      Q => \bit_count_reg_n_0_[5]\,
      R => SR(0)
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3FE0332"
    )
        port map (
      I0 => spi_start,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \^d\(0),
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => \^d\(0),
      R => SR(0)
    );
\clk_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC02"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => \clk_count_reg_n_0_[0]\,
      O => \clk_count[0]_i_1_n_0\
    );
\clk_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF40008"
    )
        port map (
      I0 => \clk_count_reg_n_0_[0]\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \clk_count_reg_n_0_[1]\,
      O => \clk_count[1]_i_1_n_0\
    );
\clk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7000000080"
    )
        port map (
      I0 => \clk_count_reg_n_0_[0]\,
      I1 => \clk_count_reg_n_0_[1]\,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => \clk_count_reg_n_0_[2]\,
      O => \clk_count[2]_i_1_n_0\
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
      R => SR(0)
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
      R => SR(0)
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
      R => SR(0)
    );
done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => done_i_1_n_0,
      Q => \^d\(1),
      R => SR(0)
    );
ldb_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF004F"
    )
        port map (
      I0 => state(1),
      I1 => ldb_reg_i_2_n_0,
      I2 => state(2),
      I3 => state(0),
      I4 => \^ldb\,
      O => ldb_reg_i_1_n_0
    );
ldb_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \wait_count_reg_n_0_[1]\,
      I1 => \wait_count_reg_n_0_[2]\,
      I2 => \wait_count_reg_n_0_[0]\,
      O => ldb_reg_i_2_n_0
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
      S => SR(0)
    );
mosi_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040004000F0000"
    )
        port map (
      I0 => \^sclk_reg_reg_0\,
      I1 => sclk_prev,
      I2 => state(1),
      I3 => state(2),
      I4 => spi_start,
      I5 => state(0),
      O => mosi_reg
    );
mosi_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => p_0_in,
      I1 => mosi_reg_reg_0(27),
      I2 => state(0),
      O => mosi_reg_i_3_n_0
    );
mosi_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => mosi_reg_i_3_n_0,
      Q => mosi,
      R => SR(0)
    );
\rx_shift[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => miso,
      O => rx_shift0_in(0)
    );
\rx_shift[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(9),
      O => rx_shift0_in(10)
    );
\rx_shift[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(10),
      O => rx_shift0_in(11)
    );
\rx_shift[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(11),
      O => rx_shift0_in(12)
    );
\rx_shift[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(12),
      O => rx_shift0_in(13)
    );
\rx_shift[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(13),
      O => rx_shift0_in(14)
    );
\rx_shift[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(14),
      O => rx_shift0_in(15)
    );
\rx_shift[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(15),
      O => rx_shift0_in(16)
    );
\rx_shift[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(16),
      O => rx_shift0_in(17)
    );
\rx_shift[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(17),
      O => rx_shift0_in(18)
    );
\rx_shift[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(18),
      O => rx_shift0_in(19)
    );
\rx_shift[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(0),
      O => rx_shift0_in(1)
    );
\rx_shift[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(19),
      O => rx_shift0_in(20)
    );
\rx_shift[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(20),
      O => rx_shift0_in(21)
    );
\rx_shift[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(21),
      O => rx_shift0_in(22)
    );
\rx_shift[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(22),
      O => rx_shift0_in(23)
    );
\rx_shift[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(23),
      O => rx_shift0_in(24)
    );
\rx_shift[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(24),
      O => rx_shift0_in(25)
    );
\rx_shift[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(25),
      O => rx_shift0_in(26)
    );
\rx_shift[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(26),
      O => rx_shift0_in(27)
    );
\rx_shift[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(27),
      O => rx_shift0_in(28)
    );
\rx_shift[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(28),
      O => rx_shift0_in(29)
    );
\rx_shift[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(1),
      O => rx_shift0_in(2)
    );
\rx_shift[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(29),
      O => rx_shift0_in(30)
    );
\rx_shift[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(30),
      O => rx_shift0_in(31)
    );
\rx_shift[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(31),
      O => rx_shift0_in(32)
    );
\rx_shift[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(32),
      O => rx_shift0_in(33)
    );
\rx_shift[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(33),
      O => rx_shift0_in(34)
    );
\rx_shift[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(34),
      O => rx_shift0_in(35)
    );
\rx_shift[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(35),
      O => rx_shift0_in(36)
    );
\rx_shift[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(36),
      O => rx_shift0_in(37)
    );
\rx_shift[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(37),
      O => rx_shift0_in(38)
    );
\rx_shift[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(38),
      O => rx_shift0_in(39)
    );
\rx_shift[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(2),
      O => rx_shift0_in(3)
    );
\rx_shift[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(39),
      O => rx_shift0_in(40)
    );
\rx_shift[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(40),
      O => rx_shift0_in(41)
    );
\rx_shift[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(41),
      O => rx_shift0_in(42)
    );
\rx_shift[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(42),
      O => rx_shift0_in(43)
    );
\rx_shift[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(43),
      O => rx_shift0_in(44)
    );
\rx_shift[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(44),
      O => rx_shift0_in(45)
    );
\rx_shift[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(45),
      O => rx_shift0_in(46)
    );
\rx_shift[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(46),
      O => rx_shift0_in(47)
    );
\rx_shift[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(47),
      O => rx_shift0_in(48)
    );
\rx_shift[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(48),
      O => rx_shift0_in(49)
    );
\rx_shift[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(3),
      O => rx_shift0_in(4)
    );
\rx_shift[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(49),
      O => rx_shift0_in(50)
    );
\rx_shift[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(50),
      O => rx_shift0_in(51)
    );
\rx_shift[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(51),
      O => rx_shift0_in(52)
    );
\rx_shift[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(52),
      O => rx_shift0_in(53)
    );
\rx_shift[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(53),
      O => rx_shift0_in(54)
    );
\rx_shift[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(54),
      O => rx_shift0_in(55)
    );
\rx_shift[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(55),
      O => rx_shift0_in(56)
    );
\rx_shift[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(56),
      O => rx_shift0_in(57)
    );
\rx_shift[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(57),
      O => rx_shift0_in(58)
    );
\rx_shift[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040004000F0000"
    )
        port map (
      I0 => sclk_prev,
      I1 => \^sclk_reg_reg_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => spi_start,
      I5 => state(0),
      O => rx_shift
    );
\rx_shift[59]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(58),
      O => rx_shift0_in(59)
    );
\rx_shift[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(4),
      O => rx_shift0_in(5)
    );
\rx_shift[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(5),
      O => rx_shift0_in(6)
    );
\rx_shift[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(6),
      O => rx_shift0_in(7)
    );
\rx_shift[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(7),
      O => rx_shift0_in(8)
    );
\rx_shift[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^q\(8),
      O => rx_shift0_in(9)
    );
\rx_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(0),
      Q => \^q\(0),
      R => SR(0)
    );
\rx_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(10),
      Q => \^q\(10),
      R => SR(0)
    );
\rx_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(11),
      Q => \^q\(11),
      R => SR(0)
    );
\rx_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(12),
      Q => \^q\(12),
      R => SR(0)
    );
\rx_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(13),
      Q => \^q\(13),
      R => SR(0)
    );
\rx_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(14),
      Q => \^q\(14),
      R => SR(0)
    );
\rx_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(15),
      Q => \^q\(15),
      R => SR(0)
    );
\rx_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(16),
      Q => \^q\(16),
      R => SR(0)
    );
\rx_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(17),
      Q => \^q\(17),
      R => SR(0)
    );
\rx_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(18),
      Q => \^q\(18),
      R => SR(0)
    );
\rx_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(19),
      Q => \^q\(19),
      R => SR(0)
    );
\rx_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(1),
      Q => \^q\(1),
      R => SR(0)
    );
\rx_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(20),
      Q => \^q\(20),
      R => SR(0)
    );
\rx_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(21),
      Q => \^q\(21),
      R => SR(0)
    );
\rx_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(22),
      Q => \^q\(22),
      R => SR(0)
    );
\rx_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(23),
      Q => \^q\(23),
      R => SR(0)
    );
\rx_shift_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(24),
      Q => \^q\(24),
      R => SR(0)
    );
\rx_shift_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(25),
      Q => \^q\(25),
      R => SR(0)
    );
\rx_shift_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(26),
      Q => \^q\(26),
      R => SR(0)
    );
\rx_shift_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(27),
      Q => \^q\(27),
      R => SR(0)
    );
\rx_shift_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(28),
      Q => \^q\(28),
      R => SR(0)
    );
\rx_shift_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(29),
      Q => \^q\(29),
      R => SR(0)
    );
\rx_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(2),
      Q => \^q\(2),
      R => SR(0)
    );
\rx_shift_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(30),
      Q => \^q\(30),
      R => SR(0)
    );
\rx_shift_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(31),
      Q => \^q\(31),
      R => SR(0)
    );
\rx_shift_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(32),
      Q => \^q\(32),
      R => SR(0)
    );
\rx_shift_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(33),
      Q => \^q\(33),
      R => SR(0)
    );
\rx_shift_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(34),
      Q => \^q\(34),
      R => SR(0)
    );
\rx_shift_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(35),
      Q => \^q\(35),
      R => SR(0)
    );
\rx_shift_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(36),
      Q => \^q\(36),
      R => SR(0)
    );
\rx_shift_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(37),
      Q => \^q\(37),
      R => SR(0)
    );
\rx_shift_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(38),
      Q => \^q\(38),
      R => SR(0)
    );
\rx_shift_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(39),
      Q => \^q\(39),
      R => SR(0)
    );
\rx_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(3),
      Q => \^q\(3),
      R => SR(0)
    );
\rx_shift_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(40),
      Q => \^q\(40),
      R => SR(0)
    );
\rx_shift_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(41),
      Q => \^q\(41),
      R => SR(0)
    );
\rx_shift_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(42),
      Q => \^q\(42),
      R => SR(0)
    );
\rx_shift_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(43),
      Q => \^q\(43),
      R => SR(0)
    );
\rx_shift_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(44),
      Q => \^q\(44),
      R => SR(0)
    );
\rx_shift_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(45),
      Q => \^q\(45),
      R => SR(0)
    );
\rx_shift_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(46),
      Q => \^q\(46),
      R => SR(0)
    );
\rx_shift_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(47),
      Q => \^q\(47),
      R => SR(0)
    );
\rx_shift_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(48),
      Q => \^q\(48),
      R => SR(0)
    );
\rx_shift_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(49),
      Q => \^q\(49),
      R => SR(0)
    );
\rx_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(4),
      Q => \^q\(4),
      R => SR(0)
    );
\rx_shift_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(50),
      Q => \^q\(50),
      R => SR(0)
    );
\rx_shift_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(51),
      Q => \^q\(51),
      R => SR(0)
    );
\rx_shift_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(52),
      Q => \^q\(52),
      R => SR(0)
    );
\rx_shift_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(53),
      Q => \^q\(53),
      R => SR(0)
    );
\rx_shift_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(54),
      Q => \^q\(54),
      R => SR(0)
    );
\rx_shift_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(55),
      Q => \^q\(55),
      R => SR(0)
    );
\rx_shift_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(56),
      Q => \^q\(56),
      R => SR(0)
    );
\rx_shift_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(57),
      Q => \^q\(57),
      R => SR(0)
    );
\rx_shift_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(58),
      Q => \^q\(58),
      R => SR(0)
    );
\rx_shift_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(59),
      Q => \^q\(59),
      R => SR(0)
    );
\rx_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(5),
      Q => \^q\(5),
      R => SR(0)
    );
\rx_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(6),
      Q => \^q\(6),
      R => SR(0)
    );
\rx_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(7),
      Q => \^q\(7),
      R => SR(0)
    );
\rx_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(8),
      Q => \^q\(8),
      R => SR(0)
    );
\rx_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_shift,
      D => rx_shift0_in(9),
      Q => \^q\(9),
      R => SR(0)
    );
sclk_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^sclk_reg_reg_0\,
      Q => sclk_prev,
      R => SR(0)
    );
sclk_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDF00200"
    )
        port map (
      I0 => sclk_reg_i_2_n_0,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \^sclk_reg_reg_0\,
      O => sclk_reg_i_1_n_0
    );
sclk_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \clk_count_reg_n_0_[2]\,
      I1 => \clk_count_reg_n_0_[1]\,
      I2 => \clk_count_reg_n_0_[0]\,
      O => sclk_reg_i_2_n_0
    );
sclk_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sclk_reg_i_1_n_0,
      Q => \^sclk_reg_reg_0\,
      R => SR(0)
    );
ss_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB000B"
    )
        port map (
      I0 => state(1),
      I1 => spi_start,
      I2 => state(0),
      I3 => state(2),
      I4 => \^ss_n\,
      O => ss_reg_i_1_n_0
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
      S => SR(0)
    );
\tx_shift[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(0),
      I1 => \tx_shift_reg[31]_0\(0),
      O => tx_shift(0)
    );
\tx_shift[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[9]\,
      I1 => \tx_shift_reg[31]_0\(10),
      I2 => state(0),
      O => tx_shift(10)
    );
\tx_shift[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[10]\,
      I1 => \tx_shift_reg[31]_0\(11),
      I2 => state(0),
      O => tx_shift(11)
    );
\tx_shift[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[11]\,
      I1 => \tx_shift_reg[31]_0\(12),
      I2 => state(0),
      O => tx_shift(12)
    );
\tx_shift[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[12]\,
      I1 => \tx_shift_reg[31]_0\(13),
      I2 => state(0),
      O => tx_shift(13)
    );
\tx_shift[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[13]\,
      I1 => \tx_shift_reg[31]_0\(14),
      I2 => state(0),
      O => tx_shift(14)
    );
\tx_shift[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[14]\,
      I1 => \tx_shift_reg[31]_0\(15),
      I2 => state(0),
      O => tx_shift(15)
    );
\tx_shift[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[15]\,
      I1 => \tx_shift_reg[31]_0\(16),
      I2 => state(0),
      O => tx_shift(16)
    );
\tx_shift[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[16]\,
      I1 => \tx_shift_reg[31]_0\(17),
      I2 => state(0),
      O => tx_shift(17)
    );
\tx_shift[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[17]\,
      I1 => \tx_shift_reg[31]_0\(18),
      I2 => state(0),
      O => tx_shift(18)
    );
\tx_shift[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[18]\,
      I1 => \tx_shift_reg[31]_0\(19),
      I2 => state(0),
      O => tx_shift(19)
    );
\tx_shift[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[0]\,
      I1 => \tx_shift_reg[31]_0\(1),
      I2 => state(0),
      O => tx_shift(1)
    );
\tx_shift[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[19]\,
      I1 => \tx_shift_reg[31]_0\(20),
      I2 => state(0),
      O => tx_shift(20)
    );
\tx_shift[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[20]\,
      I1 => \tx_shift_reg[31]_0\(21),
      I2 => state(0),
      O => tx_shift(21)
    );
\tx_shift[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[21]\,
      I1 => \tx_shift_reg[31]_0\(22),
      I2 => state(0),
      O => tx_shift(22)
    );
\tx_shift[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[22]\,
      I1 => \tx_shift_reg[31]_0\(23),
      I2 => state(0),
      O => tx_shift(23)
    );
\tx_shift[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[23]\,
      I1 => \tx_shift_reg[31]_0\(24),
      I2 => state(0),
      O => tx_shift(24)
    );
\tx_shift[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[24]\,
      I1 => \tx_shift_reg[31]_0\(25),
      I2 => state(0),
      O => tx_shift(25)
    );
\tx_shift[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[25]\,
      I1 => \tx_shift_reg[31]_0\(26),
      I2 => state(0),
      O => tx_shift(26)
    );
\tx_shift[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[26]\,
      I1 => \tx_shift_reg[31]_0\(27),
      I2 => state(0),
      O => tx_shift(27)
    );
\tx_shift[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[27]\,
      I1 => \tx_shift_reg[31]_0\(28),
      I2 => state(0),
      O => tx_shift(28)
    );
\tx_shift[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[28]\,
      I1 => \tx_shift_reg[31]_0\(29),
      I2 => state(0),
      O => tx_shift(29)
    );
\tx_shift[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[1]\,
      I1 => \tx_shift_reg[31]_0\(2),
      I2 => state(0),
      O => tx_shift(2)
    );
\tx_shift[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[29]\,
      I1 => \tx_shift_reg[31]_0\(30),
      I2 => state(0),
      O => tx_shift(30)
    );
\tx_shift[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[30]\,
      I1 => \tx_shift_reg[31]_0\(31),
      I2 => state(0),
      O => tx_shift(31)
    );
\tx_shift[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[31]\,
      I1 => mosi_reg_reg_0(0),
      I2 => state(0),
      O => tx_shift(32)
    );
\tx_shift[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[32]\,
      I1 => mosi_reg_reg_0(1),
      I2 => state(0),
      O => tx_shift(33)
    );
\tx_shift[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[33]\,
      I1 => mosi_reg_reg_0(2),
      I2 => state(0),
      O => tx_shift(34)
    );
\tx_shift[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[34]\,
      I1 => mosi_reg_reg_0(3),
      I2 => state(0),
      O => tx_shift(35)
    );
\tx_shift[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[35]\,
      I1 => mosi_reg_reg_0(4),
      I2 => state(0),
      O => tx_shift(36)
    );
\tx_shift[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[36]\,
      I1 => mosi_reg_reg_0(5),
      I2 => state(0),
      O => tx_shift(37)
    );
\tx_shift[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[37]\,
      I1 => mosi_reg_reg_0(6),
      I2 => state(0),
      O => tx_shift(38)
    );
\tx_shift[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[38]\,
      I1 => mosi_reg_reg_0(7),
      I2 => state(0),
      O => tx_shift(39)
    );
\tx_shift[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[2]\,
      I1 => \tx_shift_reg[31]_0\(3),
      I2 => state(0),
      O => tx_shift(3)
    );
\tx_shift[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[39]\,
      I1 => mosi_reg_reg_0(8),
      I2 => state(0),
      O => tx_shift(40)
    );
\tx_shift[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[40]\,
      I1 => mosi_reg_reg_0(9),
      I2 => state(0),
      O => tx_shift(41)
    );
\tx_shift[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[41]\,
      I1 => mosi_reg_reg_0(10),
      I2 => state(0),
      O => tx_shift(42)
    );
\tx_shift[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[42]\,
      I1 => mosi_reg_reg_0(11),
      I2 => state(0),
      O => tx_shift(43)
    );
\tx_shift[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[43]\,
      I1 => mosi_reg_reg_0(12),
      I2 => state(0),
      O => tx_shift(44)
    );
\tx_shift[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[44]\,
      I1 => mosi_reg_reg_0(13),
      I2 => state(0),
      O => tx_shift(45)
    );
\tx_shift[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[45]\,
      I1 => mosi_reg_reg_0(14),
      I2 => state(0),
      O => tx_shift(46)
    );
\tx_shift[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[46]\,
      I1 => mosi_reg_reg_0(15),
      I2 => state(0),
      O => tx_shift(47)
    );
\tx_shift[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[47]\,
      I1 => mosi_reg_reg_0(16),
      I2 => state(0),
      O => tx_shift(48)
    );
\tx_shift[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[48]\,
      I1 => mosi_reg_reg_0(17),
      I2 => state(0),
      O => tx_shift(49)
    );
\tx_shift[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[3]\,
      I1 => \tx_shift_reg[31]_0\(4),
      I2 => state(0),
      O => tx_shift(4)
    );
\tx_shift[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[49]\,
      I1 => mosi_reg_reg_0(18),
      I2 => state(0),
      O => tx_shift(50)
    );
\tx_shift[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[50]\,
      I1 => mosi_reg_reg_0(19),
      I2 => state(0),
      O => tx_shift(51)
    );
\tx_shift[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[51]\,
      I1 => mosi_reg_reg_0(20),
      I2 => state(0),
      O => tx_shift(52)
    );
\tx_shift[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[52]\,
      I1 => mosi_reg_reg_0(21),
      I2 => state(0),
      O => tx_shift(53)
    );
\tx_shift[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[53]\,
      I1 => mosi_reg_reg_0(22),
      I2 => state(0),
      O => tx_shift(54)
    );
\tx_shift[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[54]\,
      I1 => mosi_reg_reg_0(23),
      I2 => state(0),
      O => tx_shift(55)
    );
\tx_shift[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[55]\,
      I1 => mosi_reg_reg_0(24),
      I2 => state(0),
      O => tx_shift(56)
    );
\tx_shift[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[56]\,
      I1 => mosi_reg_reg_0(25),
      I2 => state(0),
      O => tx_shift(57)
    );
\tx_shift[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[57]\,
      I1 => mosi_reg_reg_0(26),
      I2 => state(0),
      O => tx_shift(58)
    );
\tx_shift[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[4]\,
      I1 => \tx_shift_reg[31]_0\(5),
      I2 => state(0),
      O => tx_shift(5)
    );
\tx_shift[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[5]\,
      I1 => \tx_shift_reg[31]_0\(6),
      I2 => state(0),
      O => tx_shift(6)
    );
\tx_shift[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[6]\,
      I1 => \tx_shift_reg[31]_0\(7),
      I2 => state(0),
      O => tx_shift(7)
    );
\tx_shift[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[7]\,
      I1 => \tx_shift_reg[31]_0\(8),
      I2 => state(0),
      O => tx_shift(8)
    );
\tx_shift[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \tx_shift_reg_n_0_[8]\,
      I1 => \tx_shift_reg[31]_0\(9),
      I2 => state(0),
      O => tx_shift(9)
    );
\tx_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(0),
      Q => \tx_shift_reg_n_0_[0]\,
      R => SR(0)
    );
\tx_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(10),
      Q => \tx_shift_reg_n_0_[10]\,
      R => SR(0)
    );
\tx_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(11),
      Q => \tx_shift_reg_n_0_[11]\,
      R => SR(0)
    );
\tx_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(12),
      Q => \tx_shift_reg_n_0_[12]\,
      R => SR(0)
    );
\tx_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(13),
      Q => \tx_shift_reg_n_0_[13]\,
      R => SR(0)
    );
\tx_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(14),
      Q => \tx_shift_reg_n_0_[14]\,
      R => SR(0)
    );
\tx_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(15),
      Q => \tx_shift_reg_n_0_[15]\,
      R => SR(0)
    );
\tx_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(16),
      Q => \tx_shift_reg_n_0_[16]\,
      R => SR(0)
    );
\tx_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(17),
      Q => \tx_shift_reg_n_0_[17]\,
      R => SR(0)
    );
\tx_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(18),
      Q => \tx_shift_reg_n_0_[18]\,
      R => SR(0)
    );
\tx_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(19),
      Q => \tx_shift_reg_n_0_[19]\,
      R => SR(0)
    );
\tx_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(1),
      Q => \tx_shift_reg_n_0_[1]\,
      R => SR(0)
    );
\tx_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(20),
      Q => \tx_shift_reg_n_0_[20]\,
      R => SR(0)
    );
\tx_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(21),
      Q => \tx_shift_reg_n_0_[21]\,
      R => SR(0)
    );
\tx_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(22),
      Q => \tx_shift_reg_n_0_[22]\,
      R => SR(0)
    );
\tx_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(23),
      Q => \tx_shift_reg_n_0_[23]\,
      R => SR(0)
    );
\tx_shift_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(24),
      Q => \tx_shift_reg_n_0_[24]\,
      R => SR(0)
    );
\tx_shift_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(25),
      Q => \tx_shift_reg_n_0_[25]\,
      R => SR(0)
    );
\tx_shift_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(26),
      Q => \tx_shift_reg_n_0_[26]\,
      R => SR(0)
    );
\tx_shift_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(27),
      Q => \tx_shift_reg_n_0_[27]\,
      R => SR(0)
    );
\tx_shift_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(28),
      Q => \tx_shift_reg_n_0_[28]\,
      R => SR(0)
    );
\tx_shift_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(29),
      Q => \tx_shift_reg_n_0_[29]\,
      R => SR(0)
    );
\tx_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(2),
      Q => \tx_shift_reg_n_0_[2]\,
      R => SR(0)
    );
\tx_shift_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(30),
      Q => \tx_shift_reg_n_0_[30]\,
      R => SR(0)
    );
\tx_shift_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(31),
      Q => \tx_shift_reg_n_0_[31]\,
      R => SR(0)
    );
\tx_shift_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(32),
      Q => \tx_shift_reg_n_0_[32]\,
      R => SR(0)
    );
\tx_shift_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(33),
      Q => \tx_shift_reg_n_0_[33]\,
      R => SR(0)
    );
\tx_shift_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(34),
      Q => \tx_shift_reg_n_0_[34]\,
      R => SR(0)
    );
\tx_shift_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(35),
      Q => \tx_shift_reg_n_0_[35]\,
      R => SR(0)
    );
\tx_shift_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(36),
      Q => \tx_shift_reg_n_0_[36]\,
      R => SR(0)
    );
\tx_shift_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(37),
      Q => \tx_shift_reg_n_0_[37]\,
      R => SR(0)
    );
\tx_shift_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(38),
      Q => \tx_shift_reg_n_0_[38]\,
      R => SR(0)
    );
\tx_shift_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(39),
      Q => \tx_shift_reg_n_0_[39]\,
      R => SR(0)
    );
\tx_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(3),
      Q => \tx_shift_reg_n_0_[3]\,
      R => SR(0)
    );
\tx_shift_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(40),
      Q => \tx_shift_reg_n_0_[40]\,
      R => SR(0)
    );
\tx_shift_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(41),
      Q => \tx_shift_reg_n_0_[41]\,
      R => SR(0)
    );
\tx_shift_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(42),
      Q => \tx_shift_reg_n_0_[42]\,
      R => SR(0)
    );
\tx_shift_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(43),
      Q => \tx_shift_reg_n_0_[43]\,
      R => SR(0)
    );
\tx_shift_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(44),
      Q => \tx_shift_reg_n_0_[44]\,
      R => SR(0)
    );
\tx_shift_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(45),
      Q => \tx_shift_reg_n_0_[45]\,
      R => SR(0)
    );
\tx_shift_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(46),
      Q => \tx_shift_reg_n_0_[46]\,
      R => SR(0)
    );
\tx_shift_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(47),
      Q => \tx_shift_reg_n_0_[47]\,
      R => SR(0)
    );
\tx_shift_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(48),
      Q => \tx_shift_reg_n_0_[48]\,
      R => SR(0)
    );
\tx_shift_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(49),
      Q => \tx_shift_reg_n_0_[49]\,
      R => SR(0)
    );
\tx_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(4),
      Q => \tx_shift_reg_n_0_[4]\,
      R => SR(0)
    );
\tx_shift_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(50),
      Q => \tx_shift_reg_n_0_[50]\,
      R => SR(0)
    );
\tx_shift_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(51),
      Q => \tx_shift_reg_n_0_[51]\,
      R => SR(0)
    );
\tx_shift_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(52),
      Q => \tx_shift_reg_n_0_[52]\,
      R => SR(0)
    );
\tx_shift_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(53),
      Q => \tx_shift_reg_n_0_[53]\,
      R => SR(0)
    );
\tx_shift_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(54),
      Q => \tx_shift_reg_n_0_[54]\,
      R => SR(0)
    );
\tx_shift_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(55),
      Q => \tx_shift_reg_n_0_[55]\,
      R => SR(0)
    );
\tx_shift_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(56),
      Q => \tx_shift_reg_n_0_[56]\,
      R => SR(0)
    );
\tx_shift_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(57),
      Q => \tx_shift_reg_n_0_[57]\,
      R => SR(0)
    );
\tx_shift_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(58),
      Q => p_0_in,
      R => SR(0)
    );
\tx_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(5),
      Q => \tx_shift_reg_n_0_[5]\,
      R => SR(0)
    );
\tx_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(6),
      Q => \tx_shift_reg_n_0_[6]\,
      R => SR(0)
    );
\tx_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(7),
      Q => \tx_shift_reg_n_0_[7]\,
      R => SR(0)
    );
\tx_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(8),
      Q => \tx_shift_reg_n_0_[8]\,
      R => SR(0)
    );
\tx_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => mosi_reg,
      D => tx_shift(9),
      Q => \tx_shift_reg_n_0_[9]\,
      R => SR(0)
    );
\wait_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF000F0000BB000"
    )
        port map (
      I0 => \wait_count_reg_n_0_[1]\,
      I1 => \wait_count_reg_n_0_[2]\,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => \wait_count_reg_n_0_[0]\,
      O => \wait_count[0]_i_1_n_0\
    );
\wait_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD4C0280"
    )
        port map (
      I0 => \wait_count_reg_n_0_[0]\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \wait_count_reg_n_0_[1]\,
      O => \wait_count[1]_i_1_n_0\
    );
\wait_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF660F000088000"
    )
        port map (
      I0 => \wait_count_reg_n_0_[0]\,
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => \wait_count_reg_n_0_[2]\,
      O => \wait_count[2]_i_1_n_0\
    );
\wait_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \wait_count[0]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[0]\,
      R => SR(0)
    );
\wait_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \wait_count[1]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[1]\,
      R => SR(0)
    );
\wait_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \wait_count[2]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[2]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_20_SPI_Master_AXI_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    spi_start : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_reg2_reg[27]_0\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg5_reg[27]_0\ : in STD_LOGIC_VECTOR ( 59 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_Master_AXI_0_20_SPI_Master_AXI_slave_lite_v1_0_S00_AXI : entity is "SPI_Master_AXI_slave_lite_v1_0_S00_AXI";
end design_1_SPI_Master_AXI_0_20_SPI_Master_AXI_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_20_SPI_Master_AXI_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg2_reg[27]_0\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal spi_start_pulse_i_1_n_0 : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_write[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair0";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  SR(0) <= \^sr\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
  \slv_reg2_reg[27]_0\(27 downto 0) <= \^slv_reg2_reg[27]_0\(27 downto 0);
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7F0F700"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I5 => axi_wready,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[2]_i_1_n_0\
    );
\FSM_onehot_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => axi_wready,
      S => \^sr\(0)
    );
\FSM_onehot_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[1]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\FSM_onehot_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[2]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFFFFFF"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7777F0000000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => \^sr\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_aresetn,
      I2 => state_read(0),
      I3 => \axi_araddr[4]_i_2_n_0\,
      I4 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_aresetn,
      I2 => state_read(0),
      I3 => \axi_araddr[4]_i_2_n_0\,
      I4 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_aresetn,
      I2 => state_read(0),
      I3 => \axi_araddr[4]_i_2_n_0\,
      I4 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(1),
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FFFF40554055"
    )
        port map (
      I0 => state_read(0),
      I1 => s00_axi_rready,
      I2 => \^axi_rvalid_reg_0\,
      I3 => state_read(1),
      I4 => s00_axi_arvalid,
      I5 => \^axi_arready_reg_0\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_aresetn,
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_aresetn,
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_aresetn,
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => '0'
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFEAEAFFFFEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \FSM_onehot_state_write_reg_n_0_[1]\,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABFF0000"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => axi_bvalid_i_2_n_0,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2FAAAAAAA"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => state_read(0),
      I3 => \^axi_arready_reg_0\,
      I4 => s00_axi_arvalid,
      I5 => state_read(1),
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => \^sr\(0)
    );
mosi_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg3_reg_n_0_[0]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(0),
      I5 => \^slv_reg2_reg[27]_0\(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[0]\,
      I1 => slv_reg7(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(0),
      I5 => slv_reg6(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10),
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => \^slv_reg2_reg[27]_0\(10),
      I2 => \^q\(10),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[10]\,
      I1 => slv_reg7(10),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(10),
      I5 => slv_reg6(10),
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(11),
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => \^slv_reg2_reg[27]_0\(11),
      I2 => \^q\(11),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[11]\,
      I1 => slv_reg7(11),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(11),
      I5 => slv_reg6(11),
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(12),
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => \^slv_reg2_reg[27]_0\(12),
      I2 => \^q\(12),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[12]\,
      I1 => slv_reg7(12),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(12),
      I5 => slv_reg6(12),
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(13),
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => \^slv_reg2_reg[27]_0\(13),
      I2 => \^q\(13),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[13]\,
      I1 => slv_reg7(13),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(13),
      I5 => slv_reg6(13),
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(14),
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => \^slv_reg2_reg[27]_0\(14),
      I2 => \^q\(14),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[14]\,
      I1 => slv_reg7(14),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(14),
      I5 => slv_reg6(14),
      O => \s00_axi_rdata[14]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(15),
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => \^slv_reg2_reg[27]_0\(15),
      I2 => \^q\(15),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[15]\,
      I1 => slv_reg7(15),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(15),
      I5 => slv_reg6(15),
      O => \s00_axi_rdata[15]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(16),
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => \^slv_reg2_reg[27]_0\(16),
      I2 => \^q\(16),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[16]\,
      I1 => slv_reg7(16),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(16),
      I5 => slv_reg6(16),
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(17),
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => \^slv_reg2_reg[27]_0\(17),
      I2 => \^q\(17),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[17]\,
      I1 => slv_reg7(17),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(17),
      I5 => slv_reg6(17),
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(18),
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => \^slv_reg2_reg[27]_0\(18),
      I2 => \^q\(18),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[18]\,
      I1 => slv_reg7(18),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(18),
      I5 => slv_reg6(18),
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(19),
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => \^slv_reg2_reg[27]_0\(19),
      I2 => \^q\(19),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[19]\,
      I1 => slv_reg7(19),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(19),
      I5 => slv_reg6(19),
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \slv_reg3_reg_n_0_[1]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(1),
      I5 => \^slv_reg2_reg[27]_0\(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[1]\,
      I1 => slv_reg7(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(1),
      I5 => slv_reg6(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(20),
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => \^slv_reg2_reg[27]_0\(20),
      I2 => \^q\(20),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[20]\,
      I1 => slv_reg7(20),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(20),
      I5 => slv_reg6(20),
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(21),
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => \^slv_reg2_reg[27]_0\(21),
      I2 => \^q\(21),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[21]\,
      I1 => slv_reg7(21),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(21),
      I5 => slv_reg6(21),
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(22),
      S => sel0(2)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => \^slv_reg2_reg[27]_0\(22),
      I2 => \^q\(22),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[22]\,
      I1 => slv_reg7(22),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(22),
      I5 => slv_reg6(22),
      O => \s00_axi_rdata[22]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(23),
      S => sel0(2)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => \^slv_reg2_reg[27]_0\(23),
      I2 => \^q\(23),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[23]\,
      I1 => slv_reg7(23),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(23),
      I5 => slv_reg6(23),
      O => \s00_axi_rdata[23]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(24),
      S => sel0(2)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => \^slv_reg2_reg[27]_0\(24),
      I2 => \^q\(24),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[24]\,
      I1 => slv_reg7(24),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(24),
      I5 => slv_reg6(24),
      O => \s00_axi_rdata[24]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(25),
      S => sel0(2)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => \^slv_reg2_reg[27]_0\(25),
      I2 => \^q\(25),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[25]\,
      I1 => slv_reg7(25),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(25),
      I5 => slv_reg6(25),
      O => \s00_axi_rdata[25]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(26),
      S => sel0(2)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => \^slv_reg2_reg[27]_0\(26),
      I2 => \^q\(26),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[26]\,
      I1 => slv_reg7(26),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(26),
      I5 => slv_reg6(26),
      O => \s00_axi_rdata[26]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(27),
      S => sel0(2)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => \^slv_reg2_reg[27]_0\(27),
      I2 => \^q\(27),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[27]\,
      I1 => slv_reg7(27),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(27),
      I5 => slv_reg6(27),
      O => \s00_axi_rdata[27]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(28),
      S => sel0(2)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => \slv_reg2_reg_n_0_[28]\,
      I2 => \^q\(28),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => slv_reg4(28),
      I1 => slv_reg6(28),
      I2 => slv_reg7(28),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[28]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(29),
      S => sel0(2)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => \slv_reg2_reg_n_0_[29]\,
      I2 => \^q\(29),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => slv_reg4(29),
      I1 => slv_reg6(29),
      I2 => slv_reg7(29),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => \^slv_reg2_reg[27]_0\(2),
      I2 => \^q\(2),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[2]\,
      I1 => slv_reg7(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(2),
      I5 => slv_reg6(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(30),
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => \slv_reg2_reg_n_0_[30]\,
      I2 => \^q\(30),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => slv_reg4(30),
      I1 => slv_reg6(30),
      I2 => slv_reg7(30),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[30]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(31),
      S => sel0(2)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => \slv_reg2_reg_n_0_[31]\,
      I2 => \^q\(31),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => slv_reg4(31),
      I1 => slv_reg6(31),
      I2 => slv_reg7(31),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[31]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => \^slv_reg2_reg[27]_0\(3),
      I2 => \^q\(3),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[3]\,
      I1 => slv_reg7(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(3),
      I5 => slv_reg6(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(4),
      I1 => \^slv_reg2_reg[27]_0\(4),
      I2 => \^q\(4),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[4]\,
      I1 => slv_reg7(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(4),
      I5 => slv_reg6(4),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(5),
      I1 => \^slv_reg2_reg[27]_0\(5),
      I2 => \^q\(5),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[5]\,
      I1 => slv_reg7(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(5),
      I5 => slv_reg6(5),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(6),
      I1 => \^slv_reg2_reg[27]_0\(6),
      I2 => \^q\(6),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[6]\,
      I1 => slv_reg7(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(6),
      I5 => slv_reg6(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => \^slv_reg2_reg[27]_0\(7),
      I2 => \^q\(7),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[7]\,
      I1 => slv_reg7(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(7),
      I5 => slv_reg6(7),
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(8),
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => \^slv_reg2_reg[27]_0\(8),
      I2 => \^q\(8),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[8]\,
      I1 => slv_reg7(8),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(8),
      I5 => slv_reg6(8),
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(9),
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => \^slv_reg2_reg[27]_0\(9),
      I2 => \^q\(9),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg5_reg_n_0_[9]\,
      I1 => slv_reg7(9),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg4(9),
      I5 => slv_reg6(9),
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(1),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => \^sr\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => \^sr\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => \^sr\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => \^sr\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => \^sr\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => \^sr\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => \^sr\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => \^sr\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => \^sr\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => \^sr\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => \^sr\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => \^sr\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => \^sr\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => \^sr\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => \^sr\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => \^sr\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => \^sr\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => \^sr\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => \^sr\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => \^sr\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => \^sr\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => \^sr\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => \^sr\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => \^sr\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => \^sr\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => \^sr\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => \^sr\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => \^sr\(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \^q\(20),
      R => \^sr\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \^q\(21),
      R => \^sr\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \^q\(22),
      R => \^sr\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \^q\(23),
      R => \^sr\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \^q\(24),
      R => \^sr\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \^q\(25),
      R => \^sr\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \^q\(26),
      R => \^sr\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \^q\(27),
      R => \^sr\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \^q\(28),
      R => \^sr\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \^q\(29),
      R => \^sr\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \^q\(30),
      R => \^sr\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \^q\(31),
      R => \^sr\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4703440000000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awaddr(1),
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => \slv_reg2[31]_i_3_n_0\,
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(2),
      O => \slv_reg2[31]_i_3_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^slv_reg2_reg[27]_0\(0),
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^slv_reg2_reg[27]_0\(10),
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^slv_reg2_reg[27]_0\(11),
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^slv_reg2_reg[27]_0\(12),
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^slv_reg2_reg[27]_0\(13),
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^slv_reg2_reg[27]_0\(14),
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^slv_reg2_reg[27]_0\(15),
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^slv_reg2_reg[27]_0\(16),
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^slv_reg2_reg[27]_0\(17),
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^slv_reg2_reg[27]_0\(18),
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^slv_reg2_reg[27]_0\(19),
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^slv_reg2_reg[27]_0\(1),
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^slv_reg2_reg[27]_0\(20),
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^slv_reg2_reg[27]_0\(21),
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^slv_reg2_reg[27]_0\(22),
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^slv_reg2_reg[27]_0\(23),
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^slv_reg2_reg[27]_0\(24),
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^slv_reg2_reg[27]_0\(25),
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^slv_reg2_reg[27]_0\(26),
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^slv_reg2_reg[27]_0\(27),
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^slv_reg2_reg[27]_0\(2),
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^slv_reg2_reg[27]_0\(3),
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^slv_reg2_reg[27]_0\(4),
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^slv_reg2_reg[27]_0\(5),
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^slv_reg2_reg[27]_0\(6),
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^slv_reg2_reg[27]_0\(7),
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^slv_reg2_reg[27]_0\(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^slv_reg2_reg[27]_0\(9),
      R => \^sr\(0)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(0),
      Q => slv_reg4(0),
      R => \^sr\(0)
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(10),
      Q => slv_reg4(10),
      R => \^sr\(0)
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(11),
      Q => slv_reg4(11),
      R => \^sr\(0)
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(12),
      Q => slv_reg4(12),
      R => \^sr\(0)
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(13),
      Q => slv_reg4(13),
      R => \^sr\(0)
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(14),
      Q => slv_reg4(14),
      R => \^sr\(0)
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(15),
      Q => slv_reg4(15),
      R => \^sr\(0)
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(16),
      Q => slv_reg4(16),
      R => \^sr\(0)
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(17),
      Q => slv_reg4(17),
      R => \^sr\(0)
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(18),
      Q => slv_reg4(18),
      R => \^sr\(0)
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(19),
      Q => slv_reg4(19),
      R => \^sr\(0)
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(1),
      Q => slv_reg4(1),
      R => \^sr\(0)
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(20),
      Q => slv_reg4(20),
      R => \^sr\(0)
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(21),
      Q => slv_reg4(21),
      R => \^sr\(0)
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(22),
      Q => slv_reg4(22),
      R => \^sr\(0)
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(23),
      Q => slv_reg4(23),
      R => \^sr\(0)
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(24),
      Q => slv_reg4(24),
      R => \^sr\(0)
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(25),
      Q => slv_reg4(25),
      R => \^sr\(0)
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(26),
      Q => slv_reg4(26),
      R => \^sr\(0)
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(27),
      Q => slv_reg4(27),
      R => \^sr\(0)
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(28),
      Q => slv_reg4(28),
      R => \^sr\(0)
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(29),
      Q => slv_reg4(29),
      R => \^sr\(0)
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(2),
      Q => slv_reg4(2),
      R => \^sr\(0)
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(30),
      Q => slv_reg4(30),
      R => \^sr\(0)
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(31),
      Q => slv_reg4(31),
      R => \^sr\(0)
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(3),
      Q => slv_reg4(3),
      R => \^sr\(0)
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(4),
      Q => slv_reg4(4),
      R => \^sr\(0)
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(5),
      Q => slv_reg4(5),
      R => \^sr\(0)
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(6),
      Q => slv_reg4(6),
      R => \^sr\(0)
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(7),
      Q => slv_reg4(7),
      R => \^sr\(0)
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(8),
      Q => slv_reg4(8),
      R => \^sr\(0)
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(9),
      Q => slv_reg4(9),
      R => \^sr\(0)
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(32),
      Q => \slv_reg5_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(42),
      Q => \slv_reg5_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(43),
      Q => \slv_reg5_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(44),
      Q => \slv_reg5_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(45),
      Q => \slv_reg5_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(46),
      Q => \slv_reg5_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(47),
      Q => \slv_reg5_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(48),
      Q => \slv_reg5_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(49),
      Q => \slv_reg5_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(50),
      Q => \slv_reg5_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(51),
      Q => \slv_reg5_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(33),
      Q => \slv_reg5_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(52),
      Q => \slv_reg5_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(53),
      Q => \slv_reg5_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(54),
      Q => \slv_reg5_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(55),
      Q => \slv_reg5_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(56),
      Q => \slv_reg5_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(57),
      Q => \slv_reg5_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(58),
      Q => \slv_reg5_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(59),
      Q => \slv_reg5_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(34),
      Q => \slv_reg5_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(35),
      Q => \slv_reg5_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(36),
      Q => \slv_reg5_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(37),
      Q => \slv_reg5_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(38),
      Q => \slv_reg5_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(39),
      Q => \slv_reg5_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(40),
      Q => \slv_reg5_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[27]_0\(41),
      Q => \slv_reg5_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A0000000A000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(1),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(2),
      O => \slv_reg6[31]_i_2_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => \^sr\(0)
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => \^sr\(0)
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => \^sr\(0)
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => \^sr\(0)
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => \^sr\(0)
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => \^sr\(0)
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => \^sr\(0)
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => \^sr\(0)
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => \^sr\(0)
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => \^sr\(0)
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => \^sr\(0)
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => \^sr\(0)
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => \^sr\(0)
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => \^sr\(0)
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => \^sr\(0)
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => \^sr\(0)
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => \^sr\(0)
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => \^sr\(0)
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => \^sr\(0)
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => \^sr\(0)
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => \^sr\(0)
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => \^sr\(0)
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => \^sr\(0)
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => \^sr\(0)
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => \^sr\(0)
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => \^sr\(0)
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => \^sr\(0)
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => \^sr\(0)
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => \^sr\(0)
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => \^sr\(0)
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => \^sr\(0)
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => \^sr\(0)
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => \^sr\(0)
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => \^sr\(0)
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => \^sr\(0)
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => \^sr\(0)
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => \^sr\(0)
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => \^sr\(0)
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => \^sr\(0)
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => \^sr\(0)
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => \^sr\(0)
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => \^sr\(0)
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => \^sr\(0)
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => \^sr\(0)
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => \^sr\(0)
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => \^sr\(0)
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => \^sr\(0)
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => \^sr\(0)
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => \^sr\(0)
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => \^sr\(0)
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => \^sr\(0)
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => \^sr\(0)
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => \^sr\(0)
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => \^sr\(0)
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => \^sr\(0)
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => \^sr\(0)
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => \^sr\(0)
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => \^sr\(0)
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => \^sr\(0)
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => \^sr\(0)
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => \^sr\(0)
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => \^sr\(0)
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => \^sr\(0)
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => \^sr\(0)
    );
spi_start_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A2000000000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_aresetn,
      I5 => s00_axi_wdata(0),
      O => spi_start_pulse_i_1_n_0
    );
spi_start_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spi_start_pulse_i_1_n_0,
      Q => spi_start,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_20_SPI_Master_AXI is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    sclk_reg_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mosi : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    ss_n : out STD_LOGIC;
    ldb : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    miso : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_Master_AXI_0_20_SPI_Master_AXI : entity is "SPI_Master_AXI";
end design_1_SPI_Master_AXI_0_20_SPI_Master_AXI;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_20_SPI_Master_AXI is
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_72 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_73 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_74 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_75 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_76 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_77 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_78 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_79 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_80 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_81 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_82 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_83 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_84 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_85 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_86 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_87 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_88 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_89 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_90 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_91 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_92 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_93 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_94 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_95 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_96 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_97 : STD_LOGIC;
  signal SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_98 : STD_LOGIC;
  signal busy : STD_LOGIC;
  signal done : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal rx_shift : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal spi_start : STD_LOGIC;
  signal spi_tx_data : STD_LOGIC_VECTOR ( 59 to 59 );
begin
SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst: entity work.design_1_SPI_Master_AXI_0_20_SPI_Master_AXI_slave_lite_v1_0_S00_AXI
     port map (
      D(1) => done,
      D(0) => busy,
      Q(31 downto 0) => slv_reg1(31 downto 0),
      SR(0) => rst,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg2_reg[27]_0\(27) => spi_tx_data(59),
      \slv_reg2_reg[27]_0\(26) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_72,
      \slv_reg2_reg[27]_0\(25) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_73,
      \slv_reg2_reg[27]_0\(24) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_74,
      \slv_reg2_reg[27]_0\(23) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_75,
      \slv_reg2_reg[27]_0\(22) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_76,
      \slv_reg2_reg[27]_0\(21) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_77,
      \slv_reg2_reg[27]_0\(20) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_78,
      \slv_reg2_reg[27]_0\(19) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_79,
      \slv_reg2_reg[27]_0\(18) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_80,
      \slv_reg2_reg[27]_0\(17) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_81,
      \slv_reg2_reg[27]_0\(16) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_82,
      \slv_reg2_reg[27]_0\(15) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_83,
      \slv_reg2_reg[27]_0\(14) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_84,
      \slv_reg2_reg[27]_0\(13) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_85,
      \slv_reg2_reg[27]_0\(12) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_86,
      \slv_reg2_reg[27]_0\(11) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_87,
      \slv_reg2_reg[27]_0\(10) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_88,
      \slv_reg2_reg[27]_0\(9) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_89,
      \slv_reg2_reg[27]_0\(8) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_90,
      \slv_reg2_reg[27]_0\(7) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_91,
      \slv_reg2_reg[27]_0\(6) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_92,
      \slv_reg2_reg[27]_0\(5) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_93,
      \slv_reg2_reg[27]_0\(4) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_94,
      \slv_reg2_reg[27]_0\(3) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_95,
      \slv_reg2_reg[27]_0\(2) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_96,
      \slv_reg2_reg[27]_0\(1) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_97,
      \slv_reg2_reg[27]_0\(0) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_98,
      \slv_reg5_reg[27]_0\(59 downto 0) => rx_shift(59 downto 0),
      spi_start => spi_start
    );
u_spi_master: entity work.design_1_SPI_Master_AXI_0_20_SPI_Master
     port map (
      D(1) => done,
      D(0) => busy,
      Q(59 downto 0) => rx_shift(59 downto 0),
      SR(0) => rst,
      ldb => ldb,
      miso => miso,
      mosi => mosi,
      mosi_reg_reg_0(27) => spi_tx_data(59),
      mosi_reg_reg_0(26) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_72,
      mosi_reg_reg_0(25) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_73,
      mosi_reg_reg_0(24) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_74,
      mosi_reg_reg_0(23) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_75,
      mosi_reg_reg_0(22) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_76,
      mosi_reg_reg_0(21) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_77,
      mosi_reg_reg_0(20) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_78,
      mosi_reg_reg_0(19) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_79,
      mosi_reg_reg_0(18) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_80,
      mosi_reg_reg_0(17) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_81,
      mosi_reg_reg_0(16) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_82,
      mosi_reg_reg_0(15) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_83,
      mosi_reg_reg_0(14) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_84,
      mosi_reg_reg_0(13) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_85,
      mosi_reg_reg_0(12) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_86,
      mosi_reg_reg_0(11) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_87,
      mosi_reg_reg_0(10) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_88,
      mosi_reg_reg_0(9) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_89,
      mosi_reg_reg_0(8) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_90,
      mosi_reg_reg_0(7) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_91,
      mosi_reg_reg_0(6) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_92,
      mosi_reg_reg_0(5) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_93,
      mosi_reg_reg_0(4) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_94,
      mosi_reg_reg_0(3) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_95,
      mosi_reg_reg_0(2) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_96,
      mosi_reg_reg_0(1) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_97,
      mosi_reg_reg_0(0) => SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst_n_98,
      s00_axi_aclk => s00_axi_aclk,
      sclk_reg_reg_0 => sclk_reg_reg,
      spi_start => spi_start,
      ss_n => ss_n,
      \tx_shift_reg[31]_0\(31 downto 0) => slv_reg1(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_Master_AXI_0_20 is
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
  attribute NotValidForBitStream of design_1_SPI_Master_AXI_0_20 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SPI_Master_AXI_0_20 : entity is "design_1_SPI_Master_AXI_0_20,SPI_Master_AXI,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_SPI_Master_AXI_0_20 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_SPI_Master_AXI_0_20 : entity is "SPI_Master_AXI,Vivado 2025.1";
end design_1_SPI_Master_AXI_0_20;

architecture STRUCTURE of design_1_SPI_Master_AXI_0_20 is
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
U0: entity work.design_1_SPI_Master_AXI_0_20_SPI_Master_AXI
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      ldb => ldb,
      miso => miso,
      mosi => mosi,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sclk_reg_reg => sclk,
      ss_n => ss_n
    );
end STRUCTURE;
