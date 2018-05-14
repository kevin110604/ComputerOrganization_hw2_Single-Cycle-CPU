`timescale 1ns / 1ps

module Reg (CLK, RS_ID, RT_ID, REG_W_ID, Reg_WE, Reg_RData1, Reg_RData2, Reg_WData);
    input               CLK;
    input       [2:0]   RS_ID, RT_ID, REG_W_ID;     //RN1, RN2, WN
    input               Reg_WE;                     //RegWrite
    input       [15:0]  Reg_WData;                  //WD
    output      [15:0]  Reg_RData1;                 //RD1
    output      [15:0]  Reg_RData2;                 //RD2
    reg signed  [15:0]  Register [0:7];             //eight 16-bit Regs
    reg         [15:0]  Reg_RData1, Reg_RData2;
    
    /* add your code here */
    /* read or write data according to input signals.
     * The name of wires please refer to CPU module.
     * You need to change the register ID that you need to write data in.
     */
    always @(posedge CLK) begin
        if (Reg_WE == 1) begin
            Register[REG_W_ID] <= Reg_WData;
            //$display("RS=%b, RT=%b\n",RS_ID,RT_ID);
            //$display("REG_W_ID=%b, Reg_WData=%b\n",REG_W_ID,Reg_WData);
        end else begin
            Register[REG_W_ID] <= Register[REG_W_ID];
        end
    end
    
    
    always @(*) begin
        Reg_RData1=Register[RS_ID];
        Reg_RData2=Register[RT_ID];
    end
    
    //assign Reg_RData1=Register[RS_ID];
    //assign Reg_RData2=Register[RT_ID];

endmodule
