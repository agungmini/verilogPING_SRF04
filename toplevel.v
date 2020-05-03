module toplevel(en,clk,trig,echoin,ones,tens,hundreds,thausands,buzz);

parameter bit7= 7;
parameter bit10= 10;
parameter bit4= 4;

input en;
input clk;
input echoin;
output trig;
output [bit7-1:0] ones;
output [bit7-1:0] tens;
output [bit7-1:0] hundreds;
output [bit7-1:0] thausands;
output buzz;

wire clkOut;
wire clkEcho;
wire [bit10-1:0] distVal;
wire [bit4-1:0] oneto7;
wire [bit4-1:0] tento7;
wire [bit4-1:0] hundredto7;
wire [bit4-1:0] thausandto7;
wire [1:0] mode;

prescale myScale(clk,clkOut);
prescalerEcho mytickEcho(clk,clkEcho);
countPing mtTrig(en,clkOut,trig);
echoCount myEcho(echoin,clkEcho,distVal,mode);
shiftadd myshift(distVal,oneto7,tento7,hundredto7,thausandto7);
bcdto7seg mybcdone(oneto7,ones);
bcdto7seg mybcdten(tento7,tens);
bcdto7seg mybcdhundred(hundredto7,hundreds);
bcdto7seg mybcdthausand(thausandto7,thausands);
buzzer mybuzz(en,mode,clkOut,buzz);

endmodule