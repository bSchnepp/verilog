`include "half_adder.v"

module full_adder(left, right, past_carry, sum, carry);
	input left;
	input right;
	input past_carry;

	output sum;
	output carry;

	wire first_adder_sum;
	wire first_adder_carry;
	wire second_adder_sum;
	wire second_adder_carry;

	half_adder first_adder(.left(left), .right(right), .sum(first_adder_sum), .carry(first_adder_carry));
	half_adder second_adder(.left(first_adder_sum), .right(past_carry), .sum(second_adder_sum), .carry(second_adder_carry));

	assign sum = second_adder_sum;
	assign carry = second_adder_carry | first_adder_carry;
endmodule