-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:acc_image_filter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ImageFilter_acc_image_filter_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    s_axi_lite_cfg_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_lite_cfg_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_cfg_arready : OUT STD_LOGIC;
    s_axi_lite_cfg_arvalid : IN STD_LOGIC;
    s_axi_lite_cfg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_cfg_rready : IN STD_LOGIC;
    s_axi_lite_cfg_rvalid : OUT STD_LOGIC;
    s_axi_lite_cfg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_cfg_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_lite_cfg_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_cfg_awready : OUT STD_LOGIC;
    s_axi_lite_cfg_awvalid : IN STD_LOGIC;
    s_axi_lite_cfg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_cfg_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_cfg_wready : OUT STD_LOGIC;
    s_axi_lite_cfg_wvalid : IN STD_LOGIC;
    s_axi_lite_cfg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_cfg_bvalid : OUT STD_LOGIC;
    s_axi_lite_cfg_bready : IN STD_LOGIC;
    s_axis_in_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_in_tlast : IN STD_LOGIC;
    s_axis_in_tready : OUT STD_LOGIC;
    s_axis_in_tvalid : IN STD_LOGIC;
    m_axis_out_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_out_tlast : OUT STD_LOGIC;
    m_axis_out_tready : IN STD_LOGIC;
    m_axis_out_tvalid : OUT STD_LOGIC
  );
END ImageFilter_acc_image_filter_0_0;

ARCHITECTURE ImageFilter_acc_image_filter_0_0_arch OF ImageFilter_acc_image_filter_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ImageFilter_acc_image_filter_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT acc_image_filter IS
    GENERIC (
      C_MAX_IMG_WIDTH : INTEGER;
      C_MAX_RADIOUS : INTEGER;
      C_RADIUS : INTEGER;
      C_IMG_SIZE : INTEGER;
      G_S_AXI_LITE_ADDR_WIDTH : INTEGER;
      G_S_AXI_LITE_DATA_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      s_axi_lite_cfg_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_lite_cfg_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lite_cfg_arready : OUT STD_LOGIC;
      s_axi_lite_cfg_arvalid : IN STD_LOGIC;
      s_axi_lite_cfg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_cfg_rready : IN STD_LOGIC;
      s_axi_lite_cfg_rvalid : OUT STD_LOGIC;
      s_axi_lite_cfg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_cfg_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_lite_cfg_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lite_cfg_awready : OUT STD_LOGIC;
      s_axi_lite_cfg_awvalid : IN STD_LOGIC;
      s_axi_lite_cfg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_cfg_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lite_cfg_wready : OUT STD_LOGIC;
      s_axi_lite_cfg_wvalid : IN STD_LOGIC;
      s_axi_lite_cfg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_cfg_bvalid : OUT STD_LOGIC;
      s_axi_lite_cfg_bready : IN STD_LOGIC;
      s_axis_in_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_in_tlast : IN STD_LOGIC;
      s_axis_in_tready : OUT STD_LOGIC;
      s_axis_in_tvalid : IN STD_LOGIC;
      m_axis_out_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_out_tlast : OUT STD_LOGIC;
      m_axis_out_tready : IN STD_LOGIC;
      m_axis_out_tvalid : OUT STD_LOGIC
    );
  END COMPONENT acc_image_filter;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_out:s_axis_in:s_axi_lite_cfg, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ImageFilter_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_out_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_out, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN ImageFilter_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_out_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_out_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_out_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_out TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_out_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_out TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_cfg_araddr: SIGNAL IS "XIL_INTERFACENAME s_axi_lite_cfg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN ImageFilter_processing_system7_0_0_FCLK_CLK0, NUM_RE" & 
"AD_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_cfg_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_lite_cfg WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_in_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN ImageFilter_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_in_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_in_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_in_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_in TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_in_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_in TVALID";
BEGIN
  U0 : acc_image_filter
    GENERIC MAP (
      C_MAX_IMG_WIDTH => 512,
      C_MAX_RADIOUS => 4,
      C_RADIUS => 1,
      C_IMG_SIZE => 128,
      G_S_AXI_LITE_ADDR_WIDTH => 9,
      G_S_AXI_LITE_DATA_WIDTH => 32
    )
    PORT MAP (
      clk => clk,
      reset => reset,
      s_axi_lite_cfg_araddr => s_axi_lite_cfg_araddr,
      s_axi_lite_cfg_arprot => s_axi_lite_cfg_arprot,
      s_axi_lite_cfg_arready => s_axi_lite_cfg_arready,
      s_axi_lite_cfg_arvalid => s_axi_lite_cfg_arvalid,
      s_axi_lite_cfg_rdata => s_axi_lite_cfg_rdata,
      s_axi_lite_cfg_rready => s_axi_lite_cfg_rready,
      s_axi_lite_cfg_rvalid => s_axi_lite_cfg_rvalid,
      s_axi_lite_cfg_rresp => s_axi_lite_cfg_rresp,
      s_axi_lite_cfg_awaddr => s_axi_lite_cfg_awaddr,
      s_axi_lite_cfg_awprot => s_axi_lite_cfg_awprot,
      s_axi_lite_cfg_awready => s_axi_lite_cfg_awready,
      s_axi_lite_cfg_awvalid => s_axi_lite_cfg_awvalid,
      s_axi_lite_cfg_wdata => s_axi_lite_cfg_wdata,
      s_axi_lite_cfg_wstrb => s_axi_lite_cfg_wstrb,
      s_axi_lite_cfg_wready => s_axi_lite_cfg_wready,
      s_axi_lite_cfg_wvalid => s_axi_lite_cfg_wvalid,
      s_axi_lite_cfg_bresp => s_axi_lite_cfg_bresp,
      s_axi_lite_cfg_bvalid => s_axi_lite_cfg_bvalid,
      s_axi_lite_cfg_bready => s_axi_lite_cfg_bready,
      s_axis_in_tdata => s_axis_in_tdata,
      s_axis_in_tlast => s_axis_in_tlast,
      s_axis_in_tready => s_axis_in_tready,
      s_axis_in_tvalid => s_axis_in_tvalid,
      m_axis_out_tdata => m_axis_out_tdata,
      m_axis_out_tlast => m_axis_out_tlast,
      m_axis_out_tready => m_axis_out_tready,
      m_axis_out_tvalid => m_axis_out_tvalid
    );
END ImageFilter_acc_image_filter_0_0_arch;
