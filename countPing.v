//generate sinyal dengan lebar pulsa 10uS setiap 10ms

module countPing(en,clkin,pulse);

`define high 1
`define low 0

input en;
input clkin;
output pulse;


parameter bitSize= 13;
reg [bitSize-1:0] count= 0;
reg pulse;

always @(posedge (clkin))
	case(en)
			`low: begin
				count<= 1'b0;
				pulse<= 1'b0;
			end
			`high: begin
				count<= count + 1'b1;
				if(count > 8190)
					pulse<= 1'b1;
				else
					pulse<= 1'b0;
			end
	endcase

endmodule
