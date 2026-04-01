// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Mar 31 12:04:36 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yousef/Vivado_workspace/RFIC_SPI/RFIC_SPI.gen/sources_1/bd/design_1/ip/design_1_Signal_Freq_test_0_0/design_1_Signal_Freq_test_0_0_sim_netlist.v
// Design      : design_1_Signal_Freq_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Signal_Freq_test_0_0,Signal_Freq_test,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Signal_Freq_test,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_Signal_Freq_test_0_0
   (Clk,
    rst,
    in_signal,
    out_signal);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_mode = "slave Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input in_signal;
  output out_signal;

  wire Clk;
  wire in_signal;
  wire out_signal;
  wire rst;

  design_1_Signal_Freq_test_0_0_Signal_Freq_test U0
       (.Clk(Clk),
        .in_signal(in_signal),
        .out_signal(out_signal),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Signal_Freq_test" *) 
module design_1_Signal_Freq_test_0_0_Signal_Freq_test
   (out_signal,
    rst,
    in_signal,
    Clk);
  output out_signal;
  input rst;
  input in_signal;
  input Clk;

  wire Clk;
  wire [31:0]cnt;
  wire cnt0;
  wire [31:0]cnt_0;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[12]_i_2_n_1 ;
  wire \cnt_reg[12]_i_2_n_2 ;
  wire \cnt_reg[12]_i_2_n_3 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_1 ;
  wire \cnt_reg[16]_i_2_n_2 ;
  wire \cnt_reg[16]_i_2_n_3 ;
  wire \cnt_reg[20]_i_2_n_0 ;
  wire \cnt_reg[20]_i_2_n_1 ;
  wire \cnt_reg[20]_i_2_n_2 ;
  wire \cnt_reg[20]_i_2_n_3 ;
  wire \cnt_reg[24]_i_2_n_0 ;
  wire \cnt_reg[24]_i_2_n_1 ;
  wire \cnt_reg[24]_i_2_n_2 ;
  wire \cnt_reg[24]_i_2_n_3 ;
  wire \cnt_reg[28]_i_2_n_0 ;
  wire \cnt_reg[28]_i_2_n_1 ;
  wire \cnt_reg[28]_i_2_n_2 ;
  wire \cnt_reg[28]_i_2_n_3 ;
  wire \cnt_reg[31]_i_3_n_2 ;
  wire \cnt_reg[31]_i_3_n_3 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_1 ;
  wire \cnt_reg[4]_i_2_n_2 ;
  wire \cnt_reg[4]_i_2_n_3 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_1 ;
  wire \cnt_reg[8]_i_2_n_2 ;
  wire \cnt_reg[8]_i_2_n_3 ;
  wire [31:1]data0;
  wire in_prev;
  wire in_signal;
  wire in_sync_0;
  wire in_sync_1;
  wire out_signal;
  wire rst;
  wire signal_reg_i_1_n_0;
  wire signal_reg_i_2_n_0;
  wire signal_reg_i_3_n_0;
  wire signal_reg_i_4_n_0;
  wire signal_reg_i_5_n_0;
  wire signal_reg_i_6_n_0;
  wire signal_reg_i_7_n_0;
  wire signal_reg_i_8_n_0;
  wire signal_reg_i_9_n_0;
  wire [3:2]\NLW_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[31]_i_3_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(cnt_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[10]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[10]),
        .O(cnt_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[11]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[11]),
        .O(cnt_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[12]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[12]),
        .O(cnt_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[13]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[13]),
        .O(cnt_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[14]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[14]),
        .O(cnt_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[15]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[15]),
        .O(cnt_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[16]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[16]),
        .O(cnt_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[17]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[17]),
        .O(cnt_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[18]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[18]),
        .O(cnt_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[19]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[19]),
        .O(cnt_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[1]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[1]),
        .O(cnt_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[20]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[20]),
        .O(cnt_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[21]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[21]),
        .O(cnt_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[22]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[22]),
        .O(cnt_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[23]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[23]),
        .O(cnt_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[24]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[24]),
        .O(cnt_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[25]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[25]),
        .O(cnt_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[26]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[26]),
        .O(cnt_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[27]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[27]),
        .O(cnt_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[28]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[28]),
        .O(cnt_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[29]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[29]),
        .O(cnt_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[2]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[2]),
        .O(cnt_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[30]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[30]),
        .O(cnt_0[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[31]_i_1 
       (.I0(in_sync_1),
        .I1(in_prev),
        .O(cnt0));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[31]_i_2 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[31]),
        .O(cnt_0[31]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[3]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[3]),
        .O(cnt_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[4]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[4]),
        .O(cnt_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[5]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[5]),
        .O(cnt_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[6]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[6]),
        .O(cnt_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[7]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[7]),
        .O(cnt_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[8]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[8]),
        .O(cnt_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[9]_i_1 
       (.I0(signal_reg_i_5_n_0),
        .I1(signal_reg_i_4_n_0),
        .I2(signal_reg_i_3_n_0),
        .I3(signal_reg_i_2_n_0),
        .I4(data0[9]),
        .O(cnt_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[0]),
        .Q(cnt[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[10]),
        .Q(cnt[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[11]),
        .Q(cnt[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[12]),
        .Q(cnt[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\cnt_reg[12]_i_2_n_1 ,\cnt_reg[12]_i_2_n_2 ,\cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[13]),
        .Q(cnt[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[14]),
        .Q(cnt[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[15]),
        .Q(cnt[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[16]),
        .Q(cnt[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\cnt_reg[16]_i_2_n_1 ,\cnt_reg[16]_i_2_n_2 ,\cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[17]),
        .Q(cnt[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[18]),
        .Q(cnt[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[19]),
        .Q(cnt[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[1]),
        .Q(cnt[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[20]),
        .Q(cnt[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[20]_i_2 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg[20]_i_2_n_0 ,\cnt_reg[20]_i_2_n_1 ,\cnt_reg[20]_i_2_n_2 ,\cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[21]),
        .Q(cnt[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[22]),
        .Q(cnt[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[23]),
        .Q(cnt[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[24]),
        .Q(cnt[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[24]_i_2 
       (.CI(\cnt_reg[20]_i_2_n_0 ),
        .CO({\cnt_reg[24]_i_2_n_0 ,\cnt_reg[24]_i_2_n_1 ,\cnt_reg[24]_i_2_n_2 ,\cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[25]),
        .Q(cnt[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[26]),
        .Q(cnt[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[27] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[27]),
        .Q(cnt[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[28] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[28]),
        .Q(cnt[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[28]_i_2 
       (.CI(\cnt_reg[24]_i_2_n_0 ),
        .CO({\cnt_reg[28]_i_2_n_0 ,\cnt_reg[28]_i_2_n_1 ,\cnt_reg[28]_i_2_n_2 ,\cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(cnt[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[29] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[29]),
        .Q(cnt[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[2]),
        .Q(cnt[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[30] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[30]),
        .Q(cnt[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[31] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[31]),
        .Q(cnt[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[31]_i_3 
       (.CI(\cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_cnt_reg[31]_i_3_CO_UNCONNECTED [3:2],\cnt_reg[31]_i_3_n_2 ,\cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[31]_i_3_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,cnt[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[3]),
        .Q(cnt[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[4]),
        .Q(cnt[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\cnt_reg[4]_i_2_n_1 ,\cnt_reg[4]_i_2_n_2 ,\cnt_reg[4]_i_2_n_3 }),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[5]),
        .Q(cnt[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[6]),
        .Q(cnt[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[7]),
        .Q(cnt[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[8]),
        .Q(cnt[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\cnt_reg[8]_i_2_n_1 ,\cnt_reg[8]_i_2_n_2 ,\cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(Clk),
        .CE(cnt0),
        .D(cnt_0[9]),
        .Q(cnt[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    in_prev_reg
       (.C(Clk),
        .CE(1'b1),
        .D(in_sync_1),
        .Q(in_prev),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    in_sync_0_reg
       (.C(Clk),
        .CE(1'b1),
        .D(in_signal),
        .Q(in_sync_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    in_sync_1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(in_sync_0),
        .Q(in_sync_1),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    signal_reg_i_1
       (.I0(signal_reg_i_2_n_0),
        .I1(signal_reg_i_3_n_0),
        .I2(signal_reg_i_4_n_0),
        .I3(signal_reg_i_5_n_0),
        .I4(cnt0),
        .I5(out_signal),
        .O(signal_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    signal_reg_i_2
       (.I0(cnt[10]),
        .I1(cnt[11]),
        .I2(cnt[8]),
        .I3(cnt[9]),
        .I4(signal_reg_i_6_n_0),
        .O(signal_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    signal_reg_i_3
       (.I0(cnt[2]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(signal_reg_i_7_n_0),
        .O(signal_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    signal_reg_i_4
       (.I0(cnt[26]),
        .I1(cnt[27]),
        .I2(cnt[24]),
        .I3(cnt[25]),
        .I4(signal_reg_i_8_n_0),
        .O(signal_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    signal_reg_i_5
       (.I0(cnt[18]),
        .I1(cnt[19]),
        .I2(cnt[16]),
        .I3(cnt[17]),
        .I4(signal_reg_i_9_n_0),
        .O(signal_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_reg_i_6
       (.I0(cnt[13]),
        .I1(cnt[12]),
        .I2(cnt[15]),
        .I3(cnt[14]),
        .O(signal_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_reg_i_7
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[7]),
        .I3(cnt[6]),
        .O(signal_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_reg_i_8
       (.I0(cnt[29]),
        .I1(cnt[28]),
        .I2(cnt[31]),
        .I3(cnt[30]),
        .O(signal_reg_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_reg_i_9
       (.I0(cnt[21]),
        .I1(cnt[20]),
        .I2(cnt[23]),
        .I3(cnt[22]),
        .O(signal_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    signal_reg_reg
       (.C(Clk),
        .CE(1'b1),
        .D(signal_reg_i_1_n_0),
        .Q(out_signal),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
