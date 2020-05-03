//buzzer ketika objek semakin dekat

module buzzer(state,en,clk,buzz);

`define dis 2'b00
`define low 2'b01
`define med 2'b10
`define hi 2'b11

parameter bitScaler1= 14;	//untuk intensitas tinggi 
parameter bitScaler2= 2;	//untuk intensitas menengah
parameter bitScaler3= 2;	//untuk intensitas rendah

input state;
input [1:0] en;
input clk;
output buzz;

wire prescale1;
wire prescale2;
reg buzz;

reg [bitScaler1-1:0] count=0;
reg [bitScaler2-1:0] count1=0;
reg [bitScaler3-1:0] count2=0;

assign prescale1= count[13];
assign prescale2= count1[1];

always @(posedge (clk))
	count<= count+1'b1;
	
always @(posedge (prescale1))
	count1<= count1+1'b1;
		
always @(posedge (prescale2))
	count2<= count2+1'b1;
	
always @(*)
	if(state==1'b1)
	begin
	case(en)
		`dis: buzz<= 1'b0;
		`low: buzz<= count2[1];
		`med: buzz<= count1[1];
		`hi: buzz<= count[13];
	endcase
	end else buzz<= 1'b0;
		
endmodule