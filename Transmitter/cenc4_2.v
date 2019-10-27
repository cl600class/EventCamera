// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Fri Oct 04 13:39:49 2019"


module cenc4_2(
	CA,
	CRON,
	ON,
	COL
);


input wire	[0:3] CA;
input wire	[0:3] CRON;
output wire	ON;
output wire	[0:1] COL;

wire	[0:1] COL_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;





enc4_2	b2v_inst(
	.W(CA),
	.req(SYNTHESIZED_WIRE_5),
	.C({COL_ALTERA_SYNTHESIZED[1],COL_ALTERA_SYNTHESIZED[0]}));


or_4	b2v_inst1(
	.i1(SYNTHESIZED_WIRE_0),
	.i2(SYNTHESIZED_WIRE_1),
	.i3(SYNTHESIZED_WIRE_2),
	.i4(SYNTHESIZED_WIRE_3),
	.o1(SYNTHESIZED_WIRE_4));


and_2	b2v_inst3(
	.i1(CA[0]),
	.i2(CRON[0]),
	.o1(SYNTHESIZED_WIRE_0));


and_2	b2v_inst4(
	.i1(CA[1]),
	.i2(CRON[1]),
	.o1(SYNTHESIZED_WIRE_1));


and_2	b2v_inst5(
	.i1(CA[0]),
	.i2(CRON[2]),
	.o1(SYNTHESIZED_WIRE_2));


and_2	b2v_inst6(
	.i1(CA[1]),
	.i2(CRON[3]),
	.o1(SYNTHESIZED_WIRE_3));


asymc	b2v_inst7(
	.I1(SYNTHESIZED_WIRE_4),
	.I0(SYNTHESIZED_WIRE_5),
	.Q(ON));

assign	COL[0:1] = COL_ALTERA_SYNTHESIZED[0:1];

endmodule
