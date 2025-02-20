module ALU (
    input      [31:0] A,
    B,  // 32-bit inputs
    input      [ 2:0] ALUOp,  // 3-bit ALU operation code
    output reg [31:0] result  // 32-bit output  
);
  always @(*) begin
    case (ALUOp)
      3'b000:  result = A + B;
      3'b001:  result = A - B;
      3'b010:  result = A & B;  // AND
      3'b011:  result = A | B;  // OR
      3'b100:  result = A ^ B;  // XOR
      3'b101:  result = A << B;  // B is the shift amount to left
      3'b110:  result = A >> B;  // B is the shift amount to right 
      3'b111:  result = A >>> B;  // B is the shift amount to right with sign extension
      default: result = 32'b0;
    endcase
  end
endmodule
