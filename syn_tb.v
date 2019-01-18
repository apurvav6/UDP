`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2019 06:02:33 PM
// Design Name: 
// Module Name: syn_tb
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


module syn_tb;
reg clk;
reg rst;
wire [2:0] q;
syncounter(q,rst,clk)
initial
       begin
           clk=0;
           rst=1;
#20 rst=0;
end
always
#5 clk=~clk;    

    
endmodule
