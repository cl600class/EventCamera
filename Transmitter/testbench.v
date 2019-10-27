`timescale 1ns/10ps

module testbench();
initial
begin
$dumpfile("out.vcd");
$dumpvars();
end


reg [0:7] E;
wire req;
wire ON;
wire [0:1] CA;
wire [0:1] COL;
wire [0:3] CRON;
wire [0:1] R;
wire [0:1] RA;
wire [0:1] Rp;
wire [0:1] RR;

Arbiter i1(
    .E(E[0:7]),
    .req(req),
    .ON(ON),
    .CA(CA[0:1]),
    .COL(COL[0:1]),
    .CRON(CRON[0:1]),
    .R(R[0:1]),
    .RA(RA[0:1]),
    .Rp(Rp[0:1]),
    .RR(RR[0:1])
);

initial begin
  `ifdef FSDB
    $fsdbDumpfile("out.fsdb");
	$fsdbDumpvars();
  `endif

  `ifdef VCD
    $dumpfile("out.vcd");
	$dumpvars();
  `endif
end

// E[ 7 ]
initial
begin
	E[7] = 1'b0;
	E[7] = #40000 1'b1;
	E[7] = #10000 1'b0;
	E[7] = #80000 1'b1;
	E[7] = #10000 1'b0;
end 
// E[ 6 ]
initial
begin
	E[6] = 1'b0;
end 
// E[ 5 ]
initial
begin
	E[5] = 1'b0;
end 
// E[ 4 ]
initial
begin
	E[4] = 1'b0;
	E[4] = #40000 1'b1;
	E[4] = #10000 1'b0;
end 
// E[ 3 ]
initial
begin
	E[3] = 1'b0;
	E[3] = #40000 1'b1;
	E[3] = #10000 1'b0;
	E[3] = #110000 1'b1;
	E[3] = #10000 1'b0;
end 
// E[ 2 ]
initial
begin
	E[2] = 1'b0;
	E[2] = #120000 1'b1;
	E[2] = #10000 1'b0;
end 
// E[ 1 ]
initial
begin
	E[1] = 1'b0;
	E[1] = #210000 1'b1;
	E[1] = #10000 1'b0;
end 
// E[ 0 ]
initial
begin
	E[0] = 1'b0;
	E[0] = #40000 1'b1;
	E[0] = #10000 1'b0;
	E[0] = #150000 1'b1;
	E[0] = #10000 1'b0;
end 

endmodule
