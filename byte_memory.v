module byte_memory

    #(
        parameter DATA_WIDTH = 8
     )    
    (
        input E,
        input [DATA_WIDTH - 1:0] data,
        output reg [DATA_WIDTH - 1:0] memory
       );
       
        always @(E, data) begin
            if (E) 
                memory <= data;
    end
    // Memory should always output the value
    // stored, and it should only change
    // when store is high

endmodule