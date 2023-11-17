
module multiplexer_4t01(A,B,C,D,S1,S0,Y);

	input A,B,C,D,S0,S1;
	output Y;

assign Y = S1?(S0?D:C):(S0?B:A);

endmodule




