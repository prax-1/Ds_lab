module jk_ff(input reset,input clk,input j,input k,output reg q,output r);
assign r=~q;
always @(posedge clk)
if(reset) q<=1'b0;
else
case({j,k})
2'b00: q<=q;
2'b01: q<=1'b0;
2'b10: q<=1'b1;
2'b11: q<=~q;
endcase
endmodule

module jk_ff_bench();
reg clk=0;
reg j=0;
reg k=0;
reg reset=0;
wire q,r;

always #10 clk = ~clk;

jk_ff dut(.reset(reset), .clk(clk), .j(j), .k(k), .q(q), .r(r));

initial begin
$dumpfile("dump.vcd");
$dumpvars(1);
j <=0;k<=0;
#10 j <=0;k<=1;
#10 j <=1;k<=0;

#10 j <=1;k<=1;
#5 reset = 1'b0;
#25 $finish ;
end


endmodule

