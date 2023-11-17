
module ander(a,b);
parameter n = 8;
input [n-1:0]a;
output b;

assign b = &(a);

endmodule


module tb_ander();
parameter n = 8;
reg [n-1:0] a;
wire b;

ander ttb (.a(a),.b(b));

initial begin 
	a = 255;
#10 	a = 254;

end
endmodule 