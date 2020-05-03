//prescaler dari 50Mhz dibagi 500 kali menjadi 100kHz atau 10uS

module prescale(clkin,clkout);

parameter bitScale= 9;
input clkin;
output clkout;
reg [bitScale-1:0] count= 0;

assign clkout= count[bitScale-1];

always @(posedge (clkin))
	count<= count+1'b1;

endmodule