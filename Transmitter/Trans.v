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
// CREATED		"Thu Oct 03 16:25:12 2019"

`include "elements.v"
`include "arb2.v"
`include "cenc4_2.v"
`include "enc4_2.v"
`include "evt.v"
`include "asymc.v"

module Trans(
	E,
	req,
	ON,
	CA,
	COL,
	CRON,
	R,
	RA,
	Rp,
	RR
);


input wire	[0:7] E;
output wire	req;
output wire	ON;
output wire	[0:1] CA;
output wire	[0:1] COL;
output wire	[0:3] CRON;
output wire	[0:1] R;
output wire	[0:1] RA;
output wire	[0:1] Rp;
output wire	[0:1] RR;

wire	[0:3] CA_ALTERA_SYNTHESIZED;
wire	[1:0] CR;
wire	[0:3] CRON_ALTERA_SYNTHESIZED;
wire	[0:3] gdfx_temp0;
wire	[0:1] R_ALTERA_SYNTHESIZED;
wire	[0:1] RA_ALTERA_SYNTHESIZED;
wire	req_ALTERA_SYNTHESIZED;
wire	[0:1] Rp_ALTERA_SYNTHESIZED;
wire	[0:1] RR_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_8;





gnd_1	b2v_inst(
	.o1(SYNTHESIZED_WIRE_10));


arb2	b2v_inst12(
	.ao(SYNTHESIZED_WIRE_0),
	.r1(RR_ALTERA_SYNTHESIZED[0]),
	.r2(RR_ALTERA_SYNTHESIZED[1]),
	.ro(SYNTHESIZED_WIRE_0),
	.a1(RA_ALTERA_SYNTHESIZED[0]),
	.a2(RA_ALTERA_SYNTHESIZED[1]));


arb2	b2v_inst13(
	.ao(SYNTHESIZED_WIRE_1),
	.r1(CR[0]),
	.r2(CR[1]),
	.ro(SYNTHESIZED_WIRE_1),
	.a1(CA_ALTERA_SYNTHESIZED[0]),
	.a2(CA_ALTERA_SYNTHESIZED[1]));


enc4_2	b2v_inst14(
	.W(gdfx_temp0),
	.req(req_ALTERA_SYNTHESIZED),
	.C({Rp_ALTERA_SYNTHESIZED[1],Rp_ALTERA_SYNTHESIZED[0]}));


gnd_1	b2v_inst18(
	.o1(CA_ALTERA_SYNTHESIZED[2]));


gnd_1	b2v_inst19(
	.o1(CA_ALTERA_SYNTHESIZED[3]));

gnd_1	b2v_inst20(
	.o1(gdfx_temp0[2]));

gnd_1	b2v_inst21(
	.o1(gdfx_temp0[3]));

evt	b2v_inst2(
	.RRI(SYNTHESIZED_WIRE_10),
	.RAI(RA_ALTERA_SYNTHESIZED[0]),
	.CAI(CA_ALTERA_SYNTHESIZED[0]),
	.CRI(SYNTHESIZED_WIRE_3),
	.E(E[0:1]),
	.RRO(SYNTHESIZED_WIRE_4),
	.CRONO(CRON_ALTERA_SYNTHESIZED[0]),
	.CRO(CR[0]));


cenc4_2	b2v_inst23(
	.CA(CA_ALTERA_SYNTHESIZED),
	.CRON(CRON_ALTERA_SYNTHESIZED),
	.ON(ON),
	.COL(COL));


evt	b2v_inst3(
	.RRI(SYNTHESIZED_WIRE_4),
	.RAI(RA_ALTERA_SYNTHESIZED[0]),
	.CAI(CA_ALTERA_SYNTHESIZED[1]),
	.CRI(SYNTHESIZED_WIRE_5),
	.E(E[2:3]),
	.RRO(RR_ALTERA_SYNTHESIZED[0]),
	.CRONO(CRON_ALTERA_SYNTHESIZED[1]),
	.CRO(CR[1]));


DFF_1	b2v_inst4(
	.CLK(req_ALTERA_SYNTHESIZED),
	.D(Rp_ALTERA_SYNTHESIZED[1]),
	
	
	
	.Q(R_ALTERA_SYNTHESIZED[1]));


evt	b2v_inst5(
	.RRI(SYNTHESIZED_WIRE_10),
	.RAI(RA_ALTERA_SYNTHESIZED[1]),
	.CAI(CA_ALTERA_SYNTHESIZED[0]),
	.CRI(SYNTHESIZED_WIRE_10),
	.E(E[4:5]),
	.RRO(SYNTHESIZED_WIRE_8),
	.CRONO(CRON_ALTERA_SYNTHESIZED[2]),
	.CRO(SYNTHESIZED_WIRE_3));


evt	b2v_inst6(
	.RRI(SYNTHESIZED_WIRE_8),
	.RAI(RA_ALTERA_SYNTHESIZED[1]),
	.CAI(CA_ALTERA_SYNTHESIZED[1]),
	.CRI(SYNTHESIZED_WIRE_10),
	.E(E[6:7]),
	.RRO(RR_ALTERA_SYNTHESIZED[1]),
	.CRONO(CRON_ALTERA_SYNTHESIZED[3]),
	.CRO(SYNTHESIZED_WIRE_5));


DFF_1	b2v_inst7(
	.CLK(req_ALTERA_SYNTHESIZED),
	.D(Rp_ALTERA_SYNTHESIZED[0]),
	
	
	
	.Q(R_ALTERA_SYNTHESIZED[0]));

assign	req = req_ALTERA_SYNTHESIZED;
assign	CA[0:1] = CA_ALTERA_SYNTHESIZED[0:1];
assign	CRON = CRON_ALTERA_SYNTHESIZED;
assign	R[0:1] = R_ALTERA_SYNTHESIZED[0:1];
assign	RA[0:1] = RA_ALTERA_SYNTHESIZED[0:1];
assign  gdfx_temp0[0:1] = RA_ALTERA_SYNTHESIZED[0:1];
assign	Rp[0:1] = Rp_ALTERA_SYNTHESIZED[0:1];
assign	RR[0:1] = RR_ALTERA_SYNTHESIZED[0:1];

endmodule
