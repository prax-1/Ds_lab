
module nbit(input [8:0]a, output reg [3:0]b);

integer i;
assign i = 4'b0000;
always @(a)

begin
b = b + a[i];
i = i+1;

end 
endmodule 

module tb_nbit();

reg [8:0]a;
wire [3:0]b;
nbit nn (.a(a),.b(b));

initial begin

	a = 9'b110100101;
#50	a = 9'b010110001;

end
endmodule