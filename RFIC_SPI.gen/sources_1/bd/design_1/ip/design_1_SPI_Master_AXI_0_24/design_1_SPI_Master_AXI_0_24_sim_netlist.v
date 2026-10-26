// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Oct 26 17:28:21 2026
// Host        : Yousef-Machine running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yousef/Vivado_workspace/RFIC_SPI/RFIC_SPI.gen/sources_1/bd/design_1/ip/design_1_SPI_Master_AXI_0_24/design_1_SPI_Master_AXI_0_24_sim_netlist.v
// Design      : design_1_SPI_Master_AXI_0_24
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SPI_Master_AXI_0_24,SPI_Master_AXI,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SPI_Master_AXI,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_SPI_Master_AXI_0_24
   (miso,
    mosi,
    sclk,
    ss_n,
    ldb,
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
  output ldb;
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
  wire ldb;
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
  design_1_SPI_Master_AXI_0_24_SPI_Master_AXI U0
       (.axi_bvalid_reg(s00_axi_bvalid),
        .axi_rvalid_reg(s00_axi_rvalid),
        .ldb(ldb),
        .miso(miso),
        .mosi(mosi),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sclk(sclk),
        .ss_n(ss_n));
endmodule

(* ORIG_REF_NAME = "LDB_Controller_bg" *) 
module design_1_SPI_Master_AXI_0_24_LDB_Controller_bg
   (ldb_done,
    ldb,
    \state_reg[2]_0 ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    rst,
    s00_axi_aclk,
    Q,
    spi_tx_valid,
    ldb_trigger_reg,
    ldb_reg_reg_0);
  output ldb_done;
  output ldb;
  output \state_reg[2]_0 ;
  output \state_reg[1]_0 ;
  output \state_reg[1]_1 ;
  input rst;
  input s00_axi_aclk;
  input [0:0]Q;
  input spi_tx_valid;
  input ldb_trigger_reg;
  input ldb_reg_reg_0;

  wire [0:0]Q;
  wire [1:0]delay_count;
  wire \delay_count[0]_i_1_n_0 ;
  wire \delay_count[1]_i_1_n_0 ;
  wire done_reg_i_1_n_0;
  wire ldb;
  wire ldb_done;
  wire ldb_reg_i_1_n_0;
  wire ldb_reg_i_3_n_0;
  wire ldb_reg_reg_0;
  wire ldb_trigger_reg;
  wire \pulse_count[0]_i_1_n_0 ;
  wire \pulse_count[0]_i_2_n_0 ;
  wire \pulse_count[1]_i_1_n_0 ;
  wire \pulse_count[1]_i_2_n_0 ;
  wire \pulse_count_reg_n_0_[0] ;
  wire \pulse_count_reg_n_0_[1] ;
  wire rst;
  wire s00_axi_aclk;
  wire spi_tx_valid;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[2] ;

  LUT5 #(
    .INIT(32'hEFCC0020)) 
    \delay_count[0]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q),
        .I3(\state_reg_n_0_[0] ),
        .I4(delay_count[0]),
        .O(\delay_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFF4F000000800)) 
    \delay_count[1]_i_1 
       (.I0(delay_count[0]),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q),
        .I4(\state_reg_n_0_[0] ),
        .I5(delay_count[1]),
        .O(\delay_count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\delay_count[0]_i_1_n_0 ),
        .Q(delay_count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \delay_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\delay_count[1]_i_1_n_0 ),
        .Q(delay_count[1]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h02)) 
    done_reg_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg[1]_0 ),
        .O(done_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(done_reg_i_1_n_0),
        .Q(ldb_done),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    error_pending_i_9
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q),
        .I4(spi_tx_valid),
        .O(\state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFF7FF0000)) 
    ldb_reg_i_1
       (.I0(ldb_reg_reg_0),
        .I1(delay_count[1]),
        .I2(\state_reg_n_0_[0] ),
        .I3(delay_count[0]),
        .I4(ldb_reg_i_3_n_0),
        .I5(ldb),
        .O(ldb_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h405555FF)) 
    ldb_reg_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\pulse_count_reg_n_0_[0] ),
        .I2(\pulse_count_reg_n_0_[1] ),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg_n_0_[0] ),
        .O(ldb_reg_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ldb_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ldb_reg_i_1_n_0),
        .Q(ldb),
        .S(rst));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ldb_trigger_reg_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg[1]_0 ),
        .O(\state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hBABEBEBE40404040)) 
    \pulse_count[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(Q),
        .I4(\pulse_count[0]_i_2_n_0 ),
        .I5(\pulse_count_reg_n_0_[0] ),
        .O(\pulse_count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_count[0]_i_2 
       (.I0(delay_count[0]),
        .I1(delay_count[1]),
        .O(\pulse_count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \pulse_count[1]_i_1 
       (.I0(\pulse_count_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\pulse_count[1]_i_2_n_0 ),
        .I3(\pulse_count_reg_n_0_[1] ),
        .O(\pulse_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4541414141414141)) 
    \pulse_count[1]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(Q),
        .I4(delay_count[1]),
        .I5(delay_count[0]),
        .O(\pulse_count[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pulse_count[0]_i_1_n_0 ),
        .Q(\pulse_count_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pulse_count[1]_i_1_n_0 ),
        .Q(\pulse_count_reg_n_0_[1] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000FFFF45550000)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(delay_count[0]),
        .I2(Q),
        .I3(\state_reg[1]_0 ),
        .I4(state),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF55000000)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(delay_count[1]),
        .I2(Q),
        .I3(\state_reg_n_0_[0] ),
        .I4(state),
        .I5(\state_reg[1]_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F80)) 
    \state[2]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(state),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(ldb_trigger_reg),
        .I2(\state_reg_n_0_[0] ),
        .I3(Q),
        .I4(\state_reg[1]_0 ),
        .I5(\state[2]_i_3_n_0 ),
        .O(state));
  LUT6 #(
    .INIT(64'h8F8080808F8F8F8F)) 
    \state[2]_i_3 
       (.I0(\pulse_count_reg_n_0_[0] ),
        .I1(\pulse_count_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(delay_count[1]),
        .I4(delay_count[0]),
        .I5(Q),
        .O(\state[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "SPI_Master" *) 
module design_1_SPI_Master_AXI_0_24_SPI_Master
   (spi_rx_valid,
    spi_done,
    sclk,
    mosi,
    ss_n,
    Q,
    D,
    spi_tx_valid_reg_reg,
    E,
    \FSM_onehot_state_reg[0]_0 ,
    \rx_data_reg_reg[59]_0 ,
    rst,
    s00_axi_aclk,
    spi_tx_valid,
    mosi_reg_reg_0,
    s00_axi_araddr,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[1]_0 ,
    error_pending_reg,
    rx_pending,
    ldb_reg_reg,
    miso,
    tx_last);
  output spi_rx_valid;
  output spi_done;
  output sclk;
  output mosi;
  output ss_n;
  output [1:0]Q;
  output [0:0]D;
  output spi_tx_valid_reg_reg;
  output [0:0]E;
  output \FSM_onehot_state_reg[0]_0 ;
  output [59:0]\rx_data_reg_reg[59]_0 ;
  input rst;
  input s00_axi_aclk;
  input spi_tx_valid;
  input [59:0]mosi_reg_reg_0;
  input [2:0]s00_axi_araddr;
  input \axi_rdata_reg[1] ;
  input [1:0]\axi_rdata_reg[1]_0 ;
  input error_pending_reg;
  input rx_pending;
  input ldb_reg_reg;
  input miso;
  input tx_last;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1] ;
  wire [1:0]\axi_rdata_reg[1]_0 ;
  wire [5:0]bit_count;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[4]_i_1_n_0 ;
  wire \bit_count[5]_i_1_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire \bit_count_reg_n_0_[3] ;
  wire \bit_count_reg_n_0_[4] ;
  wire \bit_count_reg_n_0_[5] ;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[1]_i_1_n_0 ;
  wire \clk_count[2]_i_1_n_0 ;
  wire \clk_count[2]_i_2_n_0 ;
  wire \clk_count_reg_n_0_[0] ;
  wire \clk_count_reg_n_0_[1] ;
  wire \clk_count_reg_n_0_[2] ;
  wire current_last_i_1_n_0;
  wire current_last_reg_n_0;
  wire done_reg;
  wire error_pending_reg;
  wire [58:1]in7;
  wire [59:1]in9;
  wire ldb_reg_reg;
  wire miso;
  wire mosi;
  wire mosi_reg;
  wire mosi_reg_i_2_n_0;
  wire mosi_reg_i_4_n_0;
  wire [59:0]mosi_reg_reg_0;
  wire p_1_in;
  wire rst;
  wire rx_data_reg;
  wire [59:0]\rx_data_reg_reg[59]_0 ;
  wire rx_pending;
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
  wire \rx_shift[59]_i_1_n_0 ;
  wire \rx_shift[59]_i_2_n_0 ;
  wire \rx_shift[5]_i_1_n_0 ;
  wire \rx_shift[6]_i_1_n_0 ;
  wire \rx_shift[7]_i_1_n_0 ;
  wire \rx_shift[8]_i_1_n_0 ;
  wire \rx_shift[9]_i_1_n_0 ;
  wire \rx_shift_reg_n_0_[59] ;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire sclk;
  wire sclk_reg_i_1_n_0;
  wire sclk_reg_i_2_n_0;
  wire sclk_reg_i_3_n_0;
  wire spi_done;
  wire spi_rx_valid;
  wire spi_tx_valid;
  wire spi_tx_valid_reg_reg;
  wire ss_n;
  wire ss_reg;
  wire ss_reg_i_1_n_0;
  wire ss_reg_i_3_n_0;
  wire tx_last;
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
  wire \tx_shift[58]_i_2_n_0 ;
  wire \tx_shift[58]_i_3_n_0 ;
  wire \tx_shift[5]_i_1_n_0 ;
  wire \tx_shift[6]_i_1_n_0 ;
  wire \tx_shift[7]_i_1_n_0 ;
  wire \tx_shift[8]_i_1_n_0 ;
  wire \tx_shift[9]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\bit_count_reg_n_0_[3] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[5] ),
        .I4(\bit_count_reg_n_0_[4] ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[4] ),
        .I2(\bit_count_reg_n_0_[5] ),
        .I3(\FSM_onehot_state[3]_i_2_n_0 ),
        .I4(\bit_count_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(current_last_reg_n_0),
        .I1(rx_data_reg),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state[5]_i_3_n_0 ),
        .I1(sclk_reg_i_2_n_0),
        .I2(done_reg),
        .I3(rx_data_reg),
        .I4(spi_tx_valid),
        .I5(ss_reg_i_3_n_0),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(rx_data_reg),
        .I1(current_last_reg_n_0),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(done_reg),
        .Q(Q[0]),
        .S(rst));
  (* FSM_ENCODED_STATES = "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(rx_data_reg),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(done_reg),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:000001,shift_high:000100,shift_low:000010,word_end:001000,wait_word:100000,cs_release:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_state[5]_i_2_n_0 ),
        .Q(Q[1]),
        .R(rst));
  LUT6 #(
    .INIT(64'hEEFFF000EE00F000)) 
    \axi_rdata[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\axi_rdata_reg[1]_0 [1]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(\axi_rdata_reg[1]_0 [0]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1] ),
        .O(D),
        .S(s00_axi_araddr[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .O(bit_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bit_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bit_count[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .O(bit_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bit_count[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .O(bit_count[3]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \bit_count[4]_i_1 
       (.I0(\bit_count_reg_n_0_[3] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[4] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bit_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF20FF20FF20)) 
    \bit_count[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(sclk_reg_i_2_n_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(spi_tx_valid),
        .O(\bit_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \bit_count[5]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[4] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\FSM_onehot_state[3]_i_2_n_0 ),
        .I4(\bit_count_reg_n_0_[3] ),
        .I5(\bit_count_reg_n_0_[5] ),
        .O(bit_count[5]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[5]_i_1_n_0 ),
        .D(bit_count[0]),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[5]_i_1_n_0 ),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[5]_i_1_n_0 ),
        .D(bit_count[2]),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[5]_i_1_n_0 ),
        .D(bit_count[3]),
        .Q(\bit_count_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[5]_i_1_n_0 ),
        .D(\bit_count[4]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[5]_i_1_n_0 ),
        .D(bit_count[5]),
        .Q(\bit_count_reg_n_0_[5] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h00000015FFFFFF00)) 
    \clk_count[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(spi_tx_valid),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\clk_count_reg_n_0_[0] ),
        .O(\clk_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h033355550000AAAA)) 
    \clk_count[1]_i_1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(spi_tx_valid),
        .I4(\FSM_onehot_state[5]_i_3_n_0 ),
        .I5(\clk_count_reg_n_0_[1] ),
        .O(\clk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0EEEFFFFE0000000)) 
    \clk_count[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\clk_count_reg_n_0_[0] ),
        .I3(\clk_count_reg_n_0_[1] ),
        .I4(\clk_count[2]_i_2_n_0 ),
        .I5(\clk_count_reg_n_0_[2] ),
        .O(\clk_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \clk_count[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(spi_tx_valid),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\clk_count[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_count[0]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_count[1]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_count[2]_i_1_n_0 ),
        .Q(\clk_count_reg_n_0_[2] ),
        .R(rst));
  LUT5 #(
    .INIT(32'hBBBF8880)) 
    current_last_i_1
       (.I0(tx_last),
        .I1(spi_tx_valid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(current_last_reg_n_0),
        .O(current_last_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_last_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(current_last_i_1_n_0),
        .Q(current_last_reg_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    done_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(done_reg),
        .Q(spi_done),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ldb_reg_i_2
       (.I0(Q[0]),
        .I1(ldb_reg_reg),
        .O(\FSM_onehot_state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    mosi_reg_i_2
       (.I0(mosi_reg),
        .I1(done_reg),
        .I2(\bit_count[5]_i_1_n_0 ),
        .I3(mosi),
        .O(mosi_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    mosi_reg_i_3
       (.I0(Q[0]),
        .I1(spi_tx_valid),
        .I2(Q[1]),
        .I3(mosi_reg_reg_0[59]),
        .I4(mosi_reg_i_4_n_0),
        .O(mosi_reg));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    mosi_reg_i_4
       (.I0(rx_data_reg),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(mosi_reg_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mosi_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(mosi_reg_i_2_n_0),
        .Q(mosi),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[1]),
        .Q(\rx_data_reg_reg[59]_0 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[11]),
        .Q(\rx_data_reg_reg[59]_0 [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[12]),
        .Q(\rx_data_reg_reg[59]_0 [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[13]),
        .Q(\rx_data_reg_reg[59]_0 [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[14]),
        .Q(\rx_data_reg_reg[59]_0 [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[15]),
        .Q(\rx_data_reg_reg[59]_0 [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[16]),
        .Q(\rx_data_reg_reg[59]_0 [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[17]),
        .Q(\rx_data_reg_reg[59]_0 [16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[18]),
        .Q(\rx_data_reg_reg[59]_0 [17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[19]),
        .Q(\rx_data_reg_reg[59]_0 [18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[20]),
        .Q(\rx_data_reg_reg[59]_0 [19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[2]),
        .Q(\rx_data_reg_reg[59]_0 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[21]),
        .Q(\rx_data_reg_reg[59]_0 [20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[22]),
        .Q(\rx_data_reg_reg[59]_0 [21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[23]),
        .Q(\rx_data_reg_reg[59]_0 [22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[24]),
        .Q(\rx_data_reg_reg[59]_0 [23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[25]),
        .Q(\rx_data_reg_reg[59]_0 [24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[26]),
        .Q(\rx_data_reg_reg[59]_0 [25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[27]),
        .Q(\rx_data_reg_reg[59]_0 [26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[28]),
        .Q(\rx_data_reg_reg[59]_0 [27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[29]),
        .Q(\rx_data_reg_reg[59]_0 [28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[30]),
        .Q(\rx_data_reg_reg[59]_0 [29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[3]),
        .Q(\rx_data_reg_reg[59]_0 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[31]),
        .Q(\rx_data_reg_reg[59]_0 [30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[32]),
        .Q(\rx_data_reg_reg[59]_0 [31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[32] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[33]),
        .Q(\rx_data_reg_reg[59]_0 [32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[33] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[34]),
        .Q(\rx_data_reg_reg[59]_0 [33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[34] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[35]),
        .Q(\rx_data_reg_reg[59]_0 [34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[35] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[36]),
        .Q(\rx_data_reg_reg[59]_0 [35]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[36] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[37]),
        .Q(\rx_data_reg_reg[59]_0 [36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[37] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[38]),
        .Q(\rx_data_reg_reg[59]_0 [37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[38] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[39]),
        .Q(\rx_data_reg_reg[59]_0 [38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[39] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[40]),
        .Q(\rx_data_reg_reg[59]_0 [39]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[4]),
        .Q(\rx_data_reg_reg[59]_0 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[40] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[41]),
        .Q(\rx_data_reg_reg[59]_0 [40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[41] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[42]),
        .Q(\rx_data_reg_reg[59]_0 [41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[42] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[43]),
        .Q(\rx_data_reg_reg[59]_0 [42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[43] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[44]),
        .Q(\rx_data_reg_reg[59]_0 [43]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[44] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[45]),
        .Q(\rx_data_reg_reg[59]_0 [44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[45] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[46]),
        .Q(\rx_data_reg_reg[59]_0 [45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[46] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[47]),
        .Q(\rx_data_reg_reg[59]_0 [46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[47] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[48]),
        .Q(\rx_data_reg_reg[59]_0 [47]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[48] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[49]),
        .Q(\rx_data_reg_reg[59]_0 [48]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[49] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[50]),
        .Q(\rx_data_reg_reg[59]_0 [49]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[5]),
        .Q(\rx_data_reg_reg[59]_0 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[50] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[51]),
        .Q(\rx_data_reg_reg[59]_0 [50]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[51] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[52]),
        .Q(\rx_data_reg_reg[59]_0 [51]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[52] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[53]),
        .Q(\rx_data_reg_reg[59]_0 [52]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[53] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[54]),
        .Q(\rx_data_reg_reg[59]_0 [53]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[54] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[55]),
        .Q(\rx_data_reg_reg[59]_0 [54]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[55] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[56]),
        .Q(\rx_data_reg_reg[59]_0 [55]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[56] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[57]),
        .Q(\rx_data_reg_reg[59]_0 [56]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[57] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[58]),
        .Q(\rx_data_reg_reg[59]_0 [57]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[58] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[59]),
        .Q(\rx_data_reg_reg[59]_0 [58]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[59] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(\rx_shift_reg_n_0_[59] ),
        .Q(\rx_data_reg_reg[59]_0 [59]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[6]),
        .Q(\rx_data_reg_reg[59]_0 [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[7]),
        .Q(\rx_data_reg_reg[59]_0 [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[8]),
        .Q(\rx_data_reg_reg[59]_0 [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[9]),
        .Q(\rx_data_reg_reg[59]_0 [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rx_data_reg),
        .D(in9[10]),
        .Q(\rx_data_reg_reg[59]_0 [9]),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \rx_low_reg[31]_i_1 
       (.I0(spi_rx_valid),
        .I1(rx_pending),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(miso),
        .O(\rx_shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[10]),
        .O(\rx_shift[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[11]),
        .O(\rx_shift[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[12]),
        .O(\rx_shift[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[13]),
        .O(\rx_shift[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[14]),
        .O(\rx_shift[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[15]),
        .O(\rx_shift[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[16]),
        .O(\rx_shift[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[17]),
        .O(\rx_shift[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[18]),
        .O(\rx_shift[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[19]),
        .O(\rx_shift[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[1]),
        .O(\rx_shift[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[20]),
        .O(\rx_shift[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[21]),
        .O(\rx_shift[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[22]),
        .O(\rx_shift[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[23]),
        .O(\rx_shift[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[24]),
        .O(\rx_shift[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[25]),
        .O(\rx_shift[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[26]),
        .O(\rx_shift[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[27]),
        .O(\rx_shift[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[28]),
        .O(\rx_shift[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[29]),
        .O(\rx_shift[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[2]),
        .O(\rx_shift[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[30]),
        .O(\rx_shift[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[31]),
        .O(\rx_shift[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[32]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[32]),
        .O(\rx_shift[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[33]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[33]),
        .O(\rx_shift[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[34]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[34]),
        .O(\rx_shift[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[35]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[35]),
        .O(\rx_shift[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[36]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[36]),
        .O(\rx_shift[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[37]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[37]),
        .O(\rx_shift[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[38]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[38]),
        .O(\rx_shift[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[39]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[39]),
        .O(\rx_shift[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[3]),
        .O(\rx_shift[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[40]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[40]),
        .O(\rx_shift[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[41]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[41]),
        .O(\rx_shift[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[42]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[42]),
        .O(\rx_shift[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[43]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[43]),
        .O(\rx_shift[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[44]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[44]),
        .O(\rx_shift[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[45]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[45]),
        .O(\rx_shift[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[46]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[46]),
        .O(\rx_shift[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[47]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[47]),
        .O(\rx_shift[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[48]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[48]),
        .O(\rx_shift[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[49]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[49]),
        .O(\rx_shift[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[4]),
        .O(\rx_shift[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[50]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[50]),
        .O(\rx_shift[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[51]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[51]),
        .O(\rx_shift[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[52]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[52]),
        .O(\rx_shift[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[53]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[53]),
        .O(\rx_shift[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[54]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[54]),
        .O(\rx_shift[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[55]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[55]),
        .O(\rx_shift[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[56]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[56]),
        .O(\rx_shift[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[57]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[57]),
        .O(\rx_shift[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[58]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[58]),
        .O(\rx_shift[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \rx_shift[59]_i_1 
       (.I0(ss_reg_i_3_n_0),
        .I1(spi_tx_valid),
        .I2(\clk_count_reg_n_0_[1] ),
        .I3(\clk_count_reg_n_0_[0] ),
        .I4(\clk_count_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\rx_shift[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[59]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[59]),
        .O(\rx_shift[59]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[5]),
        .O(\rx_shift[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[6]),
        .O(\rx_shift[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[7]),
        .O(\rx_shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[8]),
        .O(\rx_shift[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[9]),
        .O(\rx_shift[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[0]_i_1_n_0 ),
        .Q(in9[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[10]_i_1_n_0 ),
        .Q(in9[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[11]_i_1_n_0 ),
        .Q(in9[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[12]_i_1_n_0 ),
        .Q(in9[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[13]_i_1_n_0 ),
        .Q(in9[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[14]_i_1_n_0 ),
        .Q(in9[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[15]_i_1_n_0 ),
        .Q(in9[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[16]_i_1_n_0 ),
        .Q(in9[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[17]_i_1_n_0 ),
        .Q(in9[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[18]_i_1_n_0 ),
        .Q(in9[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[19]_i_1_n_0 ),
        .Q(in9[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[1]_i_1_n_0 ),
        .Q(in9[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[20]_i_1_n_0 ),
        .Q(in9[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[21]_i_1_n_0 ),
        .Q(in9[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[22]_i_1_n_0 ),
        .Q(in9[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[23]_i_1_n_0 ),
        .Q(in9[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[24]_i_1_n_0 ),
        .Q(in9[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[25]_i_1_n_0 ),
        .Q(in9[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[26]_i_1_n_0 ),
        .Q(in9[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[27]_i_1_n_0 ),
        .Q(in9[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[28]_i_1_n_0 ),
        .Q(in9[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[29]_i_1_n_0 ),
        .Q(in9[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[2]_i_1_n_0 ),
        .Q(in9[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[30]_i_1_n_0 ),
        .Q(in9[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[31]_i_1_n_0 ),
        .Q(in9[32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[32]_i_1_n_0 ),
        .Q(in9[33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[33]_i_1_n_0 ),
        .Q(in9[34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[34]_i_1_n_0 ),
        .Q(in9[35]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[35]_i_1_n_0 ),
        .Q(in9[36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[36]_i_1_n_0 ),
        .Q(in9[37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[37]_i_1_n_0 ),
        .Q(in9[38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[38]_i_1_n_0 ),
        .Q(in9[39]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[39]_i_1_n_0 ),
        .Q(in9[40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[3]_i_1_n_0 ),
        .Q(in9[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[40]_i_1_n_0 ),
        .Q(in9[41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[41]_i_1_n_0 ),
        .Q(in9[42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[42]_i_1_n_0 ),
        .Q(in9[43]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[43]_i_1_n_0 ),
        .Q(in9[44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[44]_i_1_n_0 ),
        .Q(in9[45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[45] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[45]_i_1_n_0 ),
        .Q(in9[46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[46] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[46]_i_1_n_0 ),
        .Q(in9[47]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[47] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[47]_i_1_n_0 ),
        .Q(in9[48]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[48] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[48]_i_1_n_0 ),
        .Q(in9[49]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[49] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[49]_i_1_n_0 ),
        .Q(in9[50]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[4]_i_1_n_0 ),
        .Q(in9[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[50] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[50]_i_1_n_0 ),
        .Q(in9[51]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[51] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[51]_i_1_n_0 ),
        .Q(in9[52]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[52] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[52]_i_1_n_0 ),
        .Q(in9[53]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[53] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[53]_i_1_n_0 ),
        .Q(in9[54]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[54] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[54]_i_1_n_0 ),
        .Q(in9[55]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[55] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[55]_i_1_n_0 ),
        .Q(in9[56]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[56] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[56]_i_1_n_0 ),
        .Q(in9[57]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[57] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[57]_i_1_n_0 ),
        .Q(in9[58]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[58] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[58]_i_1_n_0 ),
        .Q(in9[59]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[59] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[59]_i_2_n_0 ),
        .Q(\rx_shift_reg_n_0_[59] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[5]_i_1_n_0 ),
        .Q(in9[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[6]_i_1_n_0 ),
        .Q(in9[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[7]_i_1_n_0 ),
        .Q(in9[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[8]_i_1_n_0 ),
        .Q(in9[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\rx_shift[59]_i_1_n_0 ),
        .D(\rx_shift[9]_i_1_n_0 ),
        .Q(in9[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_data_reg),
        .Q(spi_rx_valid),
        .R(rst));
  LUT6 #(
    .INIT(64'hCC00CC07CC00CC00)) 
    sclk_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(sclk_reg_i_2_n_0),
        .I2(sclk_reg_i_3_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(rx_data_reg),
        .I5(sclk),
        .O(sclk_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    sclk_reg_i_2
       (.I0(\clk_count_reg_n_0_[1] ),
        .I1(\clk_count_reg_n_0_[0] ),
        .I2(\clk_count_reg_n_0_[2] ),
        .O(sclk_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sclk_reg_i_3
       (.I0(done_reg),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(sclk_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_reg_i_1_n_0),
        .Q(sclk),
        .R(rst));
  LUT6 #(
    .INIT(64'h0004000400040000)) 
    \spi_tx_data_reg[59]_i_2 
       (.I0(spi_tx_valid),
        .I1(error_pending_reg),
        .I2(rx_pending),
        .I3(spi_rx_valid),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(spi_tx_valid_reg_reg));
  LUT6 #(
    .INIT(64'hAEAAAEAEA2AAA2A2)) 
    ss_reg_i_1
       (.I0(ss_reg),
        .I1(ss_reg_i_3_n_0),
        .I2(done_reg),
        .I3(current_last_reg_n_0),
        .I4(rx_data_reg),
        .I5(ss_n),
        .O(ss_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    ss_reg_i_2
       (.I0(Q[0]),
        .I1(spi_tx_valid),
        .I2(done_reg),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ss_reg));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ss_reg_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(ss_reg_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ss_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ss_reg_i_1_n_0),
        .Q(ss_n),
        .S(rst));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_shift[0]_i_1 
       (.I0(mosi_reg_reg_0[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\tx_shift[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[10]_i_1 
       (.I0(in7[10]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[10]),
        .O(\tx_shift[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[11]_i_1 
       (.I0(in7[11]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[11]),
        .O(\tx_shift[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[12]_i_1 
       (.I0(in7[12]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[12]),
        .O(\tx_shift[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[13]_i_1 
       (.I0(in7[13]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[13]),
        .O(\tx_shift[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[14]_i_1 
       (.I0(in7[14]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[14]),
        .O(\tx_shift[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[15]_i_1 
       (.I0(in7[15]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[15]),
        .O(\tx_shift[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[16]_i_1 
       (.I0(in7[16]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[16]),
        .O(\tx_shift[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[17]_i_1 
       (.I0(in7[17]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[17]),
        .O(\tx_shift[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[18]_i_1 
       (.I0(in7[18]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[18]),
        .O(\tx_shift[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[19]_i_1 
       (.I0(in7[19]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[19]),
        .O(\tx_shift[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[1]_i_1 
       (.I0(in7[1]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[1]),
        .O(\tx_shift[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[20]_i_1 
       (.I0(in7[20]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[20]),
        .O(\tx_shift[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[21]_i_1 
       (.I0(in7[21]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[21]),
        .O(\tx_shift[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[22]_i_1 
       (.I0(in7[22]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[22]),
        .O(\tx_shift[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[23]_i_1 
       (.I0(in7[23]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[23]),
        .O(\tx_shift[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[24]_i_1 
       (.I0(in7[24]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[24]),
        .O(\tx_shift[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[25]_i_1 
       (.I0(in7[25]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[25]),
        .O(\tx_shift[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[26]_i_1 
       (.I0(in7[26]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[26]),
        .O(\tx_shift[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[27]_i_1 
       (.I0(in7[27]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[27]),
        .O(\tx_shift[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[28]_i_1 
       (.I0(in7[28]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[28]),
        .O(\tx_shift[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[29]_i_1 
       (.I0(in7[29]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[29]),
        .O(\tx_shift[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[2]_i_1 
       (.I0(in7[2]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[2]),
        .O(\tx_shift[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[30]_i_1 
       (.I0(in7[30]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[30]),
        .O(\tx_shift[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[31]_i_1 
       (.I0(in7[31]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[31]),
        .O(\tx_shift[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[32]_i_1 
       (.I0(in7[32]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[32]),
        .O(\tx_shift[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[33]_i_1 
       (.I0(in7[33]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[33]),
        .O(\tx_shift[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[34]_i_1 
       (.I0(in7[34]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[34]),
        .O(\tx_shift[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[35]_i_1 
       (.I0(in7[35]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[35]),
        .O(\tx_shift[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[36]_i_1 
       (.I0(in7[36]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[36]),
        .O(\tx_shift[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[37]_i_1 
       (.I0(in7[37]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[37]),
        .O(\tx_shift[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[38]_i_1 
       (.I0(in7[38]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[38]),
        .O(\tx_shift[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[39]_i_1 
       (.I0(in7[39]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[39]),
        .O(\tx_shift[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[3]_i_1 
       (.I0(in7[3]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[3]),
        .O(\tx_shift[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[40]_i_1 
       (.I0(in7[40]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[40]),
        .O(\tx_shift[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[41]_i_1 
       (.I0(in7[41]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[41]),
        .O(\tx_shift[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[42]_i_1 
       (.I0(in7[42]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[42]),
        .O(\tx_shift[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[43]_i_1 
       (.I0(in7[43]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[43]),
        .O(\tx_shift[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[44]_i_1 
       (.I0(in7[44]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[44]),
        .O(\tx_shift[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[45]_i_1 
       (.I0(in7[45]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[45]),
        .O(\tx_shift[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[46]_i_1 
       (.I0(in7[46]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[46]),
        .O(\tx_shift[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[47]_i_1 
       (.I0(in7[47]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[47]),
        .O(\tx_shift[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[48]_i_1 
       (.I0(in7[48]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[48]),
        .O(\tx_shift[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[49]_i_1 
       (.I0(in7[49]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[49]),
        .O(\tx_shift[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[4]_i_1 
       (.I0(in7[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[4]),
        .O(\tx_shift[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[50]_i_1 
       (.I0(in7[50]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[50]),
        .O(\tx_shift[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[51]_i_1 
       (.I0(in7[51]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[51]),
        .O(\tx_shift[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[52]_i_1 
       (.I0(in7[52]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[52]),
        .O(\tx_shift[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[53]_i_1 
       (.I0(in7[53]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[53]),
        .O(\tx_shift[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[54]_i_1 
       (.I0(in7[54]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[54]),
        .O(\tx_shift[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[55]_i_1 
       (.I0(in7[55]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[55]),
        .O(\tx_shift[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[56]_i_1 
       (.I0(in7[56]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[56]),
        .O(\tx_shift[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[57]_i_1 
       (.I0(in7[57]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[57]),
        .O(\tx_shift[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \tx_shift[58]_i_1 
       (.I0(ss_reg_i_3_n_0),
        .I1(spi_tx_valid),
        .I2(\tx_shift[58]_i_3_n_0 ),
        .I3(\clk_count_reg_n_0_[1] ),
        .I4(\clk_count_reg_n_0_[0] ),
        .I5(\clk_count_reg_n_0_[2] ),
        .O(\tx_shift[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[58]_i_2 
       (.I0(in7[58]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[58]),
        .O(\tx_shift[58]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \tx_shift[58]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[4] ),
        .I3(\bit_count_reg_n_0_[5] ),
        .I4(\FSM_onehot_state[3]_i_2_n_0 ),
        .I5(\bit_count_reg_n_0_[3] ),
        .O(\tx_shift[58]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[5]_i_1 
       (.I0(in7[5]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[5]),
        .O(\tx_shift[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[6]_i_1 
       (.I0(in7[6]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[6]),
        .O(\tx_shift[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[7]_i_1 
       (.I0(in7[7]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[7]),
        .O(\tx_shift[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[8]_i_1 
       (.I0(in7[8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[8]),
        .O(\tx_shift[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \tx_shift[9]_i_1 
       (.I0(in7[9]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mosi_reg_reg_0[9]),
        .O(\tx_shift[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[0]_i_1_n_0 ),
        .Q(in7[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[10]_i_1_n_0 ),
        .Q(in7[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[11]_i_1_n_0 ),
        .Q(in7[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[12]_i_1_n_0 ),
        .Q(in7[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[13]_i_1_n_0 ),
        .Q(in7[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[14]_i_1_n_0 ),
        .Q(in7[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[15]_i_1_n_0 ),
        .Q(in7[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[16]_i_1_n_0 ),
        .Q(in7[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[17]_i_1_n_0 ),
        .Q(in7[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[18]_i_1_n_0 ),
        .Q(in7[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[19]_i_1_n_0 ),
        .Q(in7[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[1]_i_1_n_0 ),
        .Q(in7[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[20]_i_1_n_0 ),
        .Q(in7[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[21]_i_1_n_0 ),
        .Q(in7[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[22]_i_1_n_0 ),
        .Q(in7[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[23]_i_1_n_0 ),
        .Q(in7[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[24]_i_1_n_0 ),
        .Q(in7[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[25]_i_1_n_0 ),
        .Q(in7[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[26]_i_1_n_0 ),
        .Q(in7[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[27]_i_1_n_0 ),
        .Q(in7[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[28]_i_1_n_0 ),
        .Q(in7[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[29]_i_1_n_0 ),
        .Q(in7[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[2]_i_1_n_0 ),
        .Q(in7[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[30]_i_1_n_0 ),
        .Q(in7[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[31]_i_1_n_0 ),
        .Q(in7[32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[32]_i_1_n_0 ),
        .Q(in7[33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[33]_i_1_n_0 ),
        .Q(in7[34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[34]_i_1_n_0 ),
        .Q(in7[35]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[35]_i_1_n_0 ),
        .Q(in7[36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[36]_i_1_n_0 ),
        .Q(in7[37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[37]_i_1_n_0 ),
        .Q(in7[38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[38]_i_1_n_0 ),
        .Q(in7[39]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[39]_i_1_n_0 ),
        .Q(in7[40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[3]_i_1_n_0 ),
        .Q(in7[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[40] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[40]_i_1_n_0 ),
        .Q(in7[41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[41] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[41]_i_1_n_0 ),
        .Q(in7[42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[42]_i_1_n_0 ),
        .Q(in7[43]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[43]_i_1_n_0 ),
        .Q(in7[44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[44]_i_1_n_0 ),
        .Q(in7[45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[45] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[45]_i_1_n_0 ),
        .Q(in7[46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[46] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[46]_i_1_n_0 ),
        .Q(in7[47]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[47] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[47]_i_1_n_0 ),
        .Q(in7[48]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[48] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[48]_i_1_n_0 ),
        .Q(in7[49]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[49] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[49]_i_1_n_0 ),
        .Q(in7[50]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[4]_i_1_n_0 ),
        .Q(in7[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[50] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[50]_i_1_n_0 ),
        .Q(in7[51]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[51] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[51]_i_1_n_0 ),
        .Q(in7[52]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[52] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[52]_i_1_n_0 ),
        .Q(in7[53]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[53] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[53]_i_1_n_0 ),
        .Q(in7[54]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[54] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[54]_i_1_n_0 ),
        .Q(in7[55]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[55] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[55]_i_1_n_0 ),
        .Q(in7[56]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[56] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[56]_i_1_n_0 ),
        .Q(in7[57]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[57] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[57]_i_1_n_0 ),
        .Q(in7[58]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[58] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[58]_i_2_n_0 ),
        .Q(p_1_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[5]_i_1_n_0 ),
        .Q(in7[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[6]_i_1_n_0 ),
        .Q(in7[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[7]_i_1_n_0 ),
        .Q(in7[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[8]_i_1_n_0 ),
        .Q(in7[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\tx_shift[58]_i_1_n_0 ),
        .D(\tx_shift[9]_i_1_n_0 ),
        .Q(in7[10]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "SPI_Master_AXI" *) 
module design_1_SPI_Master_AXI_0_24_SPI_Master_AXI
   (axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_awready,
    axi_bvalid_reg,
    s00_axi_wready,
    s00_axi_arready,
    sclk,
    mosi,
    ss_n,
    ldb,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_wvalid,
    miso,
    s00_axi_bready,
    s00_axi_rready);
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_awready;
  output axi_bvalid_reg;
  output s00_axi_wready;
  output s00_axi_arready;
  output sclk;
  output mosi;
  output ss_n;
  output ldb;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input miso;
  input s00_axi_bready;
  input s00_axi_rready;

  wire axi_bvalid_reg;
  wire [1:1]axi_rdata;
  wire axi_rvalid_reg;
  wire ldb;
  wire ldb_done;
  wire ldb_trigger_reg;
  wire miso;
  wire mosi;
  wire rst;
  wire [59:0]rx_data_reg;
  wire rx_low_reg;
  wire rx_pending;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sclk;
  wire spi_done;
  wire spi_rx_valid;
  wire [59:59]spi_tx_data;
  wire [58:0]spi_tx_data_reg;
  wire spi_tx_valid;
  wire ss_n;
  wire [1:1]tx_high_reg;
  wire tx_last;
  wire [1:1]tx_low_reg;
  wire u_axi_slave_n_11;
  wire u_ldb_controller_n_2;
  wire u_ldb_controller_n_3;
  wire u_ldb_controller_n_4;
  wire u_spi_master_n_10;
  wire u_spi_master_n_5;
  wire u_spi_master_n_6;
  wire u_spi_master_n_8;

  design_1_SPI_Master_AXI_0_24_SPI_Master_AXI_slave_lite_v1_0_S00_AXI u_axi_slave
       (.D(axi_rdata),
        .E(rx_low_reg),
        .Q({u_spi_master_n_5,u_spi_master_n_6}),
        .axi_bvalid_reg_0(axi_bvalid_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .error_pending_reg_0(u_spi_master_n_8),
        .error_pending_reg_1(u_ldb_controller_n_4),
        .ldb_done(ldb_done),
        .ldb_trigger_reg(ldb_trigger_reg),
        .ldb_trigger_reg_reg_0(u_ldb_controller_n_2),
        .rst(rst),
        .\rx_count_reg_reg[1]_0 (u_axi_slave_n_11),
        .\rx_high_reg_reg[27]_0 (rx_data_reg),
        .rx_pending(rx_pending),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .spi_done(spi_done),
        .spi_rx_valid(spi_rx_valid),
        .\spi_tx_data_reg_reg[59]_0 ({spi_tx_data,spi_tx_data_reg}),
        .spi_tx_valid(spi_tx_valid),
        .\tx_high_reg_reg[1]_0 ({tx_high_reg,tx_low_reg}),
        .tx_last(tx_last));
  design_1_SPI_Master_AXI_0_24_LDB_Controller_bg u_ldb_controller
       (.Q(u_spi_master_n_6),
        .ldb(ldb),
        .ldb_done(ldb_done),
        .ldb_reg_reg_0(u_spi_master_n_10),
        .ldb_trigger_reg(ldb_trigger_reg),
        .rst(rst),
        .s00_axi_aclk(s00_axi_aclk),
        .spi_tx_valid(spi_tx_valid),
        .\state_reg[1]_0 (u_ldb_controller_n_3),
        .\state_reg[1]_1 (u_ldb_controller_n_4),
        .\state_reg[2]_0 (u_ldb_controller_n_2));
  design_1_SPI_Master_AXI_0_24_SPI_Master u_spi_master
       (.D(axi_rdata),
        .E(rx_low_reg),
        .\FSM_onehot_state_reg[0]_0 (u_spi_master_n_10),
        .Q({u_spi_master_n_5,u_spi_master_n_6}),
        .\axi_rdata_reg[1] (u_axi_slave_n_11),
        .\axi_rdata_reg[1]_0 ({tx_high_reg,tx_low_reg}),
        .error_pending_reg(u_ldb_controller_n_2),
        .ldb_reg_reg(u_ldb_controller_n_3),
        .miso(miso),
        .mosi(mosi),
        .mosi_reg_reg_0({spi_tx_data,spi_tx_data_reg}),
        .rst(rst),
        .\rx_data_reg_reg[59]_0 (rx_data_reg),
        .rx_pending(rx_pending),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .sclk(sclk),
        .spi_done(spi_done),
        .spi_rx_valid(spi_rx_valid),
        .spi_tx_valid(spi_tx_valid),
        .spi_tx_valid_reg_reg(u_spi_master_n_8),
        .ss_n(ss_n),
        .tx_last(tx_last));
endmodule

(* ORIG_REF_NAME = "SPI_Master_AXI_slave_lite_v1_0_S00_AXI" *) 
module design_1_SPI_Master_AXI_0_24_SPI_Master_AXI_slave_lite_v1_0_S00_AXI
   (rx_pending,
    rst,
    tx_last,
    axi_bvalid_reg_0,
    spi_tx_valid,
    axi_rvalid_reg_0,
    ldb_trigger_reg,
    s00_axi_awready,
    \tx_high_reg_reg[1]_0 ,
    s00_axi_wready,
    \rx_count_reg_reg[1]_0 ,
    s00_axi_arready,
    \spi_tx_data_reg_reg[59]_0 ,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_arvalid,
    error_pending_reg_0,
    Q,
    s00_axi_wstrb,
    s00_axi_awvalid,
    spi_rx_valid,
    s00_axi_wdata,
    D,
    spi_done,
    ldb_done,
    s00_axi_aresetn,
    ldb_trigger_reg_reg_0,
    s00_axi_wvalid,
    error_pending_reg_1,
    s00_axi_bready,
    s00_axi_rready,
    E,
    \rx_high_reg_reg[27]_0 );
  output rx_pending;
  output rst;
  output tx_last;
  output axi_bvalid_reg_0;
  output spi_tx_valid;
  output axi_rvalid_reg_0;
  output ldb_trigger_reg;
  output s00_axi_awready;
  output [1:0]\tx_high_reg_reg[1]_0 ;
  output s00_axi_wready;
  output \rx_count_reg_reg[1]_0 ;
  output s00_axi_arready;
  output [59:0]\spi_tx_data_reg_reg[59]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input error_pending_reg_0;
  input [1:0]Q;
  input [3:0]s00_axi_wstrb;
  input s00_axi_awvalid;
  input spi_rx_valid;
  input [31:0]s00_axi_wdata;
  input [0:0]D;
  input spi_done;
  input ldb_done;
  input s00_axi_aresetn;
  input ldb_trigger_reg_reg_0;
  input s00_axi_wvalid;
  input error_pending_reg_1;
  input s00_axi_bready;
  input s00_axi_rready;
  input [0:0]E;
  input [59:0]\rx_high_reg_reg[27]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [4:2]aw_hold_addr;
  wire \aw_hold_addr[2]_i_1_n_0 ;
  wire \aw_hold_addr[3]_i_1_n_0 ;
  wire \aw_hold_addr[4]_i_1_n_0 ;
  wire aw_hold_valid;
  wire aw_hold_valid0;
  wire aw_hold_valid_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_reg_0;
  wire [31:0]axi_rdata;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire error_pending;
  wire error_pending_i_1_n_0;
  wire error_pending_i_2_n_0;
  wire error_pending_i_3_n_0;
  wire error_pending_i_4_n_0;
  wire error_pending_i_5_n_0;
  wire error_pending_i_6_n_0;
  wire error_pending_i_7_n_0;
  wire error_pending_i_8_n_0;
  wire error_pending_reg_0;
  wire error_pending_reg_1;
  wire ldb_done;
  wire ldb_done_pending;
  wire ldb_done_pending_i_1_n_0;
  wire ldb_done_pending_i_2_n_0;
  wire ldb_trigger_reg;
  wire ldb_trigger_reg_i_1_n_0;
  wire ldb_trigger_reg_reg_0;
  wire [7:0]p_3_in;
  wire [7:0]p_5_in;
  wire [31:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [1:1]result;
  wire rst;
  wire [31:0]rx_count_reg;
  wire \rx_count_reg[31]_i_1_n_0 ;
  wire \rx_count_reg[31]_i_3_n_0 ;
  wire [31:0]rx_count_reg_0;
  wire \rx_count_reg_reg[1]_0 ;
  wire [27:0]rx_high_reg;
  wire [59:0]\rx_high_reg_reg[27]_0 ;
  wire [31:0]rx_low_reg;
  wire rx_pending;
  wire rx_pending_i_1_n_0;
  wire rx_pending_i_2_n_0;
  wire rx_pending_i_3_n_0;
  wire rx_pending_i_4_n_0;
  wire rx_pending_i_5_n_0;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire spi_done;
  wire spi_done_pending;
  wire spi_done_pending_i_1_n_0;
  wire spi_done_pending_i_2_n_0;
  wire spi_rx_valid;
  wire \spi_tx_data_reg[59]_i_3_n_0 ;
  wire [59:0]\spi_tx_data_reg_reg[59]_0 ;
  wire spi_tx_valid;
  wire spi_tx_valid_reg;
  wire spi_tx_valid_reg_i_1_n_0;
  wire [3:0]strb;
  wire [27:0]tx_high_reg;
  wire \tx_high_reg[15]_i_1_n_0 ;
  wire \tx_high_reg[23]_i_1_n_0 ;
  wire \tx_high_reg[27]_i_1_n_0 ;
  wire \tx_high_reg[27]_i_2_n_0 ;
  wire \tx_high_reg[7]_i_1_n_0 ;
  wire [1:0]\tx_high_reg_reg[1]_0 ;
  wire tx_last;
  wire [31:0]tx_low_reg;
  wire \tx_low_reg[15]_i_1_n_0 ;
  wire \tx_low_reg[23]_i_1_n_0 ;
  wire \tx_low_reg[24]_i_1_n_0 ;
  wire \tx_low_reg[25]_i_1_n_0 ;
  wire \tx_low_reg[26]_i_1_n_0 ;
  wire \tx_low_reg[27]_i_1_n_0 ;
  wire \tx_low_reg[28]_i_1_n_0 ;
  wire \tx_low_reg[29]_i_1_n_0 ;
  wire \tx_low_reg[30]_i_1_n_0 ;
  wire \tx_low_reg[31]_i_1_n_0 ;
  wire \tx_low_reg[31]_i_2_n_0 ;
  wire \tx_low_reg[31]_i_3_n_0 ;
  wire \tx_low_reg[31]_i_4_n_0 ;
  wire \tx_low_reg[5]_i_1_n_0 ;
  wire \tx_low_reg[6]_i_1_n_0 ;
  wire \tx_low_reg[7]_i_1_n_0 ;
  wire \tx_low_reg[7]_i_2_n_0 ;
  wire [31:0]w_hold_data;
  wire \w_hold_data[0]_i_1_n_0 ;
  wire \w_hold_data[1]_i_1_n_0 ;
  wire \w_hold_data[2]_i_1_n_0 ;
  wire \w_hold_data[31]_i_1_n_0 ;
  wire \w_hold_data[3]_i_1_n_0 ;
  wire \w_hold_data[4]_i_1_n_0 ;
  wire [3:0]w_hold_strb;
  wire w_hold_valid_i_1_n_0;
  wire w_hold_valid_reg_n_0;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \aw_hold_addr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(axi_bvalid_reg_0),
        .I3(aw_hold_valid),
        .I4(aw_hold_addr[2]),
        .O(\aw_hold_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \aw_hold_addr[3]_i_1 
       (.I0(aw_hold_addr[3]),
        .I1(aw_hold_valid),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\aw_hold_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \aw_hold_addr[4]_i_1 
       (.I0(aw_hold_addr[4]),
        .I1(aw_hold_valid),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .O(\aw_hold_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aw_hold_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\aw_hold_addr[2]_i_1_n_0 ),
        .Q(aw_hold_addr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \aw_hold_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\aw_hold_addr[3]_i_1_n_0 ),
        .Q(aw_hold_addr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \aw_hold_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\aw_hold_addr[4]_i_1_n_0 ),
        .Q(aw_hold_addr[4]),
        .R(rst));
  LUT6 #(
    .INIT(64'hAAAA020200000200)) 
    aw_hold_valid_i_1
       (.I0(s00_axi_aresetn),
        .I1(w_hold_valid_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_bvalid_reg_0),
        .I5(aw_hold_valid),
        .O(aw_hold_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aw_hold_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_hold_valid_i_1_n_0),
        .Q(aw_hold_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5F5C5F5C5F5C5050)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(aw_hold_valid),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(w_hold_valid_reg_n_0),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(rst));
  LUT5 #(
    .INIT(32'h3FA030A0)) 
    \axi_rdata[0]_i_2 
       (.I0(tx_high_reg[0]),
        .I1(Q[0]),
        .I2(s00_axi_araddr[1]),
        .I3(s00_axi_araddr[0]),
        .I4(tx_low_reg[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[0]_i_3 
       (.I0(rx_count_reg[0]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[0]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[10]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[10]),
        .O(axi_rdata[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_2 
       (.I0(rx_count_reg[10]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[10]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[11]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[11]),
        .O(axi_rdata[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[11]_i_2 
       (.I0(rx_count_reg[11]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[11]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[12]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[12]),
        .O(axi_rdata[12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[12]_i_2 
       (.I0(rx_count_reg[12]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[12]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[13]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[13]),
        .O(axi_rdata[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[13]_i_2 
       (.I0(rx_count_reg[13]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[13]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[14]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[14]),
        .O(axi_rdata[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[14]_i_2 
       (.I0(rx_count_reg[14]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[14]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[15]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[15]),
        .O(axi_rdata[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_2 
       (.I0(rx_count_reg[15]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[15]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[16]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[16]),
        .O(axi_rdata[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_2 
       (.I0(rx_count_reg[16]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[16]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[17]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[17]),
        .O(axi_rdata[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_2 
       (.I0(rx_count_reg[17]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[17]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[18]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[18]),
        .O(axi_rdata[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_2 
       (.I0(rx_count_reg[18]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[18]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[19]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[19]),
        .O(axi_rdata[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_2 
       (.I0(rx_count_reg[19]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[19]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_3 
       (.I0(rx_count_reg[1]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[1]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[1]),
        .O(\rx_count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[20]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[20]),
        .O(axi_rdata[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_2 
       (.I0(rx_count_reg[20]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[20]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[21]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[21]),
        .O(axi_rdata[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_2 
       (.I0(rx_count_reg[21]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[21]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[22]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[22]),
        .O(axi_rdata[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_2 
       (.I0(rx_count_reg[22]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[22]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[23]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[23]),
        .O(axi_rdata[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_2 
       (.I0(rx_count_reg[23]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[23]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[24]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[24]),
        .O(axi_rdata[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_2 
       (.I0(rx_count_reg[24]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[24]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[25]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[25]),
        .O(axi_rdata[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_2 
       (.I0(rx_count_reg[25]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[25]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[26]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[26]),
        .O(axi_rdata[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_2 
       (.I0(rx_count_reg[26]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[26]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[27]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[27]),
        .O(axi_rdata[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_2 
       (.I0(rx_count_reg[27]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[27]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3000383830000808)) 
    \axi_rdata[28]_i_1 
       (.I0(tx_low_reg[28]),
        .I1(s00_axi_araddr[0]),
        .I2(s00_axi_araddr[2]),
        .I3(rx_count_reg[28]),
        .I4(s00_axi_araddr[1]),
        .I5(rx_low_reg[28]),
        .O(axi_rdata[28]));
  LUT6 #(
    .INIT(64'h3000383830000808)) 
    \axi_rdata[29]_i_1 
       (.I0(tx_low_reg[29]),
        .I1(s00_axi_araddr[0]),
        .I2(s00_axi_araddr[2]),
        .I3(rx_count_reg[29]),
        .I4(s00_axi_araddr[1]),
        .I5(rx_low_reg[29]),
        .O(axi_rdata[29]));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBB8B8B8)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(\axi_rdata[2]_i_3_n_0 ),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(\axi_rdata[2]_i_4_n_0 ),
        .O(axi_rdata[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_2 
       (.I0(rx_count_reg[2]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[2]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \axi_rdata[2]_i_3 
       (.I0(tx_low_reg[2]),
        .I1(s00_axi_araddr[0]),
        .I2(s00_axi_araddr[1]),
        .I3(tx_high_reg[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h444F)) 
    \axi_rdata[2]_i_4 
       (.I0(rx_pending_i_3_n_0),
        .I1(rx_pending_i_2_n_0),
        .I2(spi_rx_valid),
        .I3(rx_pending),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3000383830000808)) 
    \axi_rdata[30]_i_1 
       (.I0(tx_low_reg[30]),
        .I1(s00_axi_araddr[0]),
        .I2(s00_axi_araddr[2]),
        .I3(rx_count_reg[30]),
        .I4(s00_axi_araddr[1]),
        .I5(rx_low_reg[30]),
        .O(axi_rdata[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_rvalid_reg_0),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000383830000808)) 
    \axi_rdata[31]_i_2 
       (.I0(tx_low_reg[31]),
        .I1(s00_axi_araddr[0]),
        .I2(s00_axi_araddr[2]),
        .I3(rx_count_reg[31]),
        .I4(s00_axi_araddr[1]),
        .I5(rx_low_reg[31]),
        .O(axi_rdata[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFF22200020)) 
    \axi_rdata[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[3]),
        .I3(s00_axi_araddr[0]),
        .I4(spi_done_pending_i_1_n_0),
        .I5(\axi_rdata[3]_i_2_n_0 ),
        .O(axi_rdata[3]));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \axi_rdata[3]_i_2 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_araddr[2]),
        .I2(s00_axi_araddr[0]),
        .I3(tx_low_reg[3]),
        .I4(\axi_rdata[3]_i_3_n_0 ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \axi_rdata[3]_i_3 
       (.I0(rx_low_reg[3]),
        .I1(s00_axi_araddr[0]),
        .I2(rx_high_reg[3]),
        .I3(s00_axi_araddr[1]),
        .I4(rx_count_reg[3]),
        .I5(s00_axi_araddr[2]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3FA030A0)) 
    \axi_rdata[4]_i_2 
       (.I0(tx_high_reg[4]),
        .I1(ldb_trigger_reg_reg_0),
        .I2(s00_axi_araddr[1]),
        .I3(s00_axi_araddr[0]),
        .I4(tx_low_reg[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[4]_i_3 
       (.I0(rx_count_reg[4]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[4]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22200020)) 
    \axi_rdata[5]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[5]),
        .I3(s00_axi_araddr[0]),
        .I4(ldb_done_pending_i_1_n_0),
        .I5(\axi_rdata[5]_i_2_n_0 ),
        .O(axi_rdata[5]));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata[5]_i_3_n_0 ),
        .I1(s00_axi_araddr[1]),
        .I2(s00_axi_araddr[2]),
        .I3(s00_axi_araddr[0]),
        .I4(tx_low_reg[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \axi_rdata[5]_i_3 
       (.I0(rx_low_reg[5]),
        .I1(s00_axi_araddr[0]),
        .I2(rx_high_reg[5]),
        .I3(s00_axi_araddr[1]),
        .I4(rx_count_reg[5]),
        .I5(s00_axi_araddr[2]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22200020)) 
    \axi_rdata[6]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[6]),
        .I3(s00_axi_araddr[0]),
        .I4(error_pending_i_1_n_0),
        .I5(\axi_rdata[6]_i_2_n_0 ),
        .O(axi_rdata[6]));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_rdata[6]_i_3_n_0 ),
        .I1(s00_axi_araddr[1]),
        .I2(s00_axi_araddr[2]),
        .I3(s00_axi_araddr[0]),
        .I4(tx_low_reg[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \axi_rdata[6]_i_3 
       (.I0(rx_low_reg[6]),
        .I1(s00_axi_araddr[0]),
        .I2(rx_high_reg[6]),
        .I3(s00_axi_araddr[1]),
        .I4(rx_count_reg[6]),
        .I5(s00_axi_araddr[2]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[7]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[7]),
        .O(axi_rdata[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[7]_i_2 
       (.I0(rx_count_reg[7]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[7]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[8]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[8]),
        .O(axi_rdata[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_2 
       (.I0(rx_count_reg[8]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[8]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(s00_axi_araddr[2]),
        .I2(tx_high_reg[9]),
        .I3(s00_axi_araddr[1]),
        .I4(s00_axi_araddr[0]),
        .I5(tx_low_reg[9]),
        .O(axi_rdata[9]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_2 
       (.I0(rx_count_reg[9]),
        .I1(s00_axi_araddr[1]),
        .I2(rx_high_reg[9]),
        .I3(s00_axi_araddr[0]),
        .I4(rx_low_reg[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[0]),
        .Q(s00_axi_rdata[0]),
        .R(rst));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(axi_rdata[0]),
        .S(s00_axi_araddr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[10]),
        .Q(s00_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[11]),
        .Q(s00_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[12]),
        .Q(s00_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[13]),
        .Q(s00_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[14]),
        .Q(s00_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[15]),
        .Q(s00_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[16]),
        .Q(s00_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[17]),
        .Q(s00_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[18]),
        .Q(s00_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[19]),
        .Q(s00_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(D),
        .Q(s00_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[20]),
        .Q(s00_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[21]),
        .Q(s00_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[22]),
        .Q(s00_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[23]),
        .Q(s00_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[24]),
        .Q(s00_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[25]),
        .Q(s00_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[26]),
        .Q(s00_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[27]),
        .Q(s00_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[28]),
        .Q(s00_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[29]),
        .Q(s00_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[2]),
        .Q(s00_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[30]),
        .Q(s00_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[31]),
        .Q(s00_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[3]),
        .Q(s00_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[4]),
        .Q(s00_axi_rdata[4]),
        .R(rst));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(axi_rdata[4]),
        .S(s00_axi_araddr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[5]),
        .Q(s00_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[6]),
        .Q(s00_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[7]),
        .Q(s00_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[8]),
        .Q(s00_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata[9]),
        .Q(s00_axi_rdata[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFF03AAAA0000)) 
    error_pending_i_1
       (.I0(error_pending_i_2_n_0),
        .I1(error_pending_reg_0),
        .I2(error_pending_i_3_n_0),
        .I3(error_pending_i_4_n_0),
        .I4(error_pending_i_5_n_0),
        .I5(error_pending_i_6_n_0),
        .O(error_pending_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    error_pending_i_2
       (.I0(\aw_hold_addr[3]_i_1_n_0 ),
        .I1(\aw_hold_addr[4]_i_1_n_0 ),
        .I2(rx_pending_i_4_n_0),
        .I3(aw_hold_valid0),
        .I4(error_pending_i_7_n_0),
        .I5(error_pending_i_8_n_0),
        .O(error_pending_i_2_n_0));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    error_pending_i_3
       (.I0(s00_axi_wstrb[0]),
        .I1(w_hold_strb[0]),
        .I2(s00_axi_wdata[0]),
        .I3(\tx_low_reg[31]_i_4_n_0 ),
        .I4(w_hold_data[0]),
        .O(error_pending_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000B8308800)) 
    error_pending_i_4
       (.I0(w_hold_data[2]),
        .I1(\tx_low_reg[31]_i_4_n_0 ),
        .I2(s00_axi_wdata[2]),
        .I3(w_hold_strb[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(error_pending_reg_1),
        .O(error_pending_i_4_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    error_pending_i_5
       (.I0(error_pending),
        .I1(spi_rx_valid),
        .I2(rx_pending),
        .O(error_pending_i_5_n_0));
  LUT6 #(
    .INIT(64'h001D000000000000)) 
    error_pending_i_6
       (.I0(s00_axi_awaddr[1]),
        .I1(rx_pending_i_5_n_0),
        .I2(aw_hold_addr[3]),
        .I3(\aw_hold_addr[4]_i_1_n_0 ),
        .I4(rx_pending_i_4_n_0),
        .I5(aw_hold_valid0),
        .O(error_pending_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h54555755)) 
    error_pending_i_7
       (.I0(w_hold_strb[0]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[0]),
        .O(error_pending_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h54555755)) 
    error_pending_i_8
       (.I0(w_hold_data[3]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[3]),
        .O(error_pending_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    error_pending_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(error_pending_i_1_n_0),
        .Q(error_pending),
        .R(rst));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEE0EEEE)) 
    ldb_done_pending_i_1
       (.I0(ldb_done),
        .I1(ldb_done_pending),
        .I2(rx_pending_i_3_n_0),
        .I3(ldb_done_pending_i_2_n_0),
        .I4(aw_hold_valid0),
        .I5(\spi_tx_data_reg[59]_i_3_n_0 ),
        .O(ldb_done_pending_i_1_n_0));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    ldb_done_pending_i_2
       (.I0(s00_axi_wstrb[0]),
        .I1(w_hold_strb[0]),
        .I2(s00_axi_wdata[2]),
        .I3(\tx_low_reg[31]_i_4_n_0 ),
        .I4(w_hold_data[2]),
        .O(ldb_done_pending_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ldb_done_pending_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ldb_done_pending_i_1_n_0),
        .Q(ldb_done_pending),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    ldb_trigger_reg_i_1
       (.I0(error_pending_i_6_n_0),
        .I1(s00_axi_aresetn),
        .I2(spi_tx_valid),
        .I3(Q[0]),
        .I4(ldb_trigger_reg_reg_0),
        .I5(ldb_done_pending_i_2_n_0),
        .O(ldb_trigger_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ldb_trigger_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ldb_trigger_reg_i_1_n_0),
        .Q(ldb_trigger_reg),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    mosi_reg_i_1
       (.I0(s00_axi_aresetn),
        .O(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(rx_count_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(rx_count_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(rx_count_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(rx_count_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(rx_count_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(rx_count_reg[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S(rx_count_reg[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S(rx_count_reg[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp[31:29]}),
        .S({1'b0,rx_count_reg[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rx_count_reg[0]_i_1 
       (.I0(rx_count_reg[0]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[10]_i_1 
       (.I0(plusOp[10]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[11]_i_1 
       (.I0(plusOp[11]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[12]_i_1 
       (.I0(plusOp[12]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[13]_i_1 
       (.I0(plusOp[13]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[14]_i_1 
       (.I0(plusOp[14]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[15]_i_1 
       (.I0(plusOp[15]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[16]_i_1 
       (.I0(plusOp[16]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[17]_i_1 
       (.I0(plusOp[17]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[18]_i_1 
       (.I0(plusOp[18]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[19]_i_1 
       (.I0(plusOp[19]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[1]_i_1 
       (.I0(plusOp[1]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[20]_i_1 
       (.I0(plusOp[20]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[21]_i_1 
       (.I0(plusOp[21]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[22]_i_1 
       (.I0(plusOp[22]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[23]_i_1 
       (.I0(plusOp[23]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[24]_i_1 
       (.I0(plusOp[24]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[25]_i_1 
       (.I0(plusOp[25]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[26]_i_1 
       (.I0(plusOp[26]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[27]_i_1 
       (.I0(plusOp[27]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[28]_i_1 
       (.I0(plusOp[28]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[29]_i_1 
       (.I0(plusOp[29]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[2]_i_1 
       (.I0(plusOp[2]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[30]_i_1 
       (.I0(plusOp[30]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[30]));
  LUT3 #(
    .INIT(8'hF4)) 
    \rx_count_reg[31]_i_1 
       (.I0(rx_pending),
        .I1(spi_rx_valid),
        .I2(\rx_count_reg[31]_i_3_n_0 ),
        .O(\rx_count_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[31]_i_2 
       (.I0(plusOp[31]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[31]));
  LUT6 #(
    .INIT(64'h0000000054040000)) 
    \rx_count_reg[31]_i_3 
       (.I0(error_pending_i_7_n_0),
        .I1(s00_axi_wdata[4]),
        .I2(\tx_low_reg[31]_i_4_n_0 ),
        .I3(w_hold_data[4]),
        .I4(aw_hold_valid0),
        .I5(rx_pending_i_3_n_0),
        .O(\rx_count_reg[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[3]_i_1 
       (.I0(plusOp[3]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[4]_i_1 
       (.I0(plusOp[4]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[5]_i_1 
       (.I0(plusOp[5]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[6]_i_1 
       (.I0(plusOp[6]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[7]_i_1 
       (.I0(plusOp[7]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[8]_i_1 
       (.I0(plusOp[8]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_count_reg[9]_i_1 
       (.I0(plusOp[9]),
        .I1(\rx_count_reg[31]_i_3_n_0 ),
        .O(rx_count_reg_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[0]),
        .Q(rx_count_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[10]),
        .Q(rx_count_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[11]),
        .Q(rx_count_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[12]),
        .Q(rx_count_reg[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[13]),
        .Q(rx_count_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[14]),
        .Q(rx_count_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[15]),
        .Q(rx_count_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[16]),
        .Q(rx_count_reg[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[17]),
        .Q(rx_count_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[18]),
        .Q(rx_count_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[19]),
        .Q(rx_count_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[1]),
        .Q(rx_count_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[20]),
        .Q(rx_count_reg[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[21]),
        .Q(rx_count_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[22]),
        .Q(rx_count_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[23]),
        .Q(rx_count_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[24]),
        .Q(rx_count_reg[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[25]),
        .Q(rx_count_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[26]),
        .Q(rx_count_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[27]),
        .Q(rx_count_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[28]),
        .Q(rx_count_reg[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[29]),
        .Q(rx_count_reg[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[2]),
        .Q(rx_count_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[30]),
        .Q(rx_count_reg[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[31]),
        .Q(rx_count_reg[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[3]),
        .Q(rx_count_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[4]),
        .Q(rx_count_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[5]),
        .Q(rx_count_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[6]),
        .Q(rx_count_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[7]),
        .Q(rx_count_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[8]),
        .Q(rx_count_reg[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_count_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\rx_count_reg[31]_i_1_n_0 ),
        .D(rx_count_reg_0[9]),
        .Q(rx_count_reg[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [32]),
        .Q(rx_high_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [42]),
        .Q(rx_high_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [43]),
        .Q(rx_high_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [44]),
        .Q(rx_high_reg[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [45]),
        .Q(rx_high_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [46]),
        .Q(rx_high_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [47]),
        .Q(rx_high_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [48]),
        .Q(rx_high_reg[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [49]),
        .Q(rx_high_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [50]),
        .Q(rx_high_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [51]),
        .Q(rx_high_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [33]),
        .Q(rx_high_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [52]),
        .Q(rx_high_reg[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [53]),
        .Q(rx_high_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [54]),
        .Q(rx_high_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [55]),
        .Q(rx_high_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [56]),
        .Q(rx_high_reg[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [57]),
        .Q(rx_high_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [58]),
        .Q(rx_high_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [59]),
        .Q(rx_high_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [34]),
        .Q(rx_high_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [35]),
        .Q(rx_high_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [36]),
        .Q(rx_high_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [37]),
        .Q(rx_high_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [38]),
        .Q(rx_high_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [39]),
        .Q(rx_high_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [40]),
        .Q(rx_high_reg[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_high_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [41]),
        .Q(rx_high_reg[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [0]),
        .Q(rx_low_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [10]),
        .Q(rx_low_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [11]),
        .Q(rx_low_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [12]),
        .Q(rx_low_reg[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [13]),
        .Q(rx_low_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [14]),
        .Q(rx_low_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [15]),
        .Q(rx_low_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [16]),
        .Q(rx_low_reg[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [17]),
        .Q(rx_low_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [18]),
        .Q(rx_low_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [19]),
        .Q(rx_low_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [1]),
        .Q(rx_low_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [20]),
        .Q(rx_low_reg[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [21]),
        .Q(rx_low_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [22]),
        .Q(rx_low_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [23]),
        .Q(rx_low_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [24]),
        .Q(rx_low_reg[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [25]),
        .Q(rx_low_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [26]),
        .Q(rx_low_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [27]),
        .Q(rx_low_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [28]),
        .Q(rx_low_reg[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [29]),
        .Q(rx_low_reg[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [2]),
        .Q(rx_low_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [30]),
        .Q(rx_low_reg[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [31]),
        .Q(rx_low_reg[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [3]),
        .Q(rx_low_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [4]),
        .Q(rx_low_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [5]),
        .Q(rx_low_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [6]),
        .Q(rx_low_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [7]),
        .Q(rx_low_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [8]),
        .Q(rx_low_reg[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rx_low_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rx_high_reg_reg[27]_0 [9]),
        .Q(rx_low_reg[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEE0E)) 
    rx_pending_i_1
       (.I0(rx_pending),
        .I1(spi_rx_valid),
        .I2(rx_pending_i_2_n_0),
        .I3(rx_pending_i_3_n_0),
        .O(rx_pending_i_1_n_0));
  LUT6 #(
    .INIT(64'h8A800A0080800000)) 
    rx_pending_i_2
       (.I0(aw_hold_valid0),
        .I1(w_hold_data[0]),
        .I2(\tx_low_reg[31]_i_4_n_0 ),
        .I3(s00_axi_wdata[0]),
        .I4(w_hold_strb[0]),
        .I5(s00_axi_wstrb[0]),
        .O(rx_pending_i_2_n_0));
  LUT6 #(
    .INIT(64'hBABFFAFFBFBFFFFF)) 
    rx_pending_i_3
       (.I0(rx_pending_i_4_n_0),
        .I1(aw_hold_addr[4]),
        .I2(rx_pending_i_5_n_0),
        .I3(s00_axi_awaddr[2]),
        .I4(aw_hold_addr[3]),
        .I5(s00_axi_awaddr[1]),
        .O(rx_pending_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h54555755)) 
    rx_pending_i_4
       (.I0(aw_hold_addr[2]),
        .I1(aw_hold_valid),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(rx_pending_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    rx_pending_i_5
       (.I0(aw_hold_valid),
        .I1(axi_bvalid_reg_0),
        .I2(s00_axi_awvalid),
        .O(rx_pending_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_pending_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_pending_i_1_n_0),
        .Q(rx_pending),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s00_axi_arready_INST_0
       (.I0(axi_rvalid_reg_0),
        .O(s00_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s00_axi_awready_INST_0
       (.I0(aw_hold_valid),
        .I1(axi_bvalid_reg_0),
        .O(s00_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s00_axi_wready_INST_0
       (.I0(w_hold_valid_reg_n_0),
        .I1(axi_bvalid_reg_0),
        .O(s00_axi_wready));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEE0EEEE)) 
    spi_done_pending_i_1
       (.I0(spi_done),
        .I1(spi_done_pending),
        .I2(rx_pending_i_3_n_0),
        .I3(spi_done_pending_i_2_n_0),
        .I4(aw_hold_valid0),
        .I5(\spi_tx_data_reg[59]_i_3_n_0 ),
        .O(spi_done_pending_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    spi_done_pending_i_2
       (.I0(s00_axi_wstrb[0]),
        .I1(w_hold_strb[0]),
        .I2(s00_axi_wdata[1]),
        .I3(\tx_low_reg[31]_i_4_n_0 ),
        .I4(w_hold_data[1]),
        .O(spi_done_pending_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_done_pending_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_done_pending_i_1_n_0),
        .Q(spi_done_pending),
        .R(rst));
  LUT3 #(
    .INIT(8'h80)) 
    \spi_tx_data_reg[59]_i_1 
       (.I0(rx_pending_i_2_n_0),
        .I1(error_pending_reg_0),
        .I2(\spi_tx_data_reg[59]_i_3_n_0 ),
        .O(spi_tx_valid_reg));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \spi_tx_data_reg[59]_i_3 
       (.I0(rx_pending_i_4_n_0),
        .I1(aw_hold_addr[4]),
        .I2(rx_pending_i_5_n_0),
        .I3(s00_axi_awaddr[2]),
        .I4(aw_hold_addr[3]),
        .I5(s00_axi_awaddr[1]),
        .O(\spi_tx_data_reg[59]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[0]),
        .Q(\spi_tx_data_reg_reg[59]_0 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[10]),
        .Q(\spi_tx_data_reg_reg[59]_0 [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[11]),
        .Q(\spi_tx_data_reg_reg[59]_0 [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[12]),
        .Q(\spi_tx_data_reg_reg[59]_0 [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[13]),
        .Q(\spi_tx_data_reg_reg[59]_0 [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[14]),
        .Q(\spi_tx_data_reg_reg[59]_0 [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[15]),
        .Q(\spi_tx_data_reg_reg[59]_0 [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[16]),
        .Q(\spi_tx_data_reg_reg[59]_0 [16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[17]),
        .Q(\spi_tx_data_reg_reg[59]_0 [17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[18]),
        .Q(\spi_tx_data_reg_reg[59]_0 [18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[19]),
        .Q(\spi_tx_data_reg_reg[59]_0 [19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(\tx_high_reg_reg[1]_0 [0]),
        .Q(\spi_tx_data_reg_reg[59]_0 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[20]),
        .Q(\spi_tx_data_reg_reg[59]_0 [20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[21]),
        .Q(\spi_tx_data_reg_reg[59]_0 [21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[22]),
        .Q(\spi_tx_data_reg_reg[59]_0 [22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[23]),
        .Q(\spi_tx_data_reg_reg[59]_0 [23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[24]),
        .Q(\spi_tx_data_reg_reg[59]_0 [24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[25]),
        .Q(\spi_tx_data_reg_reg[59]_0 [25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[26]),
        .Q(\spi_tx_data_reg_reg[59]_0 [26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[27]),
        .Q(\spi_tx_data_reg_reg[59]_0 [27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[28]),
        .Q(\spi_tx_data_reg_reg[59]_0 [28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[29]),
        .Q(\spi_tx_data_reg_reg[59]_0 [29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[2]),
        .Q(\spi_tx_data_reg_reg[59]_0 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[30]),
        .Q(\spi_tx_data_reg_reg[59]_0 [30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[31]),
        .Q(\spi_tx_data_reg_reg[59]_0 [31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[32] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[0]),
        .Q(\spi_tx_data_reg_reg[59]_0 [32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[33] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(\tx_high_reg_reg[1]_0 [1]),
        .Q(\spi_tx_data_reg_reg[59]_0 [33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[34] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[2]),
        .Q(\spi_tx_data_reg_reg[59]_0 [34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[35] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[3]),
        .Q(\spi_tx_data_reg_reg[59]_0 [35]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[36] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[4]),
        .Q(\spi_tx_data_reg_reg[59]_0 [36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[37] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[5]),
        .Q(\spi_tx_data_reg_reg[59]_0 [37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[38] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[6]),
        .Q(\spi_tx_data_reg_reg[59]_0 [38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[39] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[7]),
        .Q(\spi_tx_data_reg_reg[59]_0 [39]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[3]),
        .Q(\spi_tx_data_reg_reg[59]_0 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[40] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[8]),
        .Q(\spi_tx_data_reg_reg[59]_0 [40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[41] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[9]),
        .Q(\spi_tx_data_reg_reg[59]_0 [41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[42] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[10]),
        .Q(\spi_tx_data_reg_reg[59]_0 [42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[43] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[11]),
        .Q(\spi_tx_data_reg_reg[59]_0 [43]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[44] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[12]),
        .Q(\spi_tx_data_reg_reg[59]_0 [44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[45] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[13]),
        .Q(\spi_tx_data_reg_reg[59]_0 [45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[46] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[14]),
        .Q(\spi_tx_data_reg_reg[59]_0 [46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[47] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[15]),
        .Q(\spi_tx_data_reg_reg[59]_0 [47]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[48] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[16]),
        .Q(\spi_tx_data_reg_reg[59]_0 [48]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[49] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[17]),
        .Q(\spi_tx_data_reg_reg[59]_0 [49]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[4]),
        .Q(\spi_tx_data_reg_reg[59]_0 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[50] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[18]),
        .Q(\spi_tx_data_reg_reg[59]_0 [50]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[51] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[19]),
        .Q(\spi_tx_data_reg_reg[59]_0 [51]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[52] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[20]),
        .Q(\spi_tx_data_reg_reg[59]_0 [52]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[53] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[21]),
        .Q(\spi_tx_data_reg_reg[59]_0 [53]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[54] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[22]),
        .Q(\spi_tx_data_reg_reg[59]_0 [54]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[55] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[23]),
        .Q(\spi_tx_data_reg_reg[59]_0 [55]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[56] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[24]),
        .Q(\spi_tx_data_reg_reg[59]_0 [56]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[57] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[25]),
        .Q(\spi_tx_data_reg_reg[59]_0 [57]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[58] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[26]),
        .Q(\spi_tx_data_reg_reg[59]_0 [58]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[59] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_high_reg[27]),
        .Q(\spi_tx_data_reg_reg[59]_0 [59]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[5]),
        .Q(\spi_tx_data_reg_reg[59]_0 [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[6]),
        .Q(\spi_tx_data_reg_reg[59]_0 [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[7]),
        .Q(\spi_tx_data_reg_reg[59]_0 [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[8]),
        .Q(\spi_tx_data_reg_reg[59]_0 [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_data_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(tx_low_reg[9]),
        .Q(\spi_tx_data_reg_reg[59]_0 [9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8308800)) 
    spi_tx_last_reg_i_1
       (.I0(w_hold_data[1]),
        .I1(\tx_low_reg[31]_i_4_n_0 ),
        .I2(s00_axi_wdata[1]),
        .I3(w_hold_strb[0]),
        .I4(s00_axi_wstrb[0]),
        .O(result));
  FDRE #(
    .INIT(1'b0)) 
    spi_tx_last_reg_reg
       (.C(s00_axi_aclk),
        .CE(spi_tx_valid_reg),
        .D(result),
        .Q(tx_last),
        .R(rst));
  LUT6 #(
    .INIT(64'h808080FF80808080)) 
    spi_tx_valid_reg_i_1
       (.I0(rx_pending_i_2_n_0),
        .I1(error_pending_reg_0),
        .I2(\spi_tx_data_reg[59]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(spi_tx_valid),
        .O(spi_tx_valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_tx_valid_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_tx_valid_reg_i_1_n_0),
        .Q(spi_tx_valid),
        .R(rst));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \tx_high_reg[15]_i_1 
       (.I0(\tx_high_reg[27]_i_2_n_0 ),
        .I1(w_hold_strb[1]),
        .I2(\tx_low_reg[31]_i_4_n_0 ),
        .I3(s00_axi_wstrb[1]),
        .I4(aw_hold_valid0),
        .O(\tx_high_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \tx_high_reg[23]_i_1 
       (.I0(\tx_high_reg[27]_i_2_n_0 ),
        .I1(w_hold_strb[2]),
        .I2(\tx_low_reg[31]_i_4_n_0 ),
        .I3(s00_axi_wstrb[2]),
        .I4(aw_hold_valid0),
        .O(\tx_high_reg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \tx_high_reg[27]_i_1 
       (.I0(\tx_high_reg[27]_i_2_n_0 ),
        .I1(w_hold_strb[3]),
        .I2(\tx_low_reg[31]_i_4_n_0 ),
        .I3(s00_axi_wstrb[3]),
        .I4(aw_hold_valid0),
        .O(\tx_high_reg[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C0000000C0A0A0)) 
    \tx_high_reg[27]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_hold_addr[3]),
        .I2(rx_pending_i_4_n_0),
        .I3(aw_hold_addr[4]),
        .I4(rx_pending_i_5_n_0),
        .I5(s00_axi_awaddr[2]),
        .O(\tx_high_reg[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \tx_high_reg[7]_i_1 
       (.I0(w_hold_strb[0]),
        .I1(\tx_low_reg[31]_i_4_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(aw_hold_valid0),
        .I4(\tx_high_reg[27]_i_2_n_0 ),
        .O(\tx_high_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[0]_i_1_n_0 ),
        .Q(tx_high_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[15]_i_1_n_0 ),
        .D(p_3_in[2]),
        .Q(tx_high_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[15]_i_1_n_0 ),
        .D(p_3_in[3]),
        .Q(tx_high_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[15]_i_1_n_0 ),
        .D(p_3_in[4]),
        .Q(tx_high_reg[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[15]_i_1_n_0 ),
        .D(p_3_in[5]),
        .Q(tx_high_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[15]_i_1_n_0 ),
        .D(p_3_in[6]),
        .Q(tx_high_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[15]_i_1_n_0 ),
        .D(p_3_in[7]),
        .Q(tx_high_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[23]_i_1_n_0 ),
        .D(p_5_in[0]),
        .Q(tx_high_reg[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[23]_i_1_n_0 ),
        .D(p_5_in[1]),
        .Q(tx_high_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[23]_i_1_n_0 ),
        .D(p_5_in[2]),
        .Q(tx_high_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[23]_i_1_n_0 ),
        .D(p_5_in[3]),
        .Q(tx_high_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[1]_i_1_n_0 ),
        .Q(\tx_high_reg_reg[1]_0 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[23]_i_1_n_0 ),
        .D(p_5_in[4]),
        .Q(tx_high_reg[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[23]_i_1_n_0 ),
        .D(p_5_in[5]),
        .Q(tx_high_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[23]_i_1_n_0 ),
        .D(p_5_in[6]),
        .Q(tx_high_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[23]_i_1_n_0 ),
        .D(p_5_in[7]),
        .Q(tx_high_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[27]_i_1_n_0 ),
        .D(\tx_low_reg[24]_i_1_n_0 ),
        .Q(tx_high_reg[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[27]_i_1_n_0 ),
        .D(\tx_low_reg[25]_i_1_n_0 ),
        .Q(tx_high_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[27]_i_1_n_0 ),
        .D(\tx_low_reg[26]_i_1_n_0 ),
        .Q(tx_high_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[27]_i_1_n_0 ),
        .D(\tx_low_reg[27]_i_1_n_0 ),
        .Q(tx_high_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[2]_i_1_n_0 ),
        .Q(tx_high_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[3]_i_1_n_0 ),
        .Q(tx_high_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[4]_i_1_n_0 ),
        .Q(tx_high_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[7]_i_1_n_0 ),
        .D(\tx_low_reg[5]_i_1_n_0 ),
        .Q(tx_high_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[7]_i_1_n_0 ),
        .D(\tx_low_reg[6]_i_1_n_0 ),
        .Q(tx_high_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[7]_i_1_n_0 ),
        .D(\tx_low_reg[7]_i_2_n_0 ),
        .Q(tx_high_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[15]_i_1_n_0 ),
        .D(p_3_in[0]),
        .Q(tx_high_reg[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_high_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\tx_high_reg[15]_i_1_n_0 ),
        .D(p_3_in[1]),
        .Q(tx_high_reg[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[10]_i_1 
       (.I0(w_hold_data[10]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[10]),
        .O(p_3_in[2]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[11]_i_1 
       (.I0(w_hold_data[11]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[11]),
        .O(p_3_in[3]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[12]_i_1 
       (.I0(w_hold_data[12]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[12]),
        .O(p_3_in[4]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[13]_i_1 
       (.I0(w_hold_data[13]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[13]),
        .O(p_3_in[5]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[14]_i_1 
       (.I0(w_hold_data[14]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[14]),
        .O(p_3_in[6]));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \tx_low_reg[15]_i_1 
       (.I0(\tx_low_reg[31]_i_3_n_0 ),
        .I1(w_hold_strb[1]),
        .I2(\tx_low_reg[31]_i_4_n_0 ),
        .I3(s00_axi_wstrb[1]),
        .I4(aw_hold_valid0),
        .O(\tx_low_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[15]_i_2 
       (.I0(w_hold_data[15]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[15]),
        .O(p_3_in[7]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[16]_i_1 
       (.I0(w_hold_data[16]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[16]),
        .O(p_5_in[0]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[17]_i_1 
       (.I0(w_hold_data[17]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[17]),
        .O(p_5_in[1]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[18]_i_1 
       (.I0(w_hold_data[18]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[18]),
        .O(p_5_in[2]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[19]_i_1 
       (.I0(w_hold_data[19]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[19]),
        .O(p_5_in[3]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[20]_i_1 
       (.I0(w_hold_data[20]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[20]),
        .O(p_5_in[4]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[21]_i_1 
       (.I0(w_hold_data[21]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[21]),
        .O(p_5_in[5]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[22]_i_1 
       (.I0(w_hold_data[22]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[22]),
        .O(p_5_in[6]));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \tx_low_reg[23]_i_1 
       (.I0(\tx_low_reg[31]_i_3_n_0 ),
        .I1(w_hold_strb[2]),
        .I2(\tx_low_reg[31]_i_4_n_0 ),
        .I3(s00_axi_wstrb[2]),
        .I4(aw_hold_valid0),
        .O(\tx_low_reg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[23]_i_2 
       (.I0(w_hold_data[23]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[23]),
        .O(p_5_in[7]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[24]_i_1 
       (.I0(w_hold_data[24]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[24]),
        .O(\tx_low_reg[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[25]_i_1 
       (.I0(w_hold_data[25]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[25]),
        .O(\tx_low_reg[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[26]_i_1 
       (.I0(w_hold_data[26]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[26]),
        .O(\tx_low_reg[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[27]_i_1 
       (.I0(w_hold_data[27]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[27]),
        .O(\tx_low_reg[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[28]_i_1 
       (.I0(w_hold_data[28]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[28]),
        .O(\tx_low_reg[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[29]_i_1 
       (.I0(w_hold_data[29]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[29]),
        .O(\tx_low_reg[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[30]_i_1 
       (.I0(w_hold_data[30]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[30]),
        .O(\tx_low_reg[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \tx_low_reg[31]_i_1 
       (.I0(\tx_low_reg[31]_i_3_n_0 ),
        .I1(w_hold_strb[3]),
        .I2(\tx_low_reg[31]_i_4_n_0 ),
        .I3(s00_axi_wstrb[3]),
        .I4(aw_hold_valid0),
        .O(\tx_low_reg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[31]_i_2 
       (.I0(w_hold_data[31]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[31]),
        .O(\tx_low_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000101000051015)) 
    \tx_low_reg[31]_i_3 
       (.I0(rx_pending_i_4_n_0),
        .I1(aw_hold_addr[4]),
        .I2(rx_pending_i_5_n_0),
        .I3(s00_axi_awaddr[2]),
        .I4(aw_hold_addr[3]),
        .I5(s00_axi_awaddr[1]),
        .O(\tx_low_reg[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \tx_low_reg[31]_i_4 
       (.I0(w_hold_valid_reg_n_0),
        .I1(axi_bvalid_reg_0),
        .I2(s00_axi_wvalid),
        .O(\tx_low_reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00EE00E0)) 
    \tx_low_reg[31]_i_5 
       (.I0(w_hold_valid_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_bvalid_reg_0),
        .I4(aw_hold_valid),
        .O(aw_hold_valid0));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[5]_i_1 
       (.I0(w_hold_data[5]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[5]),
        .O(\tx_low_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[6]_i_1 
       (.I0(w_hold_data[6]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[6]),
        .O(\tx_low_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \tx_low_reg[7]_i_1 
       (.I0(w_hold_strb[0]),
        .I1(\tx_low_reg[31]_i_4_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(aw_hold_valid0),
        .I4(\tx_low_reg[31]_i_3_n_0 ),
        .O(\tx_low_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[7]_i_2 
       (.I0(w_hold_data[7]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[7]),
        .O(\tx_low_reg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[8]_i_1 
       (.I0(w_hold_data[8]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[8]),
        .O(p_3_in[0]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \tx_low_reg[9]_i_1 
       (.I0(w_hold_data[9]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[9]),
        .O(p_3_in[1]));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[0]_i_1_n_0 ),
        .Q(tx_low_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[15]_i_1_n_0 ),
        .D(p_3_in[2]),
        .Q(tx_low_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[15]_i_1_n_0 ),
        .D(p_3_in[3]),
        .Q(tx_low_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[15]_i_1_n_0 ),
        .D(p_3_in[4]),
        .Q(tx_low_reg[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[15]_i_1_n_0 ),
        .D(p_3_in[5]),
        .Q(tx_low_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[15]_i_1_n_0 ),
        .D(p_3_in[6]),
        .Q(tx_low_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[15]_i_1_n_0 ),
        .D(p_3_in[7]),
        .Q(tx_low_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[23]_i_1_n_0 ),
        .D(p_5_in[0]),
        .Q(tx_low_reg[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[23]_i_1_n_0 ),
        .D(p_5_in[1]),
        .Q(tx_low_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[23]_i_1_n_0 ),
        .D(p_5_in[2]),
        .Q(tx_low_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[23]_i_1_n_0 ),
        .D(p_5_in[3]),
        .Q(tx_low_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[1]_i_1_n_0 ),
        .Q(\tx_high_reg_reg[1]_0 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[23]_i_1_n_0 ),
        .D(p_5_in[4]),
        .Q(tx_low_reg[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[23]_i_1_n_0 ),
        .D(p_5_in[5]),
        .Q(tx_low_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[23]_i_1_n_0 ),
        .D(p_5_in[6]),
        .Q(tx_low_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[23]_i_1_n_0 ),
        .D(p_5_in[7]),
        .Q(tx_low_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[31]_i_1_n_0 ),
        .D(\tx_low_reg[24]_i_1_n_0 ),
        .Q(tx_low_reg[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[31]_i_1_n_0 ),
        .D(\tx_low_reg[25]_i_1_n_0 ),
        .Q(tx_low_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[31]_i_1_n_0 ),
        .D(\tx_low_reg[26]_i_1_n_0 ),
        .Q(tx_low_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[31]_i_1_n_0 ),
        .D(\tx_low_reg[27]_i_1_n_0 ),
        .Q(tx_low_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[31]_i_1_n_0 ),
        .D(\tx_low_reg[28]_i_1_n_0 ),
        .Q(tx_low_reg[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[31]_i_1_n_0 ),
        .D(\tx_low_reg[29]_i_1_n_0 ),
        .Q(tx_low_reg[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[2]_i_1_n_0 ),
        .Q(tx_low_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[31]_i_1_n_0 ),
        .D(\tx_low_reg[30]_i_1_n_0 ),
        .Q(tx_low_reg[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[31]_i_1_n_0 ),
        .D(\tx_low_reg[31]_i_2_n_0 ),
        .Q(tx_low_reg[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[3]_i_1_n_0 ),
        .Q(tx_low_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[7]_i_1_n_0 ),
        .D(\w_hold_data[4]_i_1_n_0 ),
        .Q(tx_low_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[7]_i_1_n_0 ),
        .D(\tx_low_reg[5]_i_1_n_0 ),
        .Q(tx_low_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[7]_i_1_n_0 ),
        .D(\tx_low_reg[6]_i_1_n_0 ),
        .Q(tx_low_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[7]_i_1_n_0 ),
        .D(\tx_low_reg[7]_i_2_n_0 ),
        .Q(tx_low_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[15]_i_1_n_0 ),
        .D(p_3_in[0]),
        .Q(tx_low_reg[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_low_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\tx_low_reg[15]_i_1_n_0 ),
        .D(p_3_in[1]),
        .Q(tx_low_reg[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \w_hold_data[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_bvalid_reg_0),
        .I3(w_hold_valid_reg_n_0),
        .I4(w_hold_data[0]),
        .O(\w_hold_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \w_hold_data[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(s00_axi_wvalid),
        .I2(axi_bvalid_reg_0),
        .I3(w_hold_valid_reg_n_0),
        .I4(w_hold_data[1]),
        .O(\w_hold_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \w_hold_data[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(s00_axi_wvalid),
        .I2(axi_bvalid_reg_0),
        .I3(w_hold_valid_reg_n_0),
        .I4(w_hold_data[2]),
        .O(\w_hold_data[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \w_hold_data[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(axi_bvalid_reg_0),
        .I2(w_hold_valid_reg_n_0),
        .O(\w_hold_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \w_hold_data[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(s00_axi_wvalid),
        .I2(axi_bvalid_reg_0),
        .I3(w_hold_valid_reg_n_0),
        .I4(w_hold_data[3]),
        .O(\w_hold_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \w_hold_data[4]_i_1 
       (.I0(w_hold_data[4]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wdata[4]),
        .O(\w_hold_data[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\w_hold_data[0]_i_1_n_0 ),
        .Q(w_hold_data[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(w_hold_data[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(w_hold_data[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(w_hold_data[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(w_hold_data[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(w_hold_data[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(w_hold_data[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(w_hold_data[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(w_hold_data[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(w_hold_data[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(w_hold_data[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\w_hold_data[1]_i_1_n_0 ),
        .Q(w_hold_data[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(w_hold_data[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(w_hold_data[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(w_hold_data[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(w_hold_data[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(w_hold_data[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(w_hold_data[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(w_hold_data[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(w_hold_data[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(w_hold_data[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(w_hold_data[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\w_hold_data[2]_i_1_n_0 ),
        .Q(w_hold_data[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(w_hold_data[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(w_hold_data[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\w_hold_data[3]_i_1_n_0 ),
        .Q(w_hold_data[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\w_hold_data[4]_i_1_n_0 ),
        .Q(w_hold_data[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(w_hold_data[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(w_hold_data[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(w_hold_data[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(w_hold_data[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\w_hold_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(w_hold_data[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \w_hold_strb[0]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_bvalid_reg_0),
        .I3(w_hold_valid_reg_n_0),
        .I4(w_hold_strb[0]),
        .O(strb[0]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \w_hold_strb[1]_i_1 
       (.I0(w_hold_strb[1]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[1]),
        .O(strb[1]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \w_hold_strb[2]_i_1 
       (.I0(w_hold_strb[2]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[2]),
        .O(strb[2]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \w_hold_strb[3]_i_1 
       (.I0(w_hold_strb[3]),
        .I1(w_hold_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[3]),
        .O(strb[3]));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_strb_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(strb[0]),
        .Q(w_hold_strb[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_strb_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(strb[1]),
        .Q(w_hold_strb[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_strb_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(strb[2]),
        .Q(w_hold_strb[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \w_hold_strb_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(strb[3]),
        .Q(w_hold_strb[3]),
        .R(rst));
  LUT6 #(
    .INIT(64'h88880000888800A8)) 
    w_hold_valid_i_1
       (.I0(s00_axi_aresetn),
        .I1(w_hold_valid_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_bvalid_reg_0),
        .I5(aw_hold_valid),
        .O(w_hold_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    w_hold_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(w_hold_valid_i_1_n_0),
        .Q(w_hold_valid_reg_n_0),
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
