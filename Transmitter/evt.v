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
// CREATED		"Thu Oct 03 22:30:19 2019"


module evt(
	CAI,
	RRI,
	RAI,
	CRI,
	E,
	RRO,
	CRONO,
	CRO
);


input wire	CAI;
input wire	RRI;
input wire	RAI;
input wire	CRI;
input wire	[0:1] E;
output wire	RRO;
output wire	CRONO;
output wire	CRO;

wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;

assign	CRONO = SYNTHESIZED_WIRE_4;




mux_2	b2v_inst(
	.sel(RAI),
	.i0(E[0]),
	.i1(SYNTHESIZED_WIRE_8),
	.o1(SYNTHESIZED_WIRE_8));


mux_2	b2v_inst1(
	.sel(RAI),
	.i0(E[1]),
	.i1(SYNTHESIZED_WIRE_9),
	.o1(SYNTHESIZED_WIRE_9));


nor_2	b2v_inst2(
	.i1(E[1]),
	.i2(E[0]),
	.o1(SYNTHESIZED_WIRE_5));


or_2	b2v_inst3(
	.i1(SYNTHESIZED_WIRE_2),
	.i2(RRI),
	.o1(RRO));


or_3	b2v_inst4(
	.i1(CRI),
	.i2(SYNTHESIZED_WIRE_3),
	.i3(SYNTHESIZED_WIRE_4),
	.o1(CRO));


nor_2	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_5),
	.i2(CAI),
	.o1(SYNTHESIZED_WIRE_2));


and_2	b2v_inst6(
	.i1(SYNTHESIZED_WIRE_8),
	.i2(RAI),
	.o1(SYNTHESIZED_WIRE_3));


and_2	b2v_inst7(
	.i1(RAI),
	.i2(SYNTHESIZED_WIRE_9),
	.o1(SYNTHESIZED_WIRE_4));


endmodule
