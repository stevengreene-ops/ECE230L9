module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire enA;
    wire enB;
    wire enC;
    wire enD;
    
    wire [7:0] dataA;
    wire [7:0] dataB;
    wire [7:0] dataC;
    wire [7:0] dataD;
    // This should instantiate 4 instances of
    // byte_memory, 
    //and then demultiplex
    // data and store into the one selected by
    // addr
    demux2 E (
        .sel(addr),
        .data(store),
        .A(enA),
        .B(enB),
        .C(enC),
        .D(enD)
        );
        
    demux data_mem(
        .data(data),
        .sel(addr),
        .A(dataA),
        .B(dataB),
        .C(dataC),
        .D(dataD)
        );
        
    wire [7:0] memA;
    byte_memory memoryA(
    .data(dataA),
    .E(enA),
    .memory(memA)
    );
    
    wire [7:0] memB;
    byte_memory memoryB(
    .data(dataB),
    .E(enB),
    .memory(memB)
    );
    
    wire [7:0] memC;
    byte_memory memoryC(
    .data(dataC),
    .E(enC),
    .memory(memC)
    );
    
    wire [7:0] memD;
    byte_memory memoryD(
    .data(dataD),
    .E(enD),
    .memory(memD)
    );
    

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs
    fouronemux inst_fouronemux(
    .Y(memory),
    .A(memA),
    .B(memB),
    .C(memC),
    .D(memD),
    .E(1'b1),
    .sel(addr)
    );
 

endmodule