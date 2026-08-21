`timescale 1ns / 1ps

module tb_use_wire;
reg a,b,c,d;
wire f;
use_wire DUT (.a(a),.b(b),.c(c),.d(d),.f(f));
initial
begin
$dumpfile("use_wire.vcd");
$dumpvars(0,tb_use_wire);
$monitor("time=%.0f ns,a=%b,b=%b,c=%b,d=%b,f=%b",$realtime,a,b,c,d,f);

#0 a=0;b=0;c=0;d=0;
#2 a=0;b=0;c=0;d=1;
#2 a=0;b=0;c=1;d=0;
#2 a=0;b=0;c=1;d=1;

#2 a=0;b=1;c=0;d=0;
#2 a=0;b=1;c=0;d=1;
#2 a=0;b=1;c=1;d=0;
#2 a=0;b=1;c=1;d=1;

#2 a=1;b=0;c=0;d=1;
#2 a=1;b=0;c=0;d=0;
#2 a=1;b=0;c=1;d=1;
#2 a=1;b=0;c=1;d=0;

#2 a=1;b=1;c=0;d=0;
#2 a=1;b=1;c=0;d=1;
#2 a=1;b=1;c=1;d=0;
#2 a=1;b=1;c=1;d=1;
#2 $finish;
end
endmodule
