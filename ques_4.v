
module ff(d,clk,reset,q);

input d,clk,reset;
output reg q;

wire nots;

always@(posedge clk)
	begin
		if(reset == 1'b1)
		begin
		q <= 1'b0;
		end
		else
		begin
		q <= d;
		end
	end
endmodule


module tb_ff();

reg d,clk,reset;
wire q;

ff gh (.d(d),.clk(clk),.reset(reset),.q(q));

initial begin

	d = 1'b0; clk = 1'b0; reset = 1'b0;
#10	d = 1'b0; clk = 1'b0; reset = 1'b1;
#10	d = 1'b0; clk = 1'b1; reset = 1'b0;
#10	d = 1'b0; clk = 1'b1; reset = 1'b1;
#10	d = 1'b1; clk = 1'b0; reset = 1'b0;
#10	d = 1'b1; clk = 1'b0; reset = 1'b1;
#10	d = 1'b1; clk = 1'b1; reset = 1'b0;
#10	d = 1'b1; clk = 1'b1; reset = 1'b1;

end
endmodule


module tb_t_ff;  
  reg clk;  
  reg rst;  
  reg t;  
  
  t_ff uut (  .clk(clk),  
            .rst(rst),  
            .t(t),  
          .q(q));  
  
  always #5 clk = ~clk;  
  
  initial begin  
    {rst, clk, t} <= 0;  
  
    repeat(2) @(posedge clk);  
    rst <= 1;  
    integer i;
    for (i = 0; i < 20; i = i+1) 
begin  
      reg [4:0] dly = $random;
        
    end  
#20 $finish;  
  end  