`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2015/09/20 14:36:50
// Design Name: 
// Module Name: debug_counter
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


module debug_counter(CLK, led);
input CLK;
output [3:0] led;
reg [7:0] Q;

always @(negedge CLK)
    Q = Q + 8'd1;

assign led[3:0] = Q[7:4];

endmodule
