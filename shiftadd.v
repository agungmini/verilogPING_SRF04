//shift and add3

module shiftadd(in,ones,tens,hundreds,thausands);

parameter bitIn= 10;
parameter bitOut= 4;

input [bitIn-1:0] in;
output [bitOut-1:0] ones;
output [bitOut-1:0] tens;
output [bitOut-1:0] hundreds;
output [bitOut-1:0] thausands;

wire [bitOut-1:0] c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
wire [bitOut-1:0] d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12;

assign d1= {1'b0,in[9:7]};
assign d2= {c1,in[6]};
assign d3= {c2,in[5]};
assign d4= {c3,in[4]};
assign d5= {c4,in[3]};
assign d6= {c5,in[2]};
assign d7= {c6,in[1]};
assign d8= {1'b0,c1[3],c2[3],c3[3]};
assign d9= {c8,c4[3]};
assign d10= {c9,c5[3]};
assign d11= {c10,c6[3]};
assign d12= {1'b0,c8[3],c9[3],c10[3]};

add3 m1(d1,c1);
add3 m2(d2,c2);
add3 m3(d3,c3);
add3 m4(d4,c4);
add3 m5(d5,c5);
add3 m6(d6,c6);
add3 m7(d7,c7);
add3 m8(d8,c8);
add3 m9(d9,c9);
add3 m10(d10,c10);
add3 m11(d11,c11);
add3 m12(d12,c12);

assign ones= {c7[2:0],in[0]};
assign tens= {c11[2:0],c7[3]};
assign hundreds= {c12[2:0],c11[3]};
assign thausands= {1'b0,1'b0,1'b0,c12[3]};

endmodule 