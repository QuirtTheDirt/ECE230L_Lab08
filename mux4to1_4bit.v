


module mux4to1_4bit(

    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y
    );
    
    
    
    assign Y = Enable ? ((Sel == 2'b00) ? A : (Sel == 2'b01) ? B : (Sel == 2'b10) ? C : D ) : 4'b0000;



endmodule
