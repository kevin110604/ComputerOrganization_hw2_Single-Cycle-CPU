`timescale 1ns / 1ps

module MUX_2_to_1 (data0_i, data1_i, select_i, data_o);
    parameter size = 0; 
    input   [size-1:0]  data0_i;          
    input   [size-1:0]  data1_i;
    input               select_i;
    output  [size-1:0]  data_o;
    reg     [size-1:0]  data_o;
     
    /* add your design */
    /* choose the output according to select signal.
     * This lab has three MUX.
     * MUX_REG_Dst, MUX_ALUsrc, MUX_MEM_to_REG
     */
    always @(data0_i or data1_i or select_i) begin
        if (select_i==1'b1)
            data_o<=data1_i;
        else
            data_o<=data0_i;
    end

endmodule
