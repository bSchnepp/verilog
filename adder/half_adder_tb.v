`include "half_adder.v"

module half_adder_tb;
	reg left = 0;
	reg right = 0;

	wire sum;
	wire carry;

	half_adder adder_inst(.left(left), .right(right), .sum(sum), .carry(carry));

	/* 0 + 0 == (0, 0), 0 + 1 == (0, 1), 1 + 0 == (0, 1), 1 + 1 == (1, 0) */
	initial begin
		$dumpfile("half_adder_tb.vcd");
		$dumpvars();
		left = 1'b0;
		right = 1'b0;
		#1;
		left = 1'b0;
		right = 1'b1;
		#1;
		left = 1'b1;
		right = 1'b0;
		#1;
		left = 1'b1;
		right = 1'b1;
	end
endmodule