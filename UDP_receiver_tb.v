`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2019 05:47:54 PM
// Design Name: 
// Module Name: UDP_receiver_tb
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


module UDP_receiver_tb( );

reg clk,rst;
reg [63:0] in;
wire out;

UDP_receiver rec1(clk,rst,in,out);

initial

 begin
 
  in=64'h0123CDEFBCDEABCD; rst=1;clk=1;

#9  in=64'h00000000000a0003; rst=0;
#10 in=64'h000000000040c842;
#10 in=64'h0123CDEFBCDEABCD;




#120 in=64'h00000000000a0003; rst=0;

#10  in=64'h0000000000406625; 

#10  in=64'h03232defbcfeabca;





#130 in=64'h00000000000a0003; rst=0;

#10  in=64'h0000000000406f06;

#10  in=64'h04232d5fb3feab7a;


#130 in=64'h00000000000a0003; rst=0;

#10  in=64'h00000000004080ff;

#10  in=64'h04291d5fb8fea47a;


end



always

 #5 clk=~clk;





endmodule
