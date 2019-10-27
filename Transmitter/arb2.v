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
// CREATED		"Thu May 30 01:30:52 2019"



module arb2(
	r1,
	r2,
	ao,
	ro,
	a2,
	a1
);


input wire	r1;
input wire	r2;
input wire	ao;
output wire	ro;
output wire	a2;
output wire	a1;

wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;





asymc	b2v_inst(
	.I1(SYNTHESIZED_WIRE_12),
	.I0(r1),
	.Q(SYNTHESIZED_WIRE_16));


asymc	b2v_inst1(
	.I1(SYNTHESIZED_WIRE_12),
	.I0(r2),
	.Q(SYNTHESIZED_WIRE_17));


and_3	b2v_inst12(
	.i1(SYNTHESIZED_WIRE_13),
	.i2(SYNTHESIZED_WIRE_14),
	.i3(ao),
	.o1(a2));


and_3	b2v_inst13(
	.i1(ao),
	.i2(SYNTHESIZED_WIRE_14),
	.i3(SYNTHESIZED_WIRE_15),
	.o1(a1));


not_1	b2v_inst2(
	.i1(ao),
	.o1(SYNTHESIZED_WIRE_12));


or_2	b2v_inst3(
	.i1(SYNTHESIZED_WIRE_16),
	.i2(SYNTHESIZED_WIRE_17),
	.o1(ro));


or_2	b2v_inst4(
	.i1(r1),
	.i2(r2),
	.o1(SYNTHESIZED_WIRE_14));


nand_2	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_16),
	.i2(SYNTHESIZED_WIRE_15),
	.o1(SYNTHESIZED_WIRE_13));


nand_2	b2v_inst6(
	.i1(SYNTHESIZED_WIRE_13),
	.i2(SYNTHESIZED_WIRE_17),
	.o1(SYNTHESIZED_WIRE_15));


endmodule
