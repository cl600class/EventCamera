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
// CREATED		"Wed Jul 03 13:33:55 2019"


module enc4_2(
	W,
	req,
	C
);


input wire	[0:3] W;
output wire	req;
output wire	[0:1] C;

wire	[0:1] C_ALTERA_SYNTHESIZED;





or_2	b2v_inst(
	.i1(W[1]),
	.i2(W[3]),
	.o1(C_ALTERA_SYNTHESIZED[0]));


or_2	b2v_inst1(
	.i1(W[2]),
	.i2(W[3]),
	.o1(C_ALTERA_SYNTHESIZED[1]));


or_4	b2v_inst2(
	.i1(W[0]),
	.i2(W[1]),
	.i3(W[2]),
	.i4(W[3]),
	.o1(req));

assign	C[0:1] = C_ALTERA_SYNTHESIZED[0:1];

endmodule
