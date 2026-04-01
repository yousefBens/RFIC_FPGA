-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Mar 31 12:04:36 2026
-- Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/yousef/Vivado_workspace/RFIC_SPI/RFIC_SPI.gen/sources_1/bd/design_1/ip/design_1_Signal_Freq_test_0_0/design_1_Signal_Freq_test_0_0_stub.vhdl
-- Design      : design_1_Signal_Freq_test_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Signal_Freq_test_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    in_signal : in STD_LOGIC;
    out_signal : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Signal_Freq_test_0_0 : entity is "design_1_Signal_Freq_test_0_0,Signal_Freq_test,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of design_1_Signal_Freq_test_0_0 : entity is "design_1_Signal_Freq_test_0_0,Signal_Freq_test,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Signal_Freq_test,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIVIDER=2}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Signal_Freq_test_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Signal_Freq_test_0_0 : entity is "module_ref";
end design_1_Signal_Freq_test_0_0;

architecture stub of design_1_Signal_Freq_test_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Clk,rst,in_signal,out_signal";
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of Clk : signal is "slave Clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "Signal_Freq_test,Vivado 2025.1";
begin
end;
