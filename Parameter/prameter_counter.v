//A "PARAMETER" is a constant with a given name. We can not specify the size of parameter. The size gets decided from the constant value itself.
//if the size is not specified it is taken to be 32 bit.

module counter
  #(parameter n = 7)(
  input clk,rst,
  output reg [n-1:0] count);
  
//parameter n =7;
  always @(posedge clk)
  begin
    if(rst)
      count=0;
  else count=count+1;
  end
endmodule
