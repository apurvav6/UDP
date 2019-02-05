`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2019 04:26:59 PM
// Design Name: 
// Module Name: UDP_tb
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


module UDP_tb() ;

reg [15:0] a,b,c,d;
reg rst,clk;
wire [63:0] out;

UDP u1(a,b,c,d,out,clk,rst);

initial
 begin
  
   a=16'hABCD; b=16'hBCDE; c=16'hCDEF; d=16'h0123; rst=1 ;clk=0; rst=1;
   
#150    a=16'hABCD; b=16'hBCDE; c=16'hCDEF; d=16'h0123; rst=0 ;
   

   
#150    a=16'hABCA; b=16'hBCFE; c=16'h2DEF; d=16'h0323; rst=0;

#150    a=16'hAB7A; b=16'hB3FE; c=16'h2D5F; d=16'h0423; rst=0;

#150    a=16'hA47A; b=16'hB8FE; c=16'h1D5F; d=16'h0429; rst=0;

end

always
 begin
  #5 clk=~clk;
 end
endmodule
