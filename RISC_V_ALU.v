module RISCVALU(ALUct1,A,B,ALUOut,Zero);
    input [3:0] ALUct1;
    input [63:0] A,B;
    output reg [63:0] ALUOut;
    output Zero;
    assign Zero = (ALUOut == 0);
    always @(ALUct1,A,B) // re evaluate if these change
        case (ALUct1)
            0 : ALUOut <= A&B;
            1 : ALUOut <= A|B;
            2 : ALUOut <= A+B;
            6 : ALUOut <= A-B;
            7 : ALUOut <= A<B?1:0;
            12 : ALUOut <= ~(A|B);
            default : ALUOut <= 0; // should not happen , default to zero
        endcase
endmodule
