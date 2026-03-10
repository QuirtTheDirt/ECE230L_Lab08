module top(
    input [15:0] sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC,
    output [15:0] led

    );
    wire [1:0] muxSel;
    wire [1:0] deMuxSel;
    wire [3:0] shared;
    
    assign muxSel = {btnU, btnL};
    assign deMuxSel = {btnR, btnD};
    
    
    
mux4to1_4bit mux_inst(
        .A(sw[3:0]),
        .B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .Sel(muxSel),
        .Enable(btnC),
        .Y(shared)
        );
        
        
        
 demux1to_4bit demux_inst(
    .In(shared),
    .Sel(deMuxSel),
    .Enable(btnC),
    .Y0(led[3:0]),
    .Y1(led[7:4]),
    .Y2(led[11:8]),
    .Y3(led[15:12])
    );
endmodule 