module BancoRegistro #(      		 //   Parametros
         parameter BIT_ADDR = 2,  //   BIT_ADDR Numero de bit para la direccion
         parameter BIT_DATO = 4,  //  BIT_DATO  Numero de bit para el dato
			parameter   RegFILE= "srcReg16.men")
	(
    input [BIT_ADDR-1:0] addrRa,
    input [BIT_ADDR-1:0] addrRb,
    
	 output [BIT_DATO-1:0] datOutRa,
    output [BIT_DATO-1:0] datOutRb,
    
	 input [BIT_ADDR-1:0] addrW,
    input [BIT_DATO-1:0] datW,
    
	 input RegWrite,
    input clk,
    input rst
    );

// La cantidad de registros es igual a: 
localparam NREG = 2 ** BIT_ADDR;
  
//configuracion del banco de registro 
reg [BIT_DATO-1: 0] breg [NREG-1:0];


assign  datOutRa = breg[addrRa];
assign  datOutRb = breg[addrRb];

always @(posedge clk) begin
	if (RegWrite == 1)
     breg[addrW] <= datW;
  end

initial begin
//	$readmemh(RegFILE, breg);
	breg[0] <=10; //precarga de banco
	breg[1] <=2; //precarga de banco
	breg[2] <=5; //precarga de banco
	breg[3] <=1; //precarga de banco

end

endmodule
