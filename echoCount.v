//ini untuk menghitung echo yang diterima

module echoCount(echoin,clk,latch,mode);

parameter bitSize= 10;

input clk;
input echoin;
output [bitSize-1:0] latch;
output [1:0] mode;

reg [bitSize-1:0] dist= 0;
reg [bitSize-1:0] latch;
reg [1:0] mode;

always @(negedge (echoin))
begin
	latch<= dist;
	if((latch>251) && (latch<280)) mode<= 2'b01;
	else if((latch>100) && (latch<250)) mode<= 2'b10;
	else if((latch>1) && (latch<99)) mode<= 2'b11;
	else mode<= 2'b00;
end

always @(posedge (clk))
begin
	if(echoin== 1'b1)
		dist<= dist+1'b1;
	else
		dist<= 1'b0;
end

endmodule