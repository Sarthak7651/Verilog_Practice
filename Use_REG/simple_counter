`timescale 1ns / 1ps

module simple_counter(
input clk,rst,
output reg [31:0] count
    );
    
    always @(posedge clk)
    begin
    if(rst)
    count=32'b0;
    else count=count+1;
    end
endmodule
