module t_ff ( input clk, input rst, input t, output reg q, output reg qbar);  
  
  always @ (posedge clk) begin  
    if (rst == 1'b1)  
      q <= 1'b0;  
    else  
        assign q = t ? (~q) : q;
  end  
assign qbar = ~q;
endmodule  




module tb_t1_ff();

reg t,clk,rst;
wire q, qbar;

t_ff gh (.clk(clk),.rst(rst),.t(t),.q(q),.qbar(qbar));

initial begin
	clk = 0;
	forever #50 clk = ~clk;

end
initial begin
	rst = 1;
	t<=0;
	#100;
	rst = 0;
	t<=1;
	#100;
	t<=0;
	#100;
	t<=1;
	
end
endmodule