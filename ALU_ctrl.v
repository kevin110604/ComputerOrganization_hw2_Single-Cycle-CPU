`timescale 1ns / 1ps

module ALU_ctrl (funct, ALU_OP, ALU_CTRL);
    input   [5:0]   funct;
    input   [1:0]   ALU_OP;
    output  [3:0]   ALU_CTRL;
    reg     [3:0]   ALU_CTRL;
   
    /* add your design */
    /* set ALU_CTRL according to ALU_OP and funct */
    always @(funct) begin
        if (funct==6'b100000)           //add
            ALU_CTRL<=4'b0001;
        else if (funct==6'b100010)      //sub
            ALU_CTRL<=4'b0010;
        else if (funct==6'b101010)      //slt
            ALU_CTRL<=4'b0011;
        else
            ALU_CTRL<=4'b0000;
    end

endmodule
