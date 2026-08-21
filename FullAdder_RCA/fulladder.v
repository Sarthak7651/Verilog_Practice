`timescale 1ns / 1ps

module fulladder(
input a,b,c_in,
output sum,carry
    );
sum  (.sum(sum),.a(a),.b(b),.c_in(c_in));
carry (.carry(carry),.a(a),.b(b),.c_in(c_in));
//assign sum = a^b^c_in;
//assign carry = a&b | (a^b)&c_in;

//assign sum=a^b^c_in;
//assign carry = a&b | b&c_in | c_in&a;
endmodule
