module half_adder(left, right, sum, carry);
	input left;
	input right;

	output sum;
	output carry;

	assign sum = left ^ right;
	assign carry = left & right;
endmodule