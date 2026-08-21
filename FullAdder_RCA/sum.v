`timescale 1ns / 1ps

module sum(
input a,b,c_in,
output sum
);
assign sum=a^b^c_in;
endmodule
