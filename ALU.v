`timescale 1ns / 1ps

module ALU (source1, source2, ALU_CTRL, result);
    input   [15:0]  source1;
    input   [15:0]  source2;
    input   [3:0]   ALU_CTRL;
    output  [15:0]  result;
    reg     [15:0]  result;
	 
    /* add your design */
    /* do the operation according to ALU_CTRL */
    always @(source1 or source2 or ALU_CTRL) begin
        case (ALU_CTRL)
            4'b0001: result <= source1+source2;
            4'b0010: result <= source1-source2;
            4'b0011: result <= (source1 < source2) ? 16'd1 : 16'd0;
            default: result <= result;
        endcase
    end

endmodule
