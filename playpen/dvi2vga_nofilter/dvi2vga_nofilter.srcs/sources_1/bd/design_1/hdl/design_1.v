//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Mon Sep 21 21:33:57 2015
//Host        : Win10-on-iMac running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDC_scl_i,
    DDC_scl_o,
    DDC_scl_t,
    DDC_sda_i,
    DDC_sda_o,
    DDC_sda_t,
    TMDS_Clk_n,
    TMDS_Clk_p,
    TMDS_Data_n,
    TMDS_Data_p,
    clk_in1,
    hdmi_hpd,
    hdmi_out_en,
    led,
    reset,
    vga_pBlue,
    vga_pGreen,
    vga_pHSync,
    vga_pRed,
    vga_pVSync);
  input DDC_scl_i;
  output DDC_scl_o;
  output DDC_scl_t;
  input DDC_sda_i;
  output DDC_sda_o;
  output DDC_sda_t;
  input TMDS_Clk_n;
  input TMDS_Clk_p;
  input [2:0]TMDS_Data_n;
  input [2:0]TMDS_Data_p;
  input clk_in1;
  output [0:0]hdmi_hpd;
  output [0:0]hdmi_out_en;
  output [3:0]led;
  input reset;
  output [4:0]vga_pBlue;
  output [5:0]vga_pGreen;
  output vga_pHSync;
  output [4:0]vga_pRed;
  output vga_pVSync;

  wire [0:0]GND_dout;
  wire TMDS_Clk_n_1;
  wire TMDS_Clk_p_1;
  wire [2:0]TMDS_Data_n_1;
  wire [2:0]TMDS_Data_p_1;
  wire [0:0]VCC_dout;
  wire clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [3:0]debug_counter_0_led;
  wire dvi2rgb_0_DDC_SCL_I;
  wire dvi2rgb_0_DDC_SCL_O;
  wire dvi2rgb_0_DDC_SCL_T;
  wire dvi2rgb_0_DDC_SDA_I;
  wire dvi2rgb_0_DDC_SDA_O;
  wire dvi2rgb_0_DDC_SDA_T;
  wire dvi2rgb_0_PixelClk;
  wire dvi2rgb_0_RGB_ACTIVE_VIDEO;
  wire [23:0]dvi2rgb_0_RGB_DATA;
  wire dvi2rgb_0_RGB_HSYNC;
  wire dvi2rgb_0_RGB_VSYNC;
  wire reset_1;
  wire [4:0]rgb2vga_0_vga_pBlue;
  wire [5:0]rgb2vga_0_vga_pGreen;
  wire rgb2vga_0_vga_pHSync;
  wire [4:0]rgb2vga_0_vga_pRed;
  wire rgb2vga_0_vga_pVSync;

  assign DDC_scl_o = dvi2rgb_0_DDC_SCL_O;
  assign DDC_scl_t = dvi2rgb_0_DDC_SCL_T;
  assign DDC_sda_o = dvi2rgb_0_DDC_SDA_O;
  assign DDC_sda_t = dvi2rgb_0_DDC_SDA_T;
  assign TMDS_Clk_n_1 = TMDS_Clk_n;
  assign TMDS_Clk_p_1 = TMDS_Clk_p;
  assign TMDS_Data_n_1 = TMDS_Data_n[2:0];
  assign TMDS_Data_p_1 = TMDS_Data_p[2:0];
  assign clk_in1_1 = clk_in1;
  assign dvi2rgb_0_DDC_SCL_I = DDC_scl_i;
  assign dvi2rgb_0_DDC_SDA_I = DDC_sda_i;
  assign hdmi_hpd[0] = VCC_dout;
  assign hdmi_out_en[0] = GND_dout;
  assign led[3:0] = debug_counter_0_led;
  assign reset_1 = reset;
  assign vga_pBlue[4:0] = rgb2vga_0_vga_pBlue;
  assign vga_pGreen[5:0] = rgb2vga_0_vga_pGreen;
  assign vga_pHSync = rgb2vga_0_vga_pHSync;
  assign vga_pRed[4:0] = rgb2vga_0_vga_pRed;
  assign vga_pVSync = rgb2vga_0_vga_pVSync;
  design_1_xlconstant_0_0 GND
       (.dout(GND_dout));
  design_1_xlconstant_1_0 VCC
       (.dout(VCC_dout));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
  design_1_debug_counter_0_0 debug_counter_0
       (.CLK(rgb2vga_0_vga_pVSync),
        .led(debug_counter_0_led));
  design_1_dvi2rgb_0_1 dvi2rgb_0
       (.DDC_SCL_I(dvi2rgb_0_DDC_SCL_I),
        .DDC_SCL_O(dvi2rgb_0_DDC_SCL_O),
        .DDC_SCL_T(dvi2rgb_0_DDC_SCL_T),
        .DDC_SDA_I(dvi2rgb_0_DDC_SDA_I),
        .DDC_SDA_O(dvi2rgb_0_DDC_SDA_O),
        .DDC_SDA_T(dvi2rgb_0_DDC_SDA_T),
        .PixelClk(dvi2rgb_0_PixelClk),
        .RefClk(clk_wiz_0_clk_out1),
        .TMDS_Clk_n(TMDS_Clk_n_1),
        .TMDS_Clk_p(TMDS_Clk_p_1),
        .TMDS_Data_n(TMDS_Data_n_1),
        .TMDS_Data_p(TMDS_Data_p_1),
        .aRst_n(clk_wiz_0_locked),
        .pRst_n(clk_wiz_0_locked),
        .vid_pData(dvi2rgb_0_RGB_DATA),
        .vid_pHSync(dvi2rgb_0_RGB_HSYNC),
        .vid_pVDE(dvi2rgb_0_RGB_ACTIVE_VIDEO),
        .vid_pVSync(dvi2rgb_0_RGB_VSYNC));
  design_1_rgb2vga_0_0 rgb2vga_0
       (.PixelClk(dvi2rgb_0_PixelClk),
        .rgb_pData(dvi2rgb_0_RGB_DATA),
        .rgb_pHSync(dvi2rgb_0_RGB_HSYNC),
        .rgb_pVDE(dvi2rgb_0_RGB_ACTIVE_VIDEO),
        .rgb_pVSync(dvi2rgb_0_RGB_VSYNC),
        .vga_pBlue(rgb2vga_0_vga_pBlue),
        .vga_pGreen(rgb2vga_0_vga_pGreen),
        .vga_pHSync(rgb2vga_0_vga_pHSync),
        .vga_pRed(rgb2vga_0_vga_pRed),
        .vga_pVSync(rgb2vga_0_vga_pVSync));
endmodule
