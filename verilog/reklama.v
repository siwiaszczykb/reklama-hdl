module reklama(
	CLK50,
	seg1,
	seg2,
	seg3,
	seg4,
	seg5,
	seg6
);

input wire	CLK50;
output wire	[6:0] seg1;
output wire	[6:0] seg2;
output wire	[6:0] seg3;
output wire	[6:0] seg4;
output wire	[6:0] seg5;
output wire	[6:0] seg6;

wire	ENABLE;
wire	[6:0] segdata5;
wire	[6:0] segdata1;
wire	[6:0] segdata2;
wire	[6:0] segdata3;
wire	[6:0] segdata4;
wire	[6:0] segdata6;
wire	[3:0] count;
wire	[4:0] msgcode;
wire	[6:0] segcode;

counter	counter1(
	.CLK(CLK50),
	.EN(ENABLE),
	.Q(count));

shiftreg	reg1(
	.CLK(CLK50),
	.EN(ENABLE),
	.D(segdata5),
	.Q(segdata6));

//dla wstepnej inicjalizacji segmentow jako pustych, kod 7seg zanegowany + segmenty zanegowane
assign	seg1 =  ~segdata1;
assign	seg2 =  ~segdata2;
assign	seg3 =  ~segdata3;
assign	seg4 =  ~segdata4;
assign	seg5 =  ~segdata5;
assign	seg6 =  ~segdata6;

prescaler	preskaler1(
	.clk(CLK50),
	.clk1Hz(ENABLE));
	defparam	preskaler1.sysCLK = 49999999;

msg	message(
	.A(count),
	.Q(msgcode));

strTo7seg	translator(
	.A(msgcode),
	.SEG(segcode));

shiftreg	reg2(
	.CLK(CLK50),
	.EN(ENABLE),
	.D(segcode),
	.Q(segdata1));

shiftreg	reg3(
	.CLK(CLK50),
	.EN(ENABLE),
	.D(segdata1),
	.Q(segdata2));

shiftreg	reg4(
	.CLK(CLK50),
	.EN(ENABLE),
	.D(segdata2),
	.Q(segdata3));

shiftreg	reg5(
	.CLK(CLK50),
	.EN(ENABLE),
	.D(segdata3),
	.Q(segdata4));

shiftreg	reg6(
	.CLK(CLK50),
	.EN(ENABLE),
	.D(segdata4),
	.Q(segdata5));

endmodule
