module ALU_tb;
  reg [31:0] A, B;
  reg  [ 2:0] ALUOp;
  wire [31:0] Result;

  ALU uut (
      .A(A),
      .B(B),
      .ALUOp(ALUOp),
      .result(Result)
  );

  initial begin
    $dumpfile("ALU_tb.vcd");  // Create a VCD file for waveform dumping
    $dumpvars(0, ALU_tb);  // Dump the values of all variables in the module ALU_tb            
    $dumpvars(1, uut);
    $monitor("A=%d, B=%d, ALUOp=%b, Result=%d", A, B, ALUOp, Result);

    A = 10;
    B = 5;

    ALUOp = 3'b000;
    #10;  // ADD
    ALUOp = 3'b001;
    #10;  // SUB
    ALUOp = 3'b010;
    #10;  // AND
    ALUOp = 3'b011;
    #10;  // OR
    ALUOp = 3'b100;
    #10;  // XOR
    ALUOp = 3'b101;
    #10;  // Shift Left
    ALUOp = 3'b110;
    #10;  // Shift Right

    $finish;
  end
endmodule
