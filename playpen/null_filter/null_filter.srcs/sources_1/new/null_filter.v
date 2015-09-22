`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2015/09/22 09:30:47
// Design Name: 
// Module Name: null_filter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module null_filter(
    vid_pData_I,
    vid_pHSync_I,
    vid_pVSync_I,
    vid_pVDE_I,
    PixelClk_I,
    vid_pData_O,
    vid_pHSync_O,
    vid_pVSync_O,
    vid_pVDE_O,
    PixelClk_O
    );
    input [23:0] vid_pData_I;
    input vid_pHSync_I;
    input vid_pVSync_I;
    input vid_pVDE_I;
    input PixelClk_I;
    output [23:0] vid_pData_O;
    output vid_pHSync_O;
    output vid_pVSync_O;
    output vid_pVDE_O;
    output PixelClk_O;

    assign vid_pData_O = vid_pData_I;
    assign vid_pVSync_O = vid_pVSync_I;
    assign vid_pHSync_O = vid_pHSync_I;
    assign vid_pVDE_O = vid_pVDE_I;
    assign PixelClk_O = PixelClk_I;
endmodule
