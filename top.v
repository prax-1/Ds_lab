module Top(
input clk,
output DP,
output [3:0] digit_sel,
output [6:0]seg
    );
    
    wire [13:0]bin ;
    wire [15:0]bcd;
    wire [8:0] in=9'b101101000;
//    not goonaa maKE IT alone.....lo lo lo lo lo
//    count_ones uut2();
    count_ones utt0(.x(in),.y(bin));
    bin2bcd uut1 (.bin(bin),.bcd(bcd));
    
    display_bcd_7segment_4digit uut2 (.bcd(bcd),.seg(seg), .digit_sel(digit_sel), .DP(DP), .clk(clk) );
    
endmodule
