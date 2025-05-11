module Mult4To1(In1,In2,In3,In4,Sel,Out);
    input [63:0] In1,In2,In3,In4;
    input [1:0] Sel; // selector signal
    output reg [63:0] Out; // 64-bit output
    always @(In1,In2,In3,In4,Sel)
        case (Sel)
            0 : Out <= In1;
            1 : Out <= In2;
            2: Out <= In3;
            default: Out <= In4;
        endcase
endmodule


