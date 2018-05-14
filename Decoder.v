`timescale 1ns / 1ps

module Decoder (OP, Reg_WE, DM_WE, ALU_OP, ALU_src, MEM_to_REG, REG_Dst, funct);
    input   [5:0]   OP;
    input   [5:0]   funct;
    output          Reg_WE, DM_WE, ALU_src, MEM_to_REG, REG_Dst;
    output  [1:0]   ALU_OP;
    
    reg             Reg_WE, DM_WE, ALU_src, MEM_to_REG, REG_Dst;
    reg     [1:0]   ALU_OP;

    /* add your design */       
    /* decode signal according to OP code that passed in.
     * Signals then are send to Reg or DM for them to know 
     * whether this instruction should do read or write.
     *
     * Reset the Reg_WE and DM_WE according OP code and funct
     * And set ALU_src, MEM_to_REG, REG_Dst, ALU_OP according OP and funct
     */
    always @(OP or funct) begin
        if (OP == 6'b000000) begin
            REG_Dst<=1;
        end else begin
            REG_Dst<=0;
        end

        if (funct==6'b100000||funct==6'b100010||funct==6'b101010) begin
            Reg_WE<=1;
            ALU_src<=0;
            ALU_OP<=2'b00;
            DM_WE<=0;
            MEM_to_REG<=0;
        end else begin
            Reg_WE<=0;
            ALU_src<=1;
            ALU_OP<=2'b00;
            DM_WE<=1;
            MEM_to_REG<=1;
        end
    end
    
endmodule
