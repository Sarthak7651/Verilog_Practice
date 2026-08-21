`timescale 1ns / 1ps

module carry(
input a,b,c_in,
output carry
    );
assign carry = (a&b) | (b&c_in) | (c_in&a);
endmodule
