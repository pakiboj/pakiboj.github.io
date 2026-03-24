-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Mar 22 15:56:27 2026
-- Host        : DESKTOP-BV4G26R running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/MIHAJLO/faks/dvs/projekat/FINAL/FINAL.gen/sources_1/bd/ImageFilter/ip/ImageFilter_acc_image_filter_0_0/ImageFilter_acc_image_filter_0_0_stub.vhdl
-- Design      : ImageFilter_acc_image_filter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ImageFilter_acc_image_filter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_lite_cfg_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_cfg_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_cfg_arready : out STD_LOGIC;
    s_axi_lite_cfg_arvalid : in STD_LOGIC;
    s_axi_lite_cfg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_cfg_rready : in STD_LOGIC;
    s_axi_lite_cfg_rvalid : out STD_LOGIC;
    s_axi_lite_cfg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_cfg_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_cfg_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_cfg_awready : out STD_LOGIC;
    s_axi_lite_cfg_awvalid : in STD_LOGIC;
    s_axi_lite_cfg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_cfg_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_cfg_wready : out STD_LOGIC;
    s_axi_lite_cfg_wvalid : in STD_LOGIC;
    s_axi_lite_cfg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_cfg_bvalid : out STD_LOGIC;
    s_axi_lite_cfg_bready : in STD_LOGIC;
    s_axis_in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_in_tlast : in STD_LOGIC;
    s_axis_in_tready : out STD_LOGIC;
    s_axis_in_tvalid : in STD_LOGIC;
    m_axis_out_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_out_tlast : out STD_LOGIC;
    m_axis_out_tready : in STD_LOGIC;
    m_axis_out_tvalid : out STD_LOGIC
  );

end ImageFilter_acc_image_filter_0_0;

architecture stub of ImageFilter_acc_image_filter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,s_axi_lite_cfg_araddr[8:0],s_axi_lite_cfg_arprot[2:0],s_axi_lite_cfg_arready,s_axi_lite_cfg_arvalid,s_axi_lite_cfg_rdata[31:0],s_axi_lite_cfg_rready,s_axi_lite_cfg_rvalid,s_axi_lite_cfg_rresp[1:0],s_axi_lite_cfg_awaddr[8:0],s_axi_lite_cfg_awprot[2:0],s_axi_lite_cfg_awready,s_axi_lite_cfg_awvalid,s_axi_lite_cfg_wdata[31:0],s_axi_lite_cfg_wstrb[3:0],s_axi_lite_cfg_wready,s_axi_lite_cfg_wvalid,s_axi_lite_cfg_bresp[1:0],s_axi_lite_cfg_bvalid,s_axi_lite_cfg_bready,s_axis_in_tdata[7:0],s_axis_in_tlast,s_axis_in_tready,s_axis_in_tvalid,m_axis_out_tdata[15:0],m_axis_out_tlast,m_axis_out_tready,m_axis_out_tvalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "acc_image_filter,Vivado 2024.1";
begin
end;
