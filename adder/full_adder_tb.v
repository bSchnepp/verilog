`include "full_adder.v"

module full_adder_tb;
	reg left = 0;
	reg right = 0;
	reg prev_carry = 0;

	wire sum;
	wire carry;

	full_adder adder_inst(.left(left), .right(right), .past_carry(prev_carry), .sum(sum), .carry(carry));

	/* 0 + 0 + 0 == (0, 0), 0 + 1 + 0 == (0, 1), 1 + 0 + 0 == (0, 1), 1 + 1 + 0 == (1, 0)
	 * 0 + 0 + 1 == (0, 1), 0 + 1 + 1 == (1, 0), 1 + 0 + 1 == (0, 1), 1 + 1 + 1 == (1, 1) 
	 */
	initial begin
		$dumpfile("full_adder_tb.vcd");
		$dumpvars();
		left = 1'b0;
		right = 1'b0;
		prev_carry = 1'b0;
		#1;
		left = 1'b0;
		right = 1'b1;
		prev_carry = 1'b0;
		#1;
		left = 1'b1;
		right = 1'b0;
		prev_carry = 1'b0;
		#1;
		left = 1'b1;
		right = 1'b1;
		prev_carry = 1'b0;
		#1;
		left = 1'b0;
		right = 1'b0;
		prev_carry = 1'b1;
		#1;
		left = 1'b0;
		right = 1'b1;
		prev_carry = 1'b1;
		#1;
		left = 1'b1;
		right = 1'b0;
		prev_carry = 1'b1;
		#1;
		left = 1'b1;
		right = 1'b1;
		prev_carry = 1'b1;		
	end
endmodule