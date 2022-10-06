`timescale 1ns / 1ps

module tb_BCDtoFND();
reg [1:0] i_digitSelect;
reg [3:0] i_value;
reg i_en;
wire [3:0] o_digit;
wire [7:0] o_font;

FND_Select_Decoder dut(
    .i_digitSelect(i_digitSelect),
    .i_en(i_en),
    .o_digit(o_digit)
);

BCDtoFND_Decoder dut1(
    .i_value(i_value),
    .i_en(i_en),
    .o_font(o_font)
);

initial begin
    #00 i_en = 1'b1; i_digitSelect = 2'b00;
    #10 i_en = 1'b1; i_digitSelect = 2'b01;
    #10 i_en = 1'b1; i_digitSelect = 2'b10;
    #10 i_en = 1'b1; i_digitSelect = 2'b11;

    #00 i_en = 1'b0; i_digitSelect = 2'b00;
    #10 i_en = 1'b0; i_digitSelect = 2'b01;
    #10 i_en = 1'b0; i_digitSelect = 2'b10;
    #10 i_en = 1'b0; i_digitSelect = 2'b11;
    
    #00 i_en = 1'b1; i_digitSelect = 2'b00;
    #10 i_en = 1'b1; i_digitSelect = 2'b01;
    #10 i_en = 1'b1; i_digitSelect = 2'b10;
    #10 i_en = 1'b1; i_digitSelect = 2'b11;

    #00 i_en = 1'b0; i_digitSelect = 2'b00;
    #10 i_en = 1'b0; i_digitSelect = 2'b01;
    #10 i_en = 1'b0; i_digitSelect = 2'b10;
    #10 i_en = 1'b0; i_digitSelect = 2'b11;
    #10 $finish;
end
endmodule

