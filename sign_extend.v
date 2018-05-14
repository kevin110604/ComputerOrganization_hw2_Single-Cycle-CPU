`timescale 1ns / 1ps

module sign_extend (immediate_in, sign_extend);
    input   [13:0] immediate_in;
    output  [15:0] sign_extend;
    reg     [15:0] sign_extend;

    /* add your design */
    /* extend the immediate_in(14 bits) to 16bits
     * but don't change it's sign
     */
    always @ (immediate_in) begin
        sign_extend <= { {2{immediate_in[13]}}, immediate_in};
    end
    
endmodule
