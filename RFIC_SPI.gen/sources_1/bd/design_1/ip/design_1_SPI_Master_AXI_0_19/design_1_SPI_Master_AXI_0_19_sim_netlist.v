// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Fri Mar 27 13:03:31 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yousef/Vivado_workspace/RFIC_SPI/RFIC_SPI.gen/sources_1/bd/design_1/ip/design_1_SPI_Master_AXI_0_19/design_1_SPI_Master_AXI_0_19_sim_netlist.v
// Design      : design_1_SPI_Master_AXI_0_19
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SPI_Master_AXI_0_19,SPI_Master_AXI,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SPI_Master_AXI,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_SPI_Master_AXI_0_19
   (miso,
    mosi,
    sclk,
    ss_n,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input miso;
  output mosi;
  output sclk;
  output ss_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_mode = "slave S00_AXI_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_mode = "slave S00_AXI_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_mode = "slave S00_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire miso;
  wire mosi;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sclk;
  wire ss_n;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_SPI_Master_AXI_0_19_SPI_Master_AXI U0
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .miso(miso),
        .mosi(mosi),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sclk_reg_reg(sclk),
        .ss_n(ss_n));
endmodule

(* ORIG_REF_NAME = "SPI_Master" *) 
module design_1_SPI_Master_AXI_0_19_SPI_Master
   (D,
    sclk_reg_reg_0,
    mosi,
    ss_n,
    \rx_shift_reg[59]_0 ,
    SR,
    s00_axi_aclk,
    spi_start,
    Q,
    miso,
    in9);
  output [1:0]D;
  output sclk_reg_reg_0;
  output mosi;
  output ss_n;
  output [59:0]\rx_shift_reg[59]_0 ;
  input [0:0]SR;
  input s00_axi_aclk;
  input spi_start;
  input [0:0]Q;
  input miso;
  input [58:0]in9;

  wire [1:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire bit_count;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[3]_i_1_n_0 ;
  wire \bit_count[4]_i_1_n_0 ;
  wire \bit_count[5]_i_2_n_0 ;
  wire \bit_count[5]_i_3_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire \bit_count_reg_n_0_[3] ;
  wire \bit_count_reg_n_0_[4] ;
  wire \bit_count_reg_n_0_[5] ;
  wire busy_i_1_n_0;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[1]_i_1_n_0 ;
  wire \clk_count[2]_i_1_n_0 ;
  wire \clk_count_reg_n_0_[0] ;
  wire \clk_count_reg_n_0_[1] ;
  wire \clk_count_reg_n_0_[2] ;
  wire [58:1]in10;
  wire [58:0]in9;
  wire miso;
  wire mosi;
  wire mosi_reg;
  wire mosi_reg_i_3_n_0;
  wire p_0_in;
  wire rx_shift;
  wire \rx_shift[0]_i_1_n_0 ;
  wire \rx_shift[10]_i_1_n_0 ;
  wire \rx_shift[11]_i_1_n_0 ;
  wire \rx_shift[12]_i_1_n_0 ;
  wire \rx_shift[13]_i_1_n_0 ;
  wire \rx_shift[14]_i_1_n_0 ;
  wire \rx_shift[15]_i_1_n_0 ;
  wire \rx_shift[16]_i_1_n_0 ;
  wire \rx_shift[17]_i_1_n_0 ;
  wire \rx_shift[18]_i_1_n_0 ;
  wire \rx_shift[19]_i_1_n_0 ;
  wire \rx_shift[1]_i_1_n_0 ;
  wire \rx_shift[20]_i_1_n_0 ;
  wire \rx_shift[21]_i_1_n_0 ;
  wire \rx_shift[22]_i_1_n_0 ;
  wire \rx_shift[23]_i_1_n_0 ;
  wire \rx_shift[24]_i_1_n_0 ;
  wire \rx_shift[25]_i_1_n_0 ;
  wire \rx_shift[26]_i_1_n_0 ;
  wire \rx_shift[27]_i_1_n_0 ;
  wire \rx_shift[28]_i_1_n_0 ;
  wire \rx_shift[29]_i_1_n_0 ;
  wire \rx_shift[2]_i_1_n_0 ;
  wire \rx_shift[30]_i_1_n_0 ;
  wire \rx_shift[31]_i_1_n_0 ;
  wire \rx_shift[32]_i_1_n_0 ;
  wire \rx_shift[33]_i_1_n_0 ;
  wire \rx_shift[34]_i_1_n_0 ;
  wire \rx_shift[35]_i_1_n_0 ;
  wire \rx_shift[36]_i_1_n_0 ;
  wire \rx_shift[37]_i_1_n_0 ;
  wire \rx_shift[38]_i_1_n_0 ;
  wire \rx_shift[39]_i_1_n_0 ;
  wire \rx_shift[3]_i_1_n_0 ;
  wire \rx_shift[40]_i_1_n_0 ;
  wire \rx_shift[41]_i_1_n_0 ;
  wire \rx_shift[42]_i_1_n_0 ;
  wire \rx_shift[43]_i_1_n_0 ;
  wire \rx_shift[44]_i_1_n_0 ;
  wire \rx_shift[45]_i_1_n_0 ;
  wire \rx_shift[46]_i_1_n_0 ;
  wire \rx_shift[47]_i_1_n_0 ;
  wire \rx_shift[48]_i_1_n_0 ;
  wire \rx_shift[49]_i_1_n_0 ;
  wire \rx_shift[4]_i_1_n_0 ;
  wire \rx_shift[50]_i_1_n_0 ;
  wire \rx_shift[51]_i_1_n_0 ;
  wire \rx_shift[52]_i_1_n_0 ;
  wire \rx_shift[53]_i_1_n_0 ;
  wire \rx_shift[54]_i_1_n_0 ;
  wire \rx_shift[55]_i_1_n_0 ;
  wire \rx_shift[56]_i_1_n_0 ;
  wire \rx_shift[57]_i_1_n_0 ;
  wire \rx_shift[58]_i_1_n_0 ;
  wire \rx_shift[59]_i_2_n_0 ;
  wire \rx_shift[5]_i_1_n_0 ;
  wire \rx_shift[6]_i_1_n_0 ;
  wire \rx_shift[7]_i_1_n_0 ;
  wire \rx_shift[8]_i_1_n_0 ;
  wire \rx_shift[9]_i_1_n_0 ;
  wire [59:0]\rx_shift_reg[59]_0 ;
  wire s00_axi_aclk;
  wire sclk_prev;
  wire sclk_reg_i_1_n_0;
  wire sclk_reg_i_2_n_0;
  wire sclk_reg_reg_0;
  wire spi_start;
  wire ss_n;
  wire ss_reg_i_1_n_0;
  wire \tx_shift[0]_i_1_n_0 ;
  wire \tx_shift[10]_i_1_n_0 ;
  wire \tx_shift[11]_i_1_n_0 ;
  wire \tx_shift[12]_i_1_n_0 ;
  wire \tx_shift[13]_i_1_n_0 ;
  wire \tx_shift[14]_i_1_n_0 ;
  wire \tx_shift[15]_i_1_n_0 ;
  wire \tx_shift[16]_i_1_n_0 ;
  wire \tx_shift[17]_i_1_n_0 ;
  wire \tx_shift[18]_i_1_n_0 ;
  wire \tx_shift[19]_i_1_n_0 ;
  wire \tx_shift[1]_i_1_n_0 ;
  wire \tx_shift[20]_i_1_n_0 ;
  wire \tx_shift[21]_i_1_n_0 ;
  wire \tx_shift[22]_i_1_n_0 ;
  wire \tx_shift[23]_i_1_n_0 ;
  wire \tx_shift[24]_i_1_n_0 ;
  wire \tx_shift[25]_i_1_n_0 ;
  wire \tx_shift[26]_i_1_n_0 ;
  wire \tx_shift[27]_i_1_n_0 ;
  wire \tx_shift[28]_i_1_n_0 ;
  wire \tx_shift[29]_i_1_n_0 ;
  wire \tx_shift[2]_i_1_n_0 ;
  wire \tx_shift[30]_i_1_n_0 ;
  wire \tx_shift[31]_i_1_n_0 ;
  wire \tx_shift[32]_i_1_n_0 ;
  wire \tx_shift[33]_i_1_n_0 ;
  wire \tx_shift[34]_i_1_n_0 ;
  wire \tx_shift[35]_i_1_n_0 ;
  wire \tx_shift[36]_i_1_n_0 ;
  wire \tx_shift[37]_i_1_n_0 ;
  wire \tx_shift[38]_i_1_n_0 ;
  wire \tx_shift[39]_i_1_n_0 ;
  wire \tx_shift[3]_i_1_n_0 ;
  wire \tx_shift[40]_i_1_n_0 ;
  wire \tx_shift[41]_i_1_n_0 ;
  wire \tx_shift[42]_i_1_n_0 ;
  wire \tx_shift[43]_i_1_n_0 ;
  wire \tx_shift[44]_i_1_n_0 ;
  wire \tx_shift[45]_i_1_n_0 ;
  wire \tx_shift[46]_i_1_n_0 ;
  wire \tx_shift[47]_i_1_n_0 ;
  wire \tx_shift[48]_i_1_n_0 ;
  wire \tx_shift[49]_i_1_n_0 ;
  wire \tx_shift[4]_i_1_n_0 ;
  wire \tx_shift[50]_i_1_n_0 ;
  wire \tx_shift[51]_i_1_n_0 ;
  wire \tx_shift[52]_i_1_n_0 ;
  wire \tx_shift[53]_i_1_n_0 ;
  wire \tx_shift[54]_i_1_n_0 ;
  wire \tx_shift[55]_i_1_n_0 ;
  wire \tx_shift[56]_i_1_n_0 ;
  wire \tx_shift[57]_i_1_n_0 ;
  wire \tx_shift[58]_i_1_n_0 ;
  wire \tx_shift[5]_i_1_n_0 ;
  wire \tx_shift[6]_i_1_n_0 ;
  wire \tx_shift[7]_i_1_n_0 ;
  wire \tx_shift[8]_i_1_n_0 ;
  wire \tx_shift[9]_i_1_n_0 ;

  LUT5 #(
    .INIT(32'hF0F2F2F2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(spi_start),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAFAFAAA8A8A8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(spi_start),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state[2]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(spi_start),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .I5(\FSM_onehot_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(sclk_prev),
        .I1(sclk_reg_reg_0),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\bit_count_reg_n_0_[3] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\bit_count_reg_n_0_[5] ),
        .I5(\bit_count_reg_n_0_[4] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,transfer:010,finish:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "idle:001,transfer:010,finish:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:001,transfer:010,finish:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bit_count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \bit_count[3]_i_1 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .O(\bit_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bit_count[4]_i_1 
       (.I0(\bit_count_reg_n_0_[3] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bit_count_reg_n_0_[4] ),
        .O(\bit_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFAAAAAAAA)) 
    \bit_count[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[5] ),
        .I2(\bit_count_reg_n_0_[4] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .I5(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(bit_count));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bit_count[5]_i_2 
       (.I0(\bit_count_reg_n_0_[4] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count[5]_i_3_n_0 ),
        .I3(\bit_count_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bit_count_reg_n_0_[5] ),
        .O(\bit_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_count[5]_i_3 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(bit_count),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(bit_count),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(bit_count),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(bit_count),
        .D(\bit_count[3]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(bit_count),
        .D(\bit_count[4]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(bit_count),
        .D(\bit_count[5]_i_2_n_0 ),
        .Q(\bit_count_reg_n_0_[5] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    busy_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(spi_start),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(busy_i_1_n_0));
  FDRE busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(D[0]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \clk_count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\clk_count_reg_n_0_[0] ),
        .O(\clk_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h550F2200)) 
    \clk_count[1]_i_1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\clk_count_reg_n_0_[1] ),
        .O(\clk_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h550F8800)) 
    \clk_count[2]_i_1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\clk_count_reg_n_0_[2] ),
        .O(\clk_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_count[0]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_count[1]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_count[2]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[2] ),
        .R(SR));
  FDRE done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(D[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF080808)) 
    mosi_reg_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(sclk_prev),
        .I2(sclk_reg_reg_0),
        .I3(spi_start),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(mosi_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    mosi_reg_i_3
       (.I0(p_0_in),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(Q),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(mosi_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mosi_reg_reg
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(mosi_reg_i_3_n_0),
        .Q(mosi),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(miso),
        .O(\rx_shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [9]),
        .O(\rx_shift[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [10]),
        .O(\rx_shift[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [11]),
        .O(\rx_shift[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [12]),
        .O(\rx_shift[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [13]),
        .O(\rx_shift[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [14]),
        .O(\rx_shift[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [15]),
        .O(\rx_shift[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [16]),
        .O(\rx_shift[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [17]),
        .O(\rx_shift[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [18]),
        .O(\rx_shift[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [0]),
        .O(\rx_shift[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [19]),
        .O(\rx_shift[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [20]),
        .O(\rx_shift[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [21]),
        .O(\rx_shift[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [22]),
        .O(\rx_shift[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [23]),
        .O(\rx_shift[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [24]),
        .O(\rx_shift[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [25]),
        .O(\rx_shift[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [26]),
        .O(\rx_shift[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [27]),
        .O(\rx_shift[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [28]),
        .O(\rx_shift[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [1]),
        .O(\rx_shift[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [29]),
        .O(\rx_shift[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [30]),
        .O(\rx_shift[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[32]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [31]),
        .O(\rx_shift[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[33]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [32]),
        .O(\rx_shift[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[34]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [33]),
        .O(\rx_shift[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[35]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [34]),
        .O(\rx_shift[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[36]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [35]),
        .O(\rx_shift[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[37]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [36]),
        .O(\rx_shift[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[38]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [37]),
        .O(\rx_shift[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[39]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [38]),
        .O(\rx_shift[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [2]),
        .O(\rx_shift[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[40]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [39]),
        .O(\rx_shift[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[41]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [40]),
        .O(\rx_shift[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[42]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [41]),
        .O(\rx_shift[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[43]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [42]),
        .O(\rx_shift[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[44]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [43]),
        .O(\rx_shift[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[45]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [44]),
        .O(\rx_shift[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[46]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [45]),
        .O(\rx_shift[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[47]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [46]),
        .O(\rx_shift[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[48]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [47]),
        .O(\rx_shift[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[49]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [48]),
        .O(\rx_shift[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [3]),
        .O(\rx_shift[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[50]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [49]),
        .O(\rx_shift[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[51]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [50]),
        .O(\rx_shift[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[52]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [51]),
        .O(\rx_shift[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[53]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [52]),
        .O(\rx_shift[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[54]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [53]),
        .O(\rx_shift[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[55]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [54]),
        .O(\rx_shift[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[56]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [55]),
        .O(\rx_shift[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[57]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [56]),
        .O(\rx_shift[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[58]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [57]),
        .O(\rx_shift[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \rx_shift[59]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(sclk_reg_reg_0),
        .I2(sclk_prev),
        .I3(spi_start),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(rx_shift));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[59]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [58]),
        .O(\rx_shift[59]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [4]),
        .O(\rx_shift[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [5]),
        .O(\rx_shift[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [6]),
        .O(\rx_shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [7]),
        .O(\rx_shift[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\rx_shift_reg[59]_0 [8]),
        .O(\rx_shift[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[0]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[10]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[11]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[12]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[13]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[14]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[15]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[16]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[17]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[18]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[19]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[1]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[20]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[21]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[22]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[23]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[24] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[24]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[25] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[25]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[26] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[26]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[27] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[27]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[28] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[28]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[29] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[29]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[2]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[30] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[30]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[31] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[31]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[32] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[32]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[33] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[33]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[34] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[34]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[35] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[35]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[36] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[36]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[37] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[37]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[38] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[38]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[39] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[39]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[3]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[40] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[40]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[41] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[41]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[42] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[42]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[43] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[43]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[44] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[44]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[45] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[45]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[46] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[46]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[47] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[47]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[48] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[48]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[49] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[49]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[4]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[50] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[50]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[51] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[51]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[52] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[52]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[53] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[53]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[54] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[54]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[55] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[55]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[56] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[56]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[57] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[57]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[58] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[58]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[59] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[59]_i_2_n_0 ),
        .Q(\rx_shift_reg[59]_0 [59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[5]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[6]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[7]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[8]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rx_shift),
        .D(\rx_shift[9]_i_1_n_0 ),
        .Q(\rx_shift_reg[59]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sclk_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_reg_reg_0),
        .Q(sclk_prev),
        .R(SR));
  LUT5 #(
    .INIT(32'h0111FE00)) 
    sclk_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(sclk_reg_i_2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(sclk_reg_reg_0),
        .O(sclk_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    sclk_reg_i_2
       (.I0(\clk_count_reg_n_0_[1] ),
        .I1(\clk_count_reg_n_0_[2] ),
        .I2(\clk_count_reg_n_0_[0] ),
        .O(sclk_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_reg_i_1_n_0),
        .Q(sclk_reg_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFBFFFB0)) 
    ss_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(spi_start),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(ss_n),
        .O(ss_reg_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ss_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ss_reg_i_1_n_0),
        .Q(ss_n),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_shift[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in9[0]),
        .O(\tx_shift[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[10]_i_1 
       (.I0(in10[10]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[10]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[11]_i_1 
       (.I0(in10[11]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[11]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[12]_i_1 
       (.I0(in10[12]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[12]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[13]_i_1 
       (.I0(in10[13]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[13]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[14]_i_1 
       (.I0(in10[14]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[14]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[15]_i_1 
       (.I0(in10[15]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[15]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[16]_i_1 
       (.I0(in10[16]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[16]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[17]_i_1 
       (.I0(in10[17]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[17]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[18]_i_1 
       (.I0(in10[18]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[18]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[19]_i_1 
       (.I0(in10[19]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[19]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[1]_i_1 
       (.I0(in10[1]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[1]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[20]_i_1 
       (.I0(in10[20]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[20]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[21]_i_1 
       (.I0(in10[21]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[21]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[22]_i_1 
       (.I0(in10[22]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[22]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[23]_i_1 
       (.I0(in10[23]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[23]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[24]_i_1 
       (.I0(in10[24]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[24]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[25]_i_1 
       (.I0(in10[25]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[25]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[26]_i_1 
       (.I0(in10[26]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[26]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[27]_i_1 
       (.I0(in10[27]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[27]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[28]_i_1 
       (.I0(in10[28]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[28]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[29]_i_1 
       (.I0(in10[29]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[29]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[2]_i_1 
       (.I0(in10[2]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[2]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[30]_i_1 
       (.I0(in10[30]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[30]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[31]_i_1 
       (.I0(in10[31]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[31]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[32]_i_1 
       (.I0(in10[32]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[32]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[33]_i_1 
       (.I0(in10[33]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[33]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[34]_i_1 
       (.I0(in10[34]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[34]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[35]_i_1 
       (.I0(in10[35]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[35]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[36]_i_1 
       (.I0(in10[36]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[36]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[37]_i_1 
       (.I0(in10[37]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[37]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[38]_i_1 
       (.I0(in10[38]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[38]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[38]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[39]_i_1 
       (.I0(in10[39]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[39]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[3]_i_1 
       (.I0(in10[3]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[3]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[40]_i_1 
       (.I0(in10[40]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[40]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[41]_i_1 
       (.I0(in10[41]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[41]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[42]_i_1 
       (.I0(in10[42]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[42]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[43]_i_1 
       (.I0(in10[43]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[43]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[43]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[44]_i_1 
       (.I0(in10[44]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[44]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[45]_i_1 
       (.I0(in10[45]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[45]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[45]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[46]_i_1 
       (.I0(in10[46]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[46]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[47]_i_1 
       (.I0(in10[47]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[47]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[48]_i_1 
       (.I0(in10[48]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[48]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[48]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[49]_i_1 
       (.I0(in10[49]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[49]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[4]_i_1 
       (.I0(in10[4]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[4]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[50]_i_1 
       (.I0(in10[50]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[50]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[50]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[51]_i_1 
       (.I0(in10[51]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[51]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[51]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[52]_i_1 
       (.I0(in10[52]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[52]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[53]_i_1 
       (.I0(in10[53]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[53]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[53]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[54]_i_1 
       (.I0(in10[54]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[54]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[54]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[55]_i_1 
       (.I0(in10[55]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[55]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[55]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[56]_i_1 
       (.I0(in10[56]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[56]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[56]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[57]_i_1 
       (.I0(in10[57]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[57]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[57]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[58]_i_1 
       (.I0(in10[58]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[58]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[58]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[5]_i_1 
       (.I0(in10[5]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[5]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[6]_i_1 
       (.I0(in10[6]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[6]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[7]_i_1 
       (.I0(in10[7]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[7]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[8]_i_1 
       (.I0(in10[8]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[8]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \tx_shift[9]_i_1 
       (.I0(in10[9]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in9[9]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\tx_shift[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[0]_i_1_n_0 ),
        .Q(in10[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[10]_i_1_n_0 ),
        .Q(in10[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[11] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[11]_i_1_n_0 ),
        .Q(in10[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[12] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[12]_i_1_n_0 ),
        .Q(in10[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[13] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[13]_i_1_n_0 ),
        .Q(in10[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[14] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[14]_i_1_n_0 ),
        .Q(in10[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[15] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[15]_i_1_n_0 ),
        .Q(in10[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[16] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[16]_i_1_n_0 ),
        .Q(in10[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[17] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[17]_i_1_n_0 ),
        .Q(in10[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[18] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[18]_i_1_n_0 ),
        .Q(in10[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[19] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[19]_i_1_n_0 ),
        .Q(in10[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[1]_i_1_n_0 ),
        .Q(in10[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[20] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[20]_i_1_n_0 ),
        .Q(in10[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[21] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[21]_i_1_n_0 ),
        .Q(in10[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[22] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[22]_i_1_n_0 ),
        .Q(in10[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[23] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[23]_i_1_n_0 ),
        .Q(in10[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[24] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[24]_i_1_n_0 ),
        .Q(in10[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[25] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[25]_i_1_n_0 ),
        .Q(in10[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[26] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[26]_i_1_n_0 ),
        .Q(in10[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[27] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[27]_i_1_n_0 ),
        .Q(in10[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[28] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[28]_i_1_n_0 ),
        .Q(in10[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[29] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[29]_i_1_n_0 ),
        .Q(in10[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[2]_i_1_n_0 ),
        .Q(in10[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[30] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[30]_i_1_n_0 ),
        .Q(in10[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[31] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[31]_i_1_n_0 ),
        .Q(in10[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[32] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[32]_i_1_n_0 ),
        .Q(in10[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[33] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[33]_i_1_n_0 ),
        .Q(in10[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[34] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[34]_i_1_n_0 ),
        .Q(in10[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[35] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[35]_i_1_n_0 ),
        .Q(in10[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[36] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[36]_i_1_n_0 ),
        .Q(in10[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[37] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[37]_i_1_n_0 ),
        .Q(in10[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[38] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[38]_i_1_n_0 ),
        .Q(in10[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[39] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[39]_i_1_n_0 ),
        .Q(in10[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[3]_i_1_n_0 ),
        .Q(in10[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[40] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[40]_i_1_n_0 ),
        .Q(in10[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[41] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[41]_i_1_n_0 ),
        .Q(in10[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[42] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[42]_i_1_n_0 ),
        .Q(in10[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[43] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[43]_i_1_n_0 ),
        .Q(in10[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[44] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[44]_i_1_n_0 ),
        .Q(in10[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[45] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[45]_i_1_n_0 ),
        .Q(in10[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[46] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[46]_i_1_n_0 ),
        .Q(in10[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[47] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[47]_i_1_n_0 ),
        .Q(in10[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[48] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[48]_i_1_n_0 ),
        .Q(in10[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[49] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[49]_i_1_n_0 ),
        .Q(in10[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[4]_i_1_n_0 ),
        .Q(in10[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[50] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[50]_i_1_n_0 ),
        .Q(in10[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[51] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[51]_i_1_n_0 ),
        .Q(in10[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[52] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[52]_i_1_n_0 ),
        .Q(in10[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[53] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[53]_i_1_n_0 ),
        .Q(in10[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[54] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[54]_i_1_n_0 ),
        .Q(in10[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[55] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[55]_i_1_n_0 ),
        .Q(in10[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[56] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[56]_i_1_n_0 ),
        .Q(in10[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[57] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[57]_i_1_n_0 ),
        .Q(in10[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[58] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[58]_i_1_n_0 ),
        .Q(p_0_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[5]_i_1_n_0 ),
        .Q(in10[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[6]_i_1_n_0 ),
        .Q(in10[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[7]_i_1_n_0 ),
        .Q(in10[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[8]_i_1_n_0 ),
        .Q(in10[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(mosi_reg),
        .D(\tx_shift[9]_i_1_n_0 ),
        .Q(in10[10]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "SPI_Master_AXI" *) 
module design_1_SPI_Master_AXI_0_19_SPI_Master_AXI
   (axi_awready_reg,
    axi_rvalid_reg,
    axi_arready_reg,
    sclk_reg_reg,
    s00_axi_rdata,
    mosi,
    s00_axi_bvalid,
    ss_n,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    miso,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_rvalid_reg;
  output axi_arready_reg;
  output sclk_reg_reg;
  output [31:0]s00_axi_rdata;
  output mosi;
  output s00_axi_bvalid;
  output ss_n;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [2:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input miso;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire busy;
  wire done;
  wire [59:1]in7;
  wire [58:0]in9;
  wire miso;
  wire mosi;
  wire rst;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sclk_reg_reg;
  wire spi_start;
  wire [59:59]spi_tx_data;
  wire ss_n;
  wire u_spi_master_n_5;

  design_1_SPI_Master_AXI_0_19_SPI_Master_AXI_slave_lite_v1_0_S00_AXI SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst
       (.D({done,busy}),
        .Q(spi_tx_data),
        .SR(rst),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .in9(in9),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg5_reg[27]_0 ({u_spi_master_n_5,in7}),
        .spi_start(spi_start));
  design_1_SPI_Master_AXI_0_19_SPI_Master u_spi_master
       (.D({done,busy}),
        .Q(spi_tx_data),
        .SR(rst),
        .in9(in9),
        .miso(miso),
        .mosi(mosi),
        .\rx_shift_reg[59]_0 ({u_spi_master_n_5,in7}),
        .s00_axi_aclk(s00_axi_aclk),
        .sclk_reg_reg_0(sclk_reg_reg),
        .spi_start(spi_start),
        .ss_n(ss_n));
endmodule

(* ORIG_REF_NAME = "SPI_Master_AXI_slave_lite_v1_0_S00_AXI" *) 
module design_1_SPI_Master_AXI_0_19_SPI_Master_AXI_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    SR,
    s00_axi_bvalid,
    spi_start,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_rdata,
    in9,
    Q,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    D,
    \slv_reg5_reg[27]_0 ,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output [0:0]SR;
  output s00_axi_bvalid;
  output spi_start;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [31:0]s00_axi_rdata;
  output [58:0]in9;
  output [0:0]Q;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [2:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [1:0]D;
  input [59:0]\slv_reg5_reg[27]_0 ;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [1:0]D;
  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire [58:0]in9;
  wire [2:2]mem_logic__2;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire [31:0]slv_reg4;
  wire [59:0]\slv_reg5_reg[27]_0 ;
  wire \slv_reg5_reg_n_0_[0] ;
  wire \slv_reg5_reg_n_0_[10] ;
  wire \slv_reg5_reg_n_0_[11] ;
  wire \slv_reg5_reg_n_0_[12] ;
  wire \slv_reg5_reg_n_0_[13] ;
  wire \slv_reg5_reg_n_0_[14] ;
  wire \slv_reg5_reg_n_0_[15] ;
  wire \slv_reg5_reg_n_0_[16] ;
  wire \slv_reg5_reg_n_0_[17] ;
  wire \slv_reg5_reg_n_0_[18] ;
  wire \slv_reg5_reg_n_0_[19] ;
  wire \slv_reg5_reg_n_0_[1] ;
  wire \slv_reg5_reg_n_0_[20] ;
  wire \slv_reg5_reg_n_0_[21] ;
  wire \slv_reg5_reg_n_0_[22] ;
  wire \slv_reg5_reg_n_0_[23] ;
  wire \slv_reg5_reg_n_0_[24] ;
  wire \slv_reg5_reg_n_0_[25] ;
  wire \slv_reg5_reg_n_0_[26] ;
  wire \slv_reg5_reg_n_0_[27] ;
  wire \slv_reg5_reg_n_0_[2] ;
  wire \slv_reg5_reg_n_0_[3] ;
  wire \slv_reg5_reg_n_0_[4] ;
  wire \slv_reg5_reg_n_0_[5] ;
  wire \slv_reg5_reg_n_0_[6] ;
  wire \slv_reg5_reg_n_0_[7] ;
  wire \slv_reg5_reg_n_0_[8] ;
  wire \slv_reg5_reg_n_0_[9] ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[31]_i_2_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire spi_start;
  wire spi_start_pulse_i_1_n_0;
  wire [1:0]state_read;

  LUT6 #(
    .INIT(64'hFFFFFFFFF7F0F700)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I5(axi_wready),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F0F0800)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(axi_wready),
        .S(SR));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF88880FFFFFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7777F0000000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_aresetn),
        .I2(state_read[0]),
        .I3(\axi_araddr[4]_i_2_n_0 ),
        .I4(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_aresetn),
        .I2(state_read[0]),
        .I3(\axi_araddr[4]_i_2_n_0 ),
        .I4(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_aresetn),
        .I2(state_read[0]),
        .I3(\axi_araddr[4]_i_2_n_0 ),
        .I4(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[4]_i_2 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[1]),
        .O(\axi_araddr[4]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55FFFF40554055)) 
    axi_arready_i_1
       (.I0(state_read[0]),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg_0),
        .I3(state_read[1]),
        .I4(s00_axi_arvalid),
        .I5(axi_arready_reg_0),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFAFFEAEAFFFFEAEA)) 
    axi_awready_i_1
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\FSM_onehot_state_write_reg_n_0_[1] ),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFABFF0000)) 
    axi_bvalid_i_1
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(axi_bvalid_i_2_n_0),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    axi_bvalid_i_2
       (.I0(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hA2A2A2A2FAAAAAAA)) 
    axi_rvalid_i_1
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(state_read[0]),
        .I3(axi_arready_reg_0),
        .I4(s00_axi_arvalid),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    axi_wready_i_1
       (.I0(axi_wready),
        .I1(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    mosi_reg_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(in9[0]),
        .I1(\slv_reg3_reg_n_0_[0] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[0]),
        .I5(in9[32]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[0] ),
        .I1(slv_reg7[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[0]),
        .I5(slv_reg6[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg0[10]),
        .I1(in9[42]),
        .I2(in9[10]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[10] ),
        .I1(slv_reg7[10]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[10]),
        .I5(slv_reg6[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg0[11]),
        .I1(in9[43]),
        .I2(in9[11]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[11] ),
        .I1(slv_reg7[11]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[11]),
        .I5(slv_reg6[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg0[12]),
        .I1(in9[44]),
        .I2(in9[12]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[12] ),
        .I1(slv_reg7[12]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[12]),
        .I5(slv_reg6[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[13]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg0[13]),
        .I1(in9[45]),
        .I2(in9[13]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[13] ),
        .I1(slv_reg7[13]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[13]),
        .I5(slv_reg6[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[14]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg0[14]),
        .I1(in9[46]),
        .I2(in9[14]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[14] ),
        .I1(slv_reg7[14]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[14]),
        .I5(slv_reg6[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[15]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg0[15]),
        .I1(in9[47]),
        .I2(in9[15]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[15] ),
        .I1(slv_reg7[15]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[15]),
        .I5(slv_reg6[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[16]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg0[16]),
        .I1(in9[48]),
        .I2(in9[16]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[16] ),
        .I1(slv_reg7[16]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[16]),
        .I5(slv_reg6[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[17]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg0[17]),
        .I1(in9[49]),
        .I2(in9[17]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[17] ),
        .I1(slv_reg7[17]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[17]),
        .I5(slv_reg6[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[18]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg0[18]),
        .I1(in9[50]),
        .I2(in9[18]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[18] ),
        .I1(slv_reg7[18]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[18]),
        .I5(slv_reg6[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[19]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg0[19]),
        .I1(in9[51]),
        .I2(in9[19]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[19] ),
        .I1(slv_reg7[19]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[19]),
        .I5(slv_reg6[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(in9[1]),
        .I1(\slv_reg3_reg_n_0_[1] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[1]),
        .I5(in9[33]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[1] ),
        .I1(slv_reg7[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[1]),
        .I5(slv_reg6[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[20]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg0[20]),
        .I1(in9[52]),
        .I2(in9[20]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[20] ),
        .I1(slv_reg7[20]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[20]),
        .I5(slv_reg6[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[21]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg0[21]),
        .I1(in9[53]),
        .I2(in9[21]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[21] ),
        .I1(slv_reg7[21]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[21]),
        .I5(slv_reg6[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[22]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg0[22]),
        .I1(in9[54]),
        .I2(in9[22]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[22] ),
        .I1(slv_reg7[22]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[22]),
        .I5(slv_reg6[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[23]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg0[23]),
        .I1(in9[55]),
        .I2(in9[23]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[23] ),
        .I1(slv_reg7[23]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[23]),
        .I5(slv_reg6[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[24]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg0[24]),
        .I1(in9[56]),
        .I2(in9[24]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[24] ),
        .I1(slv_reg7[24]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[24]),
        .I5(slv_reg6[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[25]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg0[25]),
        .I1(in9[57]),
        .I2(in9[25]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[25] ),
        .I1(slv_reg7[25]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[25]),
        .I5(slv_reg6[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[26]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg0[26]),
        .I1(in9[58]),
        .I2(in9[26]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[26] ),
        .I1(slv_reg7[26]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[26]),
        .I5(slv_reg6[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[27]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg0[27]),
        .I1(Q),
        .I2(in9[27]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[27] ),
        .I1(slv_reg7[27]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[27]),
        .I5(slv_reg6[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[28]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg0[28]),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .I2(in9[28]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(slv_reg4[28]),
        .I1(slv_reg6[28]),
        .I2(slv_reg7[28]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[29]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg0[29]),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(in9[29]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(slv_reg4[29]),
        .I1(slv_reg6[29]),
        .I2(slv_reg7[29]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(slv_reg0[2]),
        .I1(in9[34]),
        .I2(in9[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[2] ),
        .I1(slv_reg7[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[2]),
        .I5(slv_reg6[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[30]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg0[30]),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .I2(in9[30]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(slv_reg4[30]),
        .I1(slv_reg6[30]),
        .I2(slv_reg7[30]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[31]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg0[31]),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(in9[31]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(slv_reg4[31]),
        .I1(slv_reg6[31]),
        .I2(slv_reg7[31]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(slv_reg0[3]),
        .I1(in9[35]),
        .I2(in9[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[3] ),
        .I1(slv_reg7[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[3]),
        .I5(slv_reg6[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(slv_reg0[4]),
        .I1(in9[36]),
        .I2(in9[4]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[4] ),
        .I1(slv_reg7[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[4]),
        .I5(slv_reg6[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(slv_reg0[5]),
        .I1(in9[37]),
        .I2(in9[5]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[5] ),
        .I1(slv_reg7[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[5]),
        .I5(slv_reg6[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(slv_reg0[6]),
        .I1(in9[38]),
        .I2(in9[6]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[6] ),
        .I1(slv_reg7[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[6]),
        .I5(slv_reg6[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg0[7]),
        .I1(in9[39]),
        .I2(in9[7]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[7] ),
        .I1(slv_reg7[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[7]),
        .I5(slv_reg6[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg0[8]),
        .I1(in9[40]),
        .I2(in9[8]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[8] ),
        .I1(slv_reg7[8]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[8]),
        .I5(slv_reg6[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg0[9]),
        .I1(in9[41]),
        .I2(in9[9]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\slv_reg5_reg_n_0_[9] ),
        .I1(slv_reg7[9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg4[9]),
        .I5(slv_reg6[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h47000000)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h47000000)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h47000000)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[1]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h47000000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(in9[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(in9[10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(in9[11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(in9[12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(in9[13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(in9[14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(in9[15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(in9[16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(in9[17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(in9[18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(in9[19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(in9[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(in9[20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(in9[21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(in9[22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(in9[23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(in9[24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(in9[25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(in9[26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(in9[27]),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(in9[28]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(in9[29]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(in9[2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(in9[30]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(in9[31]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(in9[3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(in9[4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(in9[5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(in9[6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(in9[7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(in9[8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(in9[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000A80800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(mem_logic__2),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A80800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(mem_logic__2),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A80800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(mem_logic__2),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[2]),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[31]_i_3 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(mem_logic__2));
  LUT6 #(
    .INIT(64'h0000A80800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(mem_logic__2),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(in9[32]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(in9[42]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(in9[43]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(in9[44]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(in9[45]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(in9[46]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(in9[47]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(in9[48]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(in9[49]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(in9[50]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(in9[51]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(in9[33]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(in9[52]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(in9[53]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(in9[54]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(in9[55]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(in9[56]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(in9[57]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(in9[58]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(Q),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(in9[34]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(in9[35]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(in9[36]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(in9[37]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(in9[38]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(in9[39]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(in9[40]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(in9[41]),
        .R(SR));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [0]),
        .Q(slv_reg4[0]),
        .R(SR));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [10]),
        .Q(slv_reg4[10]),
        .R(SR));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [11]),
        .Q(slv_reg4[11]),
        .R(SR));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [12]),
        .Q(slv_reg4[12]),
        .R(SR));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [13]),
        .Q(slv_reg4[13]),
        .R(SR));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [14]),
        .Q(slv_reg4[14]),
        .R(SR));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [15]),
        .Q(slv_reg4[15]),
        .R(SR));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [16]),
        .Q(slv_reg4[16]),
        .R(SR));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [17]),
        .Q(slv_reg4[17]),
        .R(SR));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [18]),
        .Q(slv_reg4[18]),
        .R(SR));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [19]),
        .Q(slv_reg4[19]),
        .R(SR));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [1]),
        .Q(slv_reg4[1]),
        .R(SR));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [20]),
        .Q(slv_reg4[20]),
        .R(SR));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [21]),
        .Q(slv_reg4[21]),
        .R(SR));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [22]),
        .Q(slv_reg4[22]),
        .R(SR));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [23]),
        .Q(slv_reg4[23]),
        .R(SR));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [24]),
        .Q(slv_reg4[24]),
        .R(SR));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [25]),
        .Q(slv_reg4[25]),
        .R(SR));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [26]),
        .Q(slv_reg4[26]),
        .R(SR));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [27]),
        .Q(slv_reg4[27]),
        .R(SR));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [28]),
        .Q(slv_reg4[28]),
        .R(SR));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [29]),
        .Q(slv_reg4[29]),
        .R(SR));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [2]),
        .Q(slv_reg4[2]),
        .R(SR));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [30]),
        .Q(slv_reg4[30]),
        .R(SR));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [31]),
        .Q(slv_reg4[31]),
        .R(SR));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [3]),
        .Q(slv_reg4[3]),
        .R(SR));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [4]),
        .Q(slv_reg4[4]),
        .R(SR));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [5]),
        .Q(slv_reg4[5]),
        .R(SR));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [6]),
        .Q(slv_reg4[6]),
        .R(SR));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [7]),
        .Q(slv_reg4[7]),
        .R(SR));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [8]),
        .Q(slv_reg4[8]),
        .R(SR));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [9]),
        .Q(slv_reg4[9]),
        .R(SR));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [32]),
        .Q(\slv_reg5_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [42]),
        .Q(\slv_reg5_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [43]),
        .Q(\slv_reg5_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [44]),
        .Q(\slv_reg5_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [45]),
        .Q(\slv_reg5_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [46]),
        .Q(\slv_reg5_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [47]),
        .Q(\slv_reg5_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [48]),
        .Q(\slv_reg5_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [49]),
        .Q(\slv_reg5_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [50]),
        .Q(\slv_reg5_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [51]),
        .Q(\slv_reg5_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [33]),
        .Q(\slv_reg5_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [52]),
        .Q(\slv_reg5_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [53]),
        .Q(\slv_reg5_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [54]),
        .Q(\slv_reg5_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [55]),
        .Q(\slv_reg5_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [56]),
        .Q(\slv_reg5_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [57]),
        .Q(\slv_reg5_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [58]),
        .Q(\slv_reg5_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [59]),
        .Q(\slv_reg5_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [34]),
        .Q(\slv_reg5_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [35]),
        .Q(\slv_reg5_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [36]),
        .Q(\slv_reg5_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [37]),
        .Q(\slv_reg5_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [38]),
        .Q(\slv_reg5_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [39]),
        .Q(\slv_reg5_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [40]),
        .Q(\slv_reg5_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[27]_0 [41]),
        .Q(\slv_reg5_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h47000000)) 
    \slv_reg6[15]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg6[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h47000000)) 
    \slv_reg6[23]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg6[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h47000000)) 
    \slv_reg6[31]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg6[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888A0000000A000)) 
    \slv_reg6[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[1]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg6[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h47000000)) 
    \slv_reg6[7]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg6[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(SR));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(SR));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(SR));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(SR));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(SR));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(SR));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(SR));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(SR));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(SR));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(SR));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(SR));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(SR));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(SR));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(SR));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(SR));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(SR));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(SR));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(SR));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(SR));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(SR));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(SR));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(SR));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(SR));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(SR));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(SR));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(SR));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(SR));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(SR));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(SR));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(SR));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \slv_reg7[15]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg6[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \slv_reg7[23]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg6[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \slv_reg7[31]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg6[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \slv_reg7[7]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\slv_reg6[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(SR));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(SR));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(SR));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(SR));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(SR));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(SR));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(SR));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(SR));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(SR));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(SR));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(SR));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(SR));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(SR));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(SR));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(SR));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(SR));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(SR));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(SR));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(SR));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(SR));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(SR));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(SR));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(SR));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(SR));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(SR));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(SR));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(SR));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(SR));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(SR));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(SR));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(SR));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0800088800000000)) 
    spi_start_pulse_i_1
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wdata[0]),
        .I2(s00_axi_awaddr[0]),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\slv_reg0[31]_i_2_n_0 ),
        .O(spi_start_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_start_pulse_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_start_pulse_i_1_n_0),
        .Q(spi_start),
        .R(1'b0));
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
