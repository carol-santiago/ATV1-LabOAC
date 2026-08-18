`timescale 1ns/1ps

module tb_mux4to1;

    // Sinais de teste
    logic [31:0] in0, in1, in2, in3;
    logic [1:0]  sel;
    logic [31:0] out;

    // Instancia o DUT (Device Under Test)
    mux4to1 DUT (
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .sel(sel),
        .out(out)
    );

    // Checar o resultado e imprimir no console
    task check_output(logic [31:0] esperado);
        if (out === esperado)
            $display("[PASS] sel=%0d -> out=%h (esperado=%h) | tempo=%0t",
                       sel, out, esperado, $time);
        else
            $display("[FAIL] sel=%0d -> out=%h (esperado=%h) | tempo=%0t",
                       sel, out, esperado, $time);
    endtask

    initial begin
        $display("===== Início da simulação: mux4to1 =====");

        // Valores fixos para as quatro entradas
        in0 = 32'hAAAAAAAA;
        in1 = 32'hBBBBBBBB;
        in2 = 32'hCCCCCCCC;
        in3 = 32'hDDDDDDDD;

        // Testa sel = 00
        sel = 2'b00; #10;
        check_output(in0);

        // Testa sel = 01
        sel = 2'b01; #10;
        check_output(in1);

        // Testa sel = 10
        sel = 2'b10; #10;
        check_output(in2);

        // Testa sel = 11
        sel = 2'b11; #10;
        check_output(in3);

        $display("===== Fim da simulação: mux4to1 =====");
        $stop; 
    end

endmodule
