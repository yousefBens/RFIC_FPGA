--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
--Date        : Fri Mar 27 13:03:07 2026
--Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    Clk : in STD_LOGIC;
    btn : in STD_LOGIC;
    led1 : out STD_LOGIC;
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : out STD_LOGIC;
    ss_n : out STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    rst : in STD_LOGIC;
    Clk : in STD_LOGIC;
    uart_txd_in : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    ss_n : out STD_LOGIC;
    miso : in STD_LOGIC;
    led1 : out STD_LOGIC;
    btn : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Clk => Clk,
      btn => btn,
      led1 => led1,
      miso => miso,
      mosi => mosi,
      rst => rst,
      sclk => sclk,
      ss_n => ss_n,
      uart_rxd_out => uart_rxd_out,
      uart_txd_in => uart_txd_in
    );
end STRUCTURE;
