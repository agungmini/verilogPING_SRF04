//mengubah clock 50Mhz dibagi 250 menjadi 200kHz

module prescalerEcho(clkin,clkout);

parameter bitScale= 8;

input clkin;
output clkout; 
reg [bitScale-1:0] count=0;

assign clkout= count[bitScale-1];

always @(posedge (clkin))
	count<= count+1'b1;

endmodule