// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Mar 22 15:56:27 2026
// Host        : DESKTOP-BV4G26R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/MIHAJLO/faks/dvs/projekat/FINAL/FINAL.gen/sources_1/bd/ImageFilter/ip/ImageFilter_acc_image_filter_0_0/ImageFilter_acc_image_filter_0_0_stub.v
// Design      : ImageFilter_acc_image_filter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "acc_image_filter,Vivado 2024.1" *)
module ImageFilter_acc_image_filter_0_0(clk, reset, s_axi_lite_cfg_araddr, 
  s_axi_lite_cfg_arprot, s_axi_lite_cfg_arready, s_axi_lite_cfg_arvalid, 
  s_axi_lite_cfg_rdata, s_axi_lite_cfg_rready, s_axi_lite_cfg_rvalid, 
  s_axi_lite_cfg_rresp, s_axi_lite_cfg_awaddr, s_axi_lite_cfg_awprot, 
  s_axi_lite_cfg_awready, s_axi_lite_cfg_awvalid, s_axi_lite_cfg_wdata, 
  s_axi_lite_cfg_wstrb, s_axi_lite_cfg_wready, s_axi_lite_cfg_wvalid, 
  s_axi_lite_cfg_bresp, s_axi_lite_cfg_bvalid, s_axi_lite_cfg_bready, s_axis_in_tdata, 
  s_axis_in_tlast, s_axis_in_tready, s_axis_in_tvalid, m_axis_out_tdata, m_axis_out_tlast, 
  m_axis_out_tready, m_axis_out_tvalid)
/* synthesis syn_black_box black_box_pad_pin="reset,s_axi_lite_cfg_araddr[8:0],s_axi_lite_cfg_arprot[2:0],s_axi_lite_cfg_arready,s_axi_lite_cfg_arvalid,s_axi_lite_cfg_rdata[31:0],s_axi_lite_cfg_rready,s_axi_lite_cfg_rvalid,s_axi_lite_cfg_rresp[1:0],s_axi_lite_cfg_awaddr[8:0],s_axi_lite_cfg_awprot[2:0],s_axi_lite_cfg_awready,s_axi_lite_cfg_awvalid,s_axi_lite_cfg_wdata[31:0],s_axi_lite_cfg_wstrb[3:0],s_axi_lite_cfg_wready,s_axi_lite_cfg_wvalid,s_axi_lite_cfg_bresp[1:0],s_axi_lite_cfg_bvalid,s_axi_lite_cfg_bready,s_axis_in_tdata[7:0],s_axis_in_tlast,s_axis_in_tready,s_axis_in_tvalid,m_axis_out_tdata[15:0],m_axis_out_tlast,m_axis_out_tready,m_axis_out_tvalid" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input [8:0]s_axi_lite_cfg_araddr;
  input [2:0]s_axi_lite_cfg_arprot;
  output s_axi_lite_cfg_arready;
  input s_axi_lite_cfg_arvalid;
  output [31:0]s_axi_lite_cfg_rdata;
  input s_axi_lite_cfg_rready;
  output s_axi_lite_cfg_rvalid;
  output [1:0]s_axi_lite_cfg_rresp;
  input [8:0]s_axi_lite_cfg_awaddr;
  input [2:0]s_axi_lite_cfg_awprot;
  output s_axi_lite_cfg_awready;
  input s_axi_lite_cfg_awvalid;
  input [31:0]s_axi_lite_cfg_wdata;
  input [3:0]s_axi_lite_cfg_wstrb;
  output s_axi_lite_cfg_wready;
  input s_axi_lite_cfg_wvalid;
  output [1:0]s_axi_lite_cfg_bresp;
  output s_axi_lite_cfg_bvalid;
  input s_axi_lite_cfg_bready;
  input [7:0]s_axis_in_tdata;
  input s_axis_in_tlast;
  output s_axis_in_tready;
  input s_axis_in_tvalid;
  output [15:0]m_axis_out_tdata;
  output m_axis_out_tlast;
  input m_axis_out_tready;
  output m_axis_out_tvalid;
endmodule
