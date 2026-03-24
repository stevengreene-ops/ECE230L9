module d_latch(
    input D, E,
    output reg Q,
    output notQ
);

    always @(D, E) begin
        if (E) begin
            Q <= D;
        end
    end
    
    assign notQ = ~Q;  
      
endmodule